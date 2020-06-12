---
title: Amaze UI swiper 使用演示
next: api.html
prev: ../
---

## 使用演示

- [Demo 对应 Less](https://github.com/amazeui/swiper/blob/master/docs/demo.less)
- [Demo 对应 JS](https://github.com/amazeui/swiper/blob/master/docs/demo.js)

### 默认设置

`````html
<div class="swiper-container demo" id="demo1">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
</div>
`````
```html
<div class="swiper-container demo" id="demo1">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
  </div>
</div>
```
```js
$('#demo1').swiper();
```

### 分页标记

`````html
<div class="swiper-container demo" id="demo2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````
```html
<div class="swiper-container demo" id="demo2">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
```
```js
$('#demo2').swiper({
  pagination: '#demo2 .swiper-pagination',
  paginationClickable: true
});
```

### 垂直滚动

`````html
<div class="swiper-container demo" id="demo3">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````
```html
<div class="swiper-container demo" id="demo3">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
```
```js
$('#demo3').swiper({
  pagination: '#demo3 .swiper-pagination',
  paginationClickable: true,
  direction: 'vertical'
});
```

### slide 间距

`````html
<div class="swiper-container demo" id="demo4">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````
```html
<div class="swiper-container demo" id="demo4">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
```
```js
$('#demo4').swiper({
  pagination: '#demo4 .swiper-pagination',
  paginationClickable: true,
  spaceBetween: 30
});
```

### slidesPerView - 一屏多个 slide

`````html
<div class="swiper-container demo" id="demo5">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````
```html
<div class="swiper-container demo" id="demo5">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
```
```js
$('#demo5').swiper({
  pagination: '#demo5 .swiper-pagination',
  slidesPerView: 3,
  paginationClickable: true,
  spaceBetween: 30
});
```

### slidesPerView: 'auto'

`````html
<div class="swiper-container demo" id="demo6">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````
```js
$('#demo6').swiper({
  pagination: '#demo6 .swiper-pagination',
  slidesPerView: 'auto',
  paginationClickable: true,
  spaceBetween: 30
});
```

### centeredSlides: 'true'

`````html
<div class="swiper-container demo" id="demo7">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### Centered Slides + Auto Slides Per View

`````html
<div class="swiper-container demo" id="demo8">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### freeMode

`````html
<div class="swiper-container demo" id="demo9">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### slidesPerColumn - 设置每列的行数

`````html
<div class="swiper-container demo" id="demo10">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### 嵌套

`````html
<div class="swiper-container swiper-container-h" style="height: 200px" id="demo11">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Horizontal Slide 1</div>
    <div class="swiper-slide">
      <div class="swiper-container swiper-container-v" style="height: 200px">
        <div class="swiper-wrapper">
          <div class="swiper-slide">Vertical Slide 1</div>
          <div class="swiper-slide">Vertical Slide 2</div>
          <div class="swiper-slide">Vertical Slide 3</div>
          <div class="swiper-slide">Vertical Slide 4</div>
          <div class="swiper-slide">Vertical Slide 5</div>
        </div>
        <div class="swiper-pagination swiper-pagination-v"></div>
      </div>
    </div>
    <div class="swiper-slide">Horizontal Slide 3</div>
    <div class="swiper-slide">Horizontal Slide 4</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination swiper-pagination-h"></div>
</div>
`````

### 拖动

`````html
<div class="swiper-container demo" id="demo12">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### 滚动条

`````html
<div class="swiper-container demo" id="demo13">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Scrollbar -->
  <div class="swiper-scrollbar"></div>
</div>
`````

### 上下翻页按钮

`````html
<div class="swiper-container demo" id="demo14">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
  <!-- Add Arrows -->
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>
`````

### 循环滚动

`````html
<div class="swiper-container demo" id="demo15">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
  <!-- Add Arrows -->
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>
`````

### Fade 效果

`````html
<!-- Swiper -->
<div class="swiper-container demo" id="demo16">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1000/1000/nightlife/1)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1000/1000/nightlife/2)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1000/1000/nightlife/3)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1000/1000/nightlife/4)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1000/1000/nightlife/5)"></div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination swiper-pagination-white"></div>
  <!-- Add Arrows -->
  <div class="swiper-button-next swiper-button-white"></div>
  <div class="swiper-button-prev swiper-button-white"></div>
</div>
`````

### 3D 立方体效果

`````html
<div class="swiper-container" id="demo17">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/1)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/2)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/3)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/4)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/5)"></div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### 3D Coverflow

`````html
<div class="swiper-container" id="demo18">
  <div class="swiper-wrapper">
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/1)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/2)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/3)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/4)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/5)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/6)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/7)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/8)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/9)"></div>
    <div class="swiper-slide" style="background-image:url(http://lorempixel.com/600/600/nature/10)"></div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### 键盘控制

