---
title: Amaze UI slick 使用演示
next: api.html
prev: ../
---

## Slick 使用演示

### 一屏一个

<style>
  .slick-slide {
  }
  .slick-slide h3 {
    border: 1px solid #dedede;
    background: #efefef;
    margin: 10px;
    font-size: 24px;
    color: #0066bb;
    padding: 50px 0;
    text-align: center;
  }
  .slick-slider {
    margin: 30px 50px;
  }

  .center h3 {
    opacity: 0.6;
    transition: all 300ms ease;
  }

  .center .slick-center h3 {
    -moz-transform: scale(1.08);
    -ms-transform: scale(1.08);
    -o-transform: scale(1.08);
    -webkit-transform: scale(1.08);
    color: #E67E22;
    opacity: 1;
    transform: scale(1.08);
  }
</style>

`````html
<div class="slider single-item">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
`````
```html
<div class="slider single-item">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
</div>
```
```js
$('.single-item').slick({
  dots: true,
  infinite: true,
  speed: 500,
  slidesToShow: 1,
  slidesToScroll: 1
});
```

### 一屏多个

`````html
<div class="slider multiple-items">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
  <div><h3>7</h3></div>
  <div><h3>8</h3></div>
  <div><h3>9</h3></div>
</div>
`````
```html
<div class="slider multiple-items">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
  <div><h3>7</h3></div>
  <div><h3>8</h3></div>
  <div><h3>9</h3></div>
</div>
```
```js
$('.multiple-items').slick({
  dots: true,
  infinite: true,
  speed: 500,
  slidesToShow: 3,
  slidesToScroll: 3
});
```

### 响应式设置

不同的屏幕显示不同的个数，缩放窗口查看效果。

`````html
<div class="slider responsive">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
  <div><h3>7</h3></div>
  <div><h3>8</h3></div>
</div>
`````
```html
<div class="slider responsive">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
  <div><h3>7</h3></div>
  <div><h3>8</h3></div>
</div>
```
```js
$('.responsive').slick({
  dots: true,
  infinite: false,
  speed: 500,
  slidesToShow: 4,
  slidesToScroll: 4,
  responsive: [{
    breakpoint: 1024,
    settings: {
      slidesToShow: 3,
      slidesToScroll: 3,
      infinite: true,
      dots: true
    }
  }, {
    breakpoint: 600,
    settings: {
      slidesToShow: 2,
      slidesToScroll: 2
    }
  }, {
    breakpoint: 480,
    settings: {
      slidesToShow: 1,
      slidesToScroll: 1
    }
  }]
});
```

### 不同宽度的 slide

`````html
<div class="slider variable-width">
  <div style="width: 200px;"><h3>200</h3></div>
  <div style="width: 175px;"><h3>175</h3></div>
  <div style="width: 150px;"><h3>150</h3></div>
  <div style="width: 300px;"><h3>300</h3></div>
  <div style="width: 225px;"><h3>225</h3></div>
  <div style="width: 125px;"><h3>125</h3></div>
</div>
`````
```html
<div class="slider variable-width">
  <div style="width: 200px;"><h3>200</h3></div>
  <div style="width: 175px;"><h3>175</h3></div>
  <div style="width: 150px;"><h3>150</h3></div>
  <div style="width: 300px;"><h3>300</h3></div>
  <div style="width: 225px;"><h3>225</h3></div>
  <div style="width: 125px;"><h3>125</h3></div>
</div>
```
```js
$('.variable-width').slick({
  dots: true,
  infinite: true,
  speed: 500,
  slidesToShow: 1,
  centerMode: true,
  variableWidth: true
});
```

### 不同高度的 slide

`````html
<div class="slider one-time">
  <div><h3>1</h3></div>
  <div><h3>2</h3><p>Look ma!</p></div>
  <div><h3>3</h3><p>Check<br/>this out!</p></div>
  <div><h3>4</h3><p>Woo!</p></div>
</div>
`````
```html
<div class="slider one-time">
  <div><h3>1</h3></div>
  <div><h3>2</h3><p>Look ma!</p></div>
  <div><h3>3</h3><p>Check<br/>this out!</p></div>
  <div><h3>4</h3><p>Woo!</p></div>
</div>
```
```js
$('.one-time').slick({
  dots: true,
  infinite: true,
  speed: 500,
  slidesToShow: 1,
  adaptiveHeight: true
});
```

### `data-slick` 设置参数

通过 `data-slick` 设置参数仍需要 JS 初始化。

`````html
<div class="data" data-slick='{"slidesToShow": 4, "slidesToScroll": 4}'>
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
`````
```html
<div class="data" data-slick='{"slidesToShow": 4, "slidesToScroll": 4}'>
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
```
```js
$('.data').slick();
```

### 居中模式

居中模式会在激活 slide 上添加 `.slick-center`，根据需要定制样式。

