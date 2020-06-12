'use strict';

var gulp = require('gulp');
var $ = require('gulp-load-plugins')();
var docUtil = require('amazeui-doc-util');
var runSequence = require('run-sequence');
var tasks = require('amazeui-gulp-tasks');

var config = {
  pkg: require('./package.json'),

  // release task
  ghPages: {
    src: 'dist/**/*'
  },

  // remote branch
  git: {
    branch: 'master'
  },

  browserSync: {
    notify: false,
    server: 'dist',
    logPrefix: 'AMP'
  },

  // watch files and reload browserSync
  bsWatches: 'dist/**/*',

  less: {
    src: ['./less/amazeui.swiper.less', './docs/demo.less'],
    autoPrefixer: docUtil.autoprefixerBrowsers,
    dist: function(file) {
      return (file.relative.indexOf('demo') > -1) ? './dist/docs' : './dist';
    },
    banner: true
    // watches: './less/**/*.less'
  },

  // docs:md
  md: {
    src: ['README.md', 'docs/*.md'],
    data: {
      pluginTitle: 'Amaze UI Swiper',
      pluginDesc: 'Amaze UI styled swiper',
      buttons: 'amazeui/swiper',
      head: '<link rel="stylesheet" href="../amazeui.swiper.css"/>' +
      '<link rel="stylesheet" href="demo.css"/>'
    },
    rename: function(file) {
      file.basename = file.basename.toLowerCase();
      if (file.basename === 'readme') {
        file.basename = 'index';
      }
      file.extname = '.html';
    },
    dist: function(file) {
      if (file.relative === 'index.html') {
        return 'dist'
      }
      return 'dist/docs';
    }
  },

  // browserify
  browserify: {
    bundleOptions: {
      entries: './lib/amazeui.swiper.js',
      cache: {},
      packageCache: {}
    },
    filename: 'amazeui.swiper.js',
    transforms: [['browserify-shim', {global: true}]],
    plugins: [],
    dist: 'dist',
    banner: true
  },

  // clean path
  clean: 'dist',

  uglify: {
    src: 'docs/demo.js',
    dist: 'dist/docs'
  }
};

// init tasks
tasks(gulp, config);

gulp.task('build', function(cb) {
  runSequence('clean', ['uglify', 'browserify', 'less', 'markdown'], cb);
});

gulp.task('dev', ['build', 'server']);