[点击查看 Demo](http://www.idangero.us/swiper/demos/19-keyboard-control.html)

```js
$('#demo19').swiper({
  pagination: '.swiper-pagination',
  slidesPerView: 1,
  paginationClickable: true,
  spaceBetween: 30,
  keyboardControl: true,
  nextButton: '.swiper-button-next',
  prevButton: '.swiper-button-prev'
});
```

### 鼠标滚轮控制

`````html
<div class="swiper-container demo" id="demo20">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### 自动播放

`````html
<div class="swiper-container demo" id="demo21">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### 动态添加 Slide

`````html
<div class="swiper-container demo" id="demo22">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
  <!-- Add Arrows -->
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>
<hr>
<div class="am-btn-toolbar am-text-center">
  <a href="#" class="am-btn am-btn-secondary prepend-slide">前面插入 Slide</a>
  <a href="#" class="am-btn am-btn-warning append-slide">后面插入 Slide</a>
</div>
`````

### 缩略图模式

`````html
<div class="gallery-wrapper">
  <div class="swiper-container gallery-top">
    <div class="swiper-wrapper">
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/1)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/2)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/3)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/4)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/5)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/6)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/7)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/8)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/9)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/10)"></div>
    </div>
    <!-- Add Arrows -->
    <div class="swiper-button-next swiper-button-white"></div>
    <div class="swiper-button-prev swiper-button-white"></div>
  </div>
  <div class="swiper-container gallery-thumbs">
    <div class="swiper-wrapper">
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/1)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/2)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/3)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/4)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/5)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/6)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/7)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/8)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/9)"></div>
      <div class="swiper-slide" style="background-image:url(http://lorempixel.com/1200/1200/nature/10)"></div>
    </div>
  </div>
</div>
`````

### Hash 导航

[点击查看演示]（http://www.idangero.us/swiper/demos/25-hash-navigation.html）

### 视差滚动

`````html

<div class="swiper-container" id="demo25">
  <div class="parallax-bg" style="background-image:url(http://lorempixel.com/900/600/nightlife/2/)" data-swiper-parallax="-23%"></div>
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <div class="title" data-swiper-parallax="-100">Slide 1</div>
      <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
      <div class="text" data-swiper-parallax="-300">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dictum mattis velit, sit amet faucibus felis iaculis nec. Nulla laoreet justo vitae porttitor porttitor. Suspendisse in sem justo. Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod. Aliquam hendrerit lorem at elit facilisis rutrum. Ut at ullamcorper velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut libero. Aenean feugiat non eros quis feugiat.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="title" data-swiper-parallax="-100">Slide 2</div>
      <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
      <div class="text" data-swiper-parallax="-300">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dictum mattis velit, sit amet faucibus felis iaculis nec. Nulla laoreet justo vitae porttitor porttitor. Suspendisse in sem justo. Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod. Aliquam hendrerit lorem at elit facilisis rutrum. Ut at ullamcorper velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut libero. Aenean feugiat non eros quis feugiat.</p>
      </div>
    </div>
    <div class="swiper-slide">
      <div class="title" data-swiper-parallax="-100">Slide 3</div>
      <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
      <div class="text" data-swiper-parallax="-300">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam dictum mattis velit, sit amet faucibus felis iaculis nec. Nulla laoreet justo vitae porttitor porttitor. Suspendisse in sem justo. Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod. Aliquam hendrerit lorem at elit facilisis rutrum. Ut at ullamcorper velit. Nulla ligula nisi, imperdiet ut lacinia nec, tincidunt ut libero. Aenean feugiat non eros quis feugiat.</p>
      </div>
    </div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination swiper-pagination-white"></div>
  <!-- Add Navigation -->
  <div class="swiper-button-prev swiper-button-white"></div>
  <div class="swiper-button-next swiper-button-white"></div>
</div>
`````

### 自定义分页

`````html
<div class="swiper-container demo" id="demo26">
  <div class="swiper-wrapper">
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    <div class="swiper-slide">Slide 4</div>
    <div class="swiper-slide">Slide 5</div>
    <div class="swiper-slide">Slide 6</div>
    <div class="swiper-slide">Slide 7</div>
    <div class="swiper-slide">Slide 8</div>
    <div class="swiper-slide">Slide 9</div>
    <div class="swiper-slide">Slide 10</div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
</div>
`````

### 图片懒加载

`````html
<div class="swiper-container demo" id="demo27">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <!-- Required swiper-lazy class and image source specified in data-src attribute -->
      <img data-src="http://lorempixel.com/1600/1200/nature/1" class="swiper-lazy">
      <!-- Preloader image -->
      <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
    </div>
    <div class="swiper-slide">
      <img data-src="http://lorempixel.com/1600/1200/nature/2" class="swiper-lazy">
      <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
    </div>
    <div class="swiper-slide">
      <img data-src="http://lorempixel.com/1600/1200/nature/3" class="swiper-lazy">
      <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
    </div>
    <div class="swiper-slide">
      <img data-src="http://lorempixel.com/1600/1200/nature/4" class="swiper-lazy">
      <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
    </div>
    <div class="swiper-slide">
      <img data-src="http://lorempixel.com/1600/1200/nature/5" class="swiper-lazy">
      <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
    </div>
    <div class="swiper-slide">
      <img data-src="http://lorempixel.com/1600/1200/nature/6" class="swiper-lazy">
      <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
    </div>

  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination swiper-pagination-white"></div>
  <!-- Navigation -->
  <div class="swiper-button-next swiper-button-white"></div>
  <div class="swiper-button-prev swiper-button-white"></div>
</div>
`````

<script src="../amazeui.swiper.js"></script>
<script src="demo.min.js"></script>