`````html
<div class="slider center">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
`````
```html
<div class="slider center">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
```
```js
$('.center').slick({
  centerMode: true,
  infinite: true,
  centerPadding: '60px',
  slidesToShow: 3,
  speed: 500,
  responsive: [{
    breakpoint: 768,
    settings: {
      arrows: false,
      centerMode: true,
      centerPadding: '40px',
      slidesToShow: 3
    }
  }, {
    breakpoint: 480,
    settings: {
      arrows: false,
      centerMode: true,
      centerPadding: '40px',
      slidesToShow: 1
    }
  }]
});
```
```css
.center h3 {
  opacity: 0.6;
  transition: all 300ms ease;
}

.center .slick-center h3 {
  -moz-transform: scale(1.08);
  -ms-transform: scale(1.08);
  -o-transform: scale(1.08);
  -webkit-transform: scale(1.08);
  color: #E67E22;
  opacity: 1;
  transform: scale(1.08);
}
```

### 图片懒加载

<style>
.lazy img {
  width: 200px;
  height: 200px;
  padding: 2px;
  border: 1px solid #dedede;
}
</style>

`````html
<div class="slider lazy">
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/city"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/food"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/nature"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/people"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/animals"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/technics"/></div></div>
</div>
`````
```html
<div class="slider lazy">
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/city"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/food"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/nature"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/people"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/animals"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/800/800/technics"/></div></div>
</div>
```
```js
$('.lazy').slick({
  lazyLoad: 'ondemand',
  slidesToShow: 3,
  slidesToScroll: 1,
  speed: 500
});
```

### 自动播放

`````html
<div class="slider autoplay">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
`````
```html
<div class="slider autoplay">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
```
```js
$('.autoplay').slick({
  dots: true,
  infinite: true,
  speed: 500,
  slidesToShow: 3,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 2000
});
```

### Fade 效果

<style>
  .image img {
    display: block;
    width: 100%;
    height: auto;
  }
</style>

`````html
<div class="slider fade">
  <div><div class="image"><img data-lazy="http://lorempixel.com/1600/600/city"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/1600/600/food"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/1600/600/nature"/></div></div>
</div>
`````
```html
<div class="slider fade">
  <div><div class="image"><img data-lazy="http://lorempixel.com/1600/600/city"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/1600/600/food"/></div></div>
  <div><div class="image"><img data-lazy="http://lorempixel.com/1600/600/nature"/></div></div>
</div>
```

### 动态插入 slide

`````html
<div class="slider add-remove">
  <div><h3>1</h3></div>
</div>
<br />
<div class="am-btn-toolbar am-text-center">
  <a href="javascript:void(0)" class="am-btn am-btn-primary js-add-slide">添加 Slide</a>
  <a href="javascript:void(0)" class="am-btn am-btn-danger js-remove-slide">移除 Slide</a>
</div>
`````
```html
<div class="slider add-remove">
  <div><h3>1</h3></div>
</div>
<br />
<div class="am-btn-toolbar am-text-center">
  <a href="javascript:void(0)" class="am-btn am-btn-primary js-add-slide">添加 Slide</a>
  <a href="javascript:void(0)" class="am-btn am-btn-danger js-remove-slide">移除 Slide</a>
</div>
```
```js
var slideIndex = 1;

$('.js-add-slide').on('click', function() {
  slideIndex++;
  $('.add-remove').slick('slickAdd','<div><h3>' + slideIndex + '</h3></div>');
});

$('.js-remove-slide').on('click', function() {
  $('.add-remove').slick('slickRemove',slideIndex - 1);
  if (slideIndex !== 0){
    slideIndex--;
  }
});
```

### 过滤 Slide

`````html
<div class="slider filtering">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
  <div><h3>7</h3></div>
  <div><h3>8</h3></div>
  <div><h3>9</h3></div>
  <div><h3>10</h3></div>
  <div><h3>11</h3></div>
  <div><h3>12</h3></div>
</div>
<div class="am-btn-toolbar am-text-center">
  <a href="javascript:void(0)" class="am-btn am-btn-primary js-filter">Filter Slides</a>
</div>
`````
```html
<div class="slider filtering">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
  <div><h3>7</h3></div>
  <div><h3>8</h3></div>
  <div><h3>9</h3></div>
  <div><h3>10</h3></div>
  <div><h3>11</h3></div>
  <div><h3>12</h3></div>
</div>
<div class="am-btn-toolbar am-text-center">
  <a href="javascript:void(0)" class="am-btn am-btn-primary js-filter">过滤 Slides</a>
</div>
```
```js
$('.filtering').slick({
  dots: true,
  speed: 500,
  slidesToShow: 4,
  slidesToScroll: 4
});

var filtered = false;

$('.js-filter').on('click', function() {
  if (filtered === false) {
    $('.filtering').slick('slickFilter',':even');
    $(this).text('取消过滤 Slides');
    filtered = true;
  } else {
    $('.filtering').slick('slickUnfilter');
    $(this).text('过滤 Slides');
    filtered = false;
  }
});
```

