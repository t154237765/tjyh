# Amaze UI Swiper
---

[![NPM version](https://img.shields.io/npm/v/amazeui-swiper.svg?style=flat-square)](https://www.npmjs.com/package/amazeui-swiper)
[![Dependency Status](https://img.shields.io/david/amazeui/swiper.svg?style=flat-square)](https://david-dm.org/amazeui/swiper)
[![devDependency Status](https://img.shields.io/david/dev/amazeui/swiper.svg?style=flat-square)](https://david-dm.org/amazeui/swiper#info=devDependencies)

[Swiper 插件](https://github.com/nolimits4web/Swiper) jQuery 封装。

- [使用示例](http://amazeui.github.io/swiper/docs/demo.html)
- [API 文档](http://amazeui.github.io/swiper/docs/api.html)

**使用说明：**

1. 获取 Amaze UI Swiper

  - [直接下载](https://github.com/amazeui/swiper/archive/master.zip)
  - 使用 NPM: `npm install amazeui-swiper`

2. 引入 Swiper 样式（位于 `dist` 目录下的 CSS）：

  ```html
  <link rel="stylesheet" href="path/to/amazeui.swiper.min.css"/>
  ```

3. 在 jQuer 后面引入 Swiper 插件（位于 `dist` 目录下）：

  ```html
  <script src="path/to/jquery.min.js"></script>
  <script src="path/to/amazeui.swiper.min.js"></script>
  ```

4. 添加 HTML 结构

  根据情况可以删除一些不必要的标记。

  ```html
  <!-- Slider main container -->
  <div class="swiper-container">
      <!-- Additional required wrapper -->
      <div class="swiper-wrapper">
          <!-- Slides -->
          <div class="swiper-slide">Slide 1</div>
          <div class="swiper-slide">Slide 2</div>
          <div class="swiper-slide">Slide 3</div>
          ...
      </div>
      <!-- If we need pagination -->
      <div class="swiper-pagination"></div>

      <!-- If we need navigation buttons -->
      <div class="swiper-button-prev"></div>
      <div class="swiper-button-next"></div>

      <!-- If we need scrollbar -->
      <div class="swiper-scrollbar"></div>
  </div>
  ```

5. 根据需要设置 Swiper 尺寸

  ```css
  .swiper-container {
      width: 600px;
      height: 300px;
  }
  ```

6. 初始化 swiper:

  ```js
  $(function() {
      $('#mySwiper').swiper();
  });
  ```

## 常见问题

### 点击特定 Swiper 导航的时候所有 Swiper 一起跟着动？

将分页和上下导航的选择符改为不同的 class 或 id 即可。

不知道作者为何这样设计，绑定事件的时候[没有设定选择符的上下文](https://github.com/nolimits4web/Swiper/blob/7de949b42547ee28b430df31185b6617cd0a4c4a/src/js/core.js#L948-L959)，如果选择符相同，就会选择到所有的 swiper。

```js
$('#demo27').swiper({
  nextButton: '.swiper-button-next',
  prevButton: '.swiper-button-prev',
  pagination: '.swiper-pagination',
});
```
