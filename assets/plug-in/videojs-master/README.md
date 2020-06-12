# Video.js Amaze UI Skin
---

向下兼容的 HTML5 播放器 [Video.js](http://www.videojs.com/) Amaze UI 皮肤。

- [使用示例](http://amazeui.github.io/videojs/docs/demo.html)

**使用说明：**

1. 获取皮肤：

  - [直接下载](https://github.com/amazeui/videojs/archive/master.zip)

2. 在 Amaze UI 样式之后引入主题：

  Amaze UI Video.js 皮肤依赖 Amaze UI 中的 ICON。

  ```html
  <link rel="stylesheet" href="path/to/amazeui.min.css"/>
  <link rel="stylesheet" href="path/to/amazeui.videojs.css"/>
  ```

3. 引入 `video.js` 并指定 Flash 路径：

  ```html
  <script src="path/to/video.js"></script>
  <script>
    videojs.options.flash.swf = "video.js/video-js.swf";
  </script>
  ```

4. 使用 `<video>` 插入视频：

  在 `<video>` 上添加 `.video-js` 和 `.vjs-amazeui` class。

```html
<video id="example_video_1" class="video-js vjs-amazeui" controls preload="none" width="640" height="264"
       poster="http://video-js.zencoder.com/oceans-clip.png"
       data-setup="{}">
  <source src="http://video-js.zencoder.com/oceans-clip.mp4" type='video/mp4' />
  <source src="http://video-js.zencoder.com/oceans-clip.webm" type='video/webm' />
  <source src="http://video-js.zencoder.com/oceans-clip.ogv" type='video/ogg' />
  <track kind="captions" src="video.js/demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
  <track kind="subtitles" src="video.js/demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
  <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
</video>
```

**更多信息参见 [Video.js 文档](https://github.com/videojs/video.js/blob/stable/docs/index.md)**。
