---
title: Video.js Amaze UI Skin 演示
---

## 使用演示
---

`````html
<video id="example_video_1" class="video-js vjs-amazeui" controls preload="fdsajkfds" width="640" height="364"
       poster="http://video-js.zencoder.com/oceans-clip.png"
       data-setup="{}">
  <source src="http://video-js.zencoder.com/oceans-clip.mp4" type='video/mp4' />
  <source src="http://video-js.zencoder.com/oceans-clip.webm" type='video/webm' />
  <source src="http://video-js.zencoder.com/oceans-clip.ogv" type='video/ogg' />
  <track kind="captions" src="video.js/demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
  <track kind="subtitles" src="video.js/demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
  <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
</video>

<script src="video.js/video.js"></script>
<script>
  videojs.options.flash.swf = "video.js/video-js.swf";
</script>
`````
```html
<video id="example_video_1" class="video-js vjs-amazeui" controls preload="none" width="640" height="364"
       poster="http://video-js.zencoder.com/oceans-clip.png"
       data-setup="{}">
  <source src="http://video-js.zencoder.com/oceans-clip.mp4" type='video/mp4' />
  <source src="http://video-js.zencoder.com/oceans-clip.webm" type='video/webm' />
  <source src="http://video-js.zencoder.com/oceans-clip.ogv" type='video/ogg' />
  <track kind="captions" src="video.js/demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
  <track kind="subtitles" src="video.js/demo.captions.vtt" srclang="en" label="English"></track><!-- Tracks need an ending tag thanks to IE9 -->
  <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
</video>

<script src="video.js/video.js"></script>
<script>
  videojs.options.flash.swf = "video.js/video-js.swf";
</script>
```