### 销毁实例

```js
$('.your-slider').slick('unslick');
```

### Slider 同步

`````html
<div class="slider slider-for">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
</div>
<div class="slider slider-nav">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
</div>
`````
```html
<div class="slider slider-for">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
</div>
<div class="slider slider-nav">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
</div>
```
```js
$('.slider-for').slick({
  slidesToShow: 1,
  slidesToScroll: 1,
  speed: 500,
  arrows: false,
  fade: true,
  asNavFor: '.slider-nav'
});

$('.slider-nav').slick({
  slidesToShow: 3,
  slidesToScroll: 1,
  speed: 500,
  asNavFor: '.slider-for',
  dots: true,
  centerMode: true,
  focusOnSelect: true,
  slide: 'div'
});
```

### RTL

`````html
<div dir="rtl" class="slider single-item-rtl">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
`````
```html
<div dir="rtl" class="slider single-item-rtl">
  <div><h3>1</h3></div>
  <div><h3>2</h3></div>
  <div><h3>3</h3></div>
  <div><h3>4</h3></div>
  <div><h3>5</h3></div>
  <div><h3>6</h3></div>
</div>
```
```js
$('.single-item-rtl').slick({
  dots: true,
  infinite: true,
  speed: 500,
  slidesToShow: 1,
  slidesToScroll: 1,
  rtl: true
});
```

<script src="../slick.js"></script>
<script>
  $(document).ready(function() {
    $('.single-item').slick({
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 1,
      slidesToScroll: 1
    });

    $('.multiple-items').slick({
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 3,
      slidesToScroll: 3
    });

    $('.variable-width').slick({
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 1,
      centerMode: true,
      variableWidth: true
    });

    $('.data').slick();

    $('.one-time').slick({
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 1,
      adaptiveHeight: true
    });

    $('.uneven').slick({
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 4,
      slidesToScroll: 4
    });

    $('.responsive').slick({
      dots: true,
      infinite: false,
      speed: 500,
      slidesToShow: 4,
      slidesToScroll: 4,
      responsive: [{
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true
        }
      }, {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      }, {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }]
    });

    $('.center').slick({
      centerMode: true,
      infinite: true,
      centerPadding: '60px',
      slidesToShow: 3,
      speed: 500,
      responsive: [{
        breakpoint: 768,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 3
        }
      }, {
        breakpoint: 480,
        settings: {
          arrows: false,
          centerMode: true,
          centerPadding: '40px',
          slidesToShow: 1
        }
      }]
    });

    $('.lazy').slick({
      lazyLoad: 'ondemand',
      slidesToShow: 3,
      slidesToScroll: 1,
      speed: 500
    });

    $('.autoplay').slick({
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 3,
      slidesToScroll: 1,
      autoplay: true,
      autoplaySpeed: 2000
    });

    $('.fade').slick({
      dots: true,
      infinite: true,
      speed: 500,
      fade: true,
      slide: 'div',
      cssEase: 'linear'
    });

    $('.add-remove').slick({
      dots: true,
      slidesToShow: 3,
      speed: 500,
      slidesToScroll: 3
    });

    var slideIndex = 1;
    $('.js-add-slide').on('click', function() {
      slideIndex++;
      $('.add-remove').slick('slickAdd','<div><h3>' + slideIndex + '</h3></div>');
    });

    $('.js-remove-slide').on('click', function() {
      $('.add-remove').slick('slickRemove',slideIndex - 1);
      if (slideIndex !== 0){
        slideIndex--;
      }
    });

    $('.filtering').slick({
      dots: true,
      speed: 500,
      slidesToShow: 4,
      slidesToScroll: 4
    });
    var filtered = false;
    $('.js-filter').on('click', function() {
      if (filtered === false) {
        $('.filtering').slick('slickFilter',':even');
        $(this).text('取消过滤 Slides');
        filtered = true;
      } else {
        $('.filtering').slick('slickUnfilter');
        $(this).text('过滤 Slides');
        filtered = false;
      }
    });

    $('.slider-for').slick({
      slidesToShow: 1,
      slidesToScroll: 1,
      speed: 500,
      arrows: false,
      fade: true,
      asNavFor: '.slider-nav'
    });

    $('.slider-nav').slick({
      slidesToShow: 3,
      slidesToScroll: 1,
      speed: 500,
      asNavFor: '.slider-for',
      dots: true,
      centerMode: true,
      focusOnSelect: true,
      slide: 'div'
    });

    $('.single-item-rtl').slick({
      dots: true,
      infinite: true,
      speed: 500,
      slidesToShow: 1,
      slidesToScroll: 1,
      rtl: true
    });

    $('.multiple-items-rtl').slick({
      dots: true,
      infinite: true,
      slidesToShow: 3,
      speed: 500,
      slidesToScroll: 3,
      rtl: true
    });
  });
</script>
