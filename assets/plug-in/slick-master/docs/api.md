---
title: Amaze UI slick API 列表
next: demo.html
prev: ../
---

# Slick API
---

## 选项

选项 | 类型 | 默认值 | 描述
--- | ---- | ------- | -----------
accessibility | boolean | `true` | 是否启动 Tab 和箭头导航
autoplay      | boolean | `false` | 是否自动播放
autoplaySpeed | int  | `3000` | 自动播放速度
centerMode    | boolean | `false` | 居中模式
centerPadding | string | `'50px'` | 居中模式时 slide padding (px 或 %)
cssEase       | string |  `'ease'` | CSS3 easing
customPaging  | function | `n/a` | 自定义分页模板
dots          | boolean | `false` | 是否显示分页指示点
dotsClass     | string | `'slick-dots'` | 指示点容器 class
draggable     | boolean | `true` | 在 PC 上启用拖拽
easing        | string |  `'linear'` | animate() 回退 easing
edgeFriction  | integer | `0.15` | 非循环 slider 滚动到边缘时阻尼
fade          | boolean | `false` | 是否使用 fade 效果
arrows        | boolean | `true` | 是否启用上下翻页箭头
appendArrows  | string | `$(element)` | Change where the navigation arrows are attached (Selector, htmlString, Array, Element, jQuery object)
appendDots    | string | `$(element)` | Change where the navigation dots are attached (Selector, htmlString, Array, Element, jQuery object)
mobileFirst   | boolean | `false` | 响应式设置按照移动优先方式计算
prevArrow     | string (html / jQuery selector) _or_ object (DOM node / jQuery object) | ```<button type="button" class="slick-prev">Previous</button>``` | 向上翻页箭头
nextArrow     | string (html/jQuery selector) _or_ object (DOM node/jQuery object) | `<button type="button" class="slick-next">Next</button>` | 向下翻页箭头
infinite      | boolean | `true` | 无限循环模式
initialSlide  | integer | `0` | 初始 slide 编号
lazyLoad      | string | `'ondemand'` | 懒加载方式： `'ondemand'` 或 `'progressive'`
pauseOnHover  | boolean | `true` | hover 时是否暂停自动播放
pauseOnDotsHover | boolean | `false` | 指示点 hover 时是否暂停自动播放
respondTo     | string | `'window'` | responsive 设置响应的宽度的目标，`'window'` 或 `'slider'` 或 `'min'`（两者取较小的）
responsive    | object | `null` | 包含断点和设置的对象。`settings` 设置为 `'unslick'` 可以在该区间禁用 slick。
rows          | int | `1` | 每一屏显示的行数
slide         | string | `''` | Slide element query
slidesPerRow  | int | `1` | `rows` 大于 `1` 时每行上显示的 slide 数量
slidesToShow  | int | `1` | # of slides to show at a time
slidesToScroll  | int     | `1`     | 每次滚动的 slide 数量
speed           | int     | `300`   | transition 速度
swipe           | boolean | `true`  | Enables touch swipe
swipeToSlide    | boolean | `false` | Swipe to slide irrespective of slidesToScroll
touchMove       | boolean | `true`  | Enables slide moving with touch
touchThreshold  | int     | `5`     | To advance slides, the user must swipe a length of (1/touchThreshold) * the width of the slider.
useCSS          | boolean | `true`  | 是否使用 CSS transition
variableWidth   | boolean | `false` | 禁用 slide 宽度自动计算
vertical        | boolean | `false` | 垂直方向滚动
verticalSwiping | boolean | `false` | 将 swipe 方向改为垂直方向
rtl             | boolean | `false` | `rtl` 模式
waitForAnimate  | boolean | `true`  | Ignores requests to advance the slide while animating
zIndex          | number  | `1000`  | slider `z-index`

## 事件


```javascript
// On swipe event
$('.your-element').on('swipe', function(event, slick, direction){
  console.log(direction);
  // left
});

// On edge hit
$('.your-element').on('edge', function(event, slick, direction){
  console.log('edge was hit')
});

// On before slide change
$('.your-element').on('beforeChange', function(event, slick, currentSlide, nextSlide){
  console.log(nextSlide);
});
```

事件          | 参数 | 描述
------------ | -------- | -----------
afterChange  | event, slick, currentSlide | slide 切换以后触发
beforeChange | event, slick, currentSlide, nextSlide | slide 切换以前触发
breakpoint   | event, slick, breakpoint | 到达某个 breakpoint 时触发
destroy      | event, slick | Slick 销毁或 unslick 的时候触发
edge         | event, slick, direction | 非无限循环模式下到达边缘时触发
init         | event, slick | Slick 初始化时触发
reInit       | event, slick | 每次重新初始化时触发
setPosition  | event, slick | 每次重新计算位置时触发
swipe        | event, slick, direction | `swipe`/`drag` 以后触发


## 方法


```javascript
// Add a slide
$('.your-element').slick('slickAdd', "<div></div>");

// Get the current slide
var currentSlide = $('.your-element').slick('slickCurrentSlide');

// Manually refresh positioning of slick
$('.your-element').slick('setPosition');
```


方法        | 参数      | 描述
------     | -------- | -----------
slick      | options : object | 初始化 Slick
unslick    |  | 销毁 Slick
slickNext  |  | 切换到下一个 slide
slickPrev  | | 切换到上一个 slide
slickPause | | 暂停自动播放
slickPlay  | | 开始自动播放
slickGoTo  | index: `int`, dontAnimate: `bool` | 切换到指定索引的 slide，第二参数为 `true` 没有动画效果
slickCurrentSlide |  | 返回当前 slide 的索引
slickAdd   | element : html or DOM object, index: int, addBefore: bool | 添加 slide: 如果设置了 `index` 则插入到指定为位置；如果没有设置 `index` 则插入到末尾，设置了 `addBefore` 则插入到开始位置
slickRemove | index: int, removeBefore: bool | 移除指定编号的 slide。If removeBefore is set true, remove slide preceding index, or the first slide if no index is specified. If removeBefore is set to false, remove the slide following index, or the last slide if no index is set.
slickFilter | filter : selector or function | 使用 jQuery `.filter` 语法过滤 slide
slickUnfilter | | 移除过滤器
slickGetOption | option : string(option name) | 获取选项的值
slickSetOption | option : string(option name), value : depends on option, refresh : boolean | 动态设置 Slick 选项，如果需要刷新则将 `refresh` 设置为 `true`
