---
title: Amaze UI Swiper API 列表
next: demo.html
prev: ../
---

# Amaze UI Swiper API
---

## 基本使用

### HTML 结构

```html
<!-- Slider 主容器，必需 -->
<div class="swiper-container">

  <!-- slides 容器，必需 -->
  <div class="swiper-wrapper">
    <!-- Slides -->
    <div class="swiper-slide">Slide 1</div>
    <div class="swiper-slide">Slide 2</div>
    <div class="swiper-slide">Slide 3</div>
    ...
  </div>

  <!-- 分页容器，可选 -->
  <div class="swiper-pagination"></div>

  <!-- 上下翻页箭头，可选 -->
  <div class="swiper-button-prev"></div>
  <div class="swiper-button-next"></div>

  <!-- 滚动条容器，可选 -->
  <div class="swiper-scrollbar"></div>
</div>
```

### 初始化

```js
// jQuery 方式初始化
$('#container').swiper([options]);


// 或者构造函数方式初始化
var mySwiper = new Swiper(swiperContainer[, options])

// `swiperContainer` - 必需，HTMLElement 或者 CSS 选择符字符串
// options - object
```

## 选项列表

没有翻译的为不太常用的选项。

<table class="am-table am-table-bordered am-table-striped">
  <thead>
  <tr>
    <th>选项</th>
    <th>类型</th>
    <th>默认值</th>
    <th>描述</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>initialSlide</td>
    <td>number</td>
    <td>0</td>
    <td>初始 slide 索引值</td>
  </tr>
  <tr>
    <td>direction</td>
    <td>string</td>
    <td>'horizontal'</td>
    <td>滚动方式，<code>horizontal</code> 或者 <code>vertical</code></td>
  </tr>
  <tr>
    <td>speed</td>
    <td>number</td>
    <td>300</td>
    <td>滚动速度 <code>ms</code></td>
  </tr>
  <tr>
    <td>setWrapperSize</td>
    <td>boolean</td>
    <td>false</td>
    <td>Enabled this option and plugin will set width/height on swiper wrapper equal to total size of all slides. Mostly should be used as compatibility fallback option for browser that don't support flexbox layout well</td>
  </tr>
  <tr>
    <td>virtualTranslate</td>
    <td>boolean</td>
    <td>false</td>
    <td>Enabled this option and swiper will be operated as usual except it will not move, real translate values on wrapper will not be set. Useful when you may need to create custom slide transition</td>
  </tr>
  <tr>
    <td>width</td>
    <td>number</td>
    <td></td>
    <td>设置 Swiper 宽度 <code>px</code>，一般用于初始化隐藏的 swiper。</td>
  </tr>
  <tr>
    <td>height</td>
    <td>number</td>
    <td></td>
    <td>设置 Swiper 高度 <code>px</code>
    </td>
  </tr>
  <tr>
    <th colspan="4" class="am-warning">Autoplay - 自动播放相关</th>
  </tr>
  <tr>
    <td>autoplay</td>
    <td>number</td>
    <td>-</td>
    <td>自动播放间隔时间 <code>ms</code>，设置此项才会启用自动播放功能。</td>
  </tr>
  <tr>
    <td>autoplayDisableOnInteraction</td>
    <td>boolean</td>
    <td>true</td>
    <td>用户交互时停止自动播放</td>
  </tr>
  <tr>
    <th colspan="4" class="am-warning">Progress</th>
  </tr>
  <tr>
    <td>watchSlidesProgress</td>
    <td>boolean</td>
    <td>false</td>
    <td>Enable this feature to calculate each slides progress</td>
  </tr>
  <tr>
    <td>watchSlidesVisibility</td>
    <td>boolean</td>
    <td>false</td>
    <td><code>watchSlidesProgress</code> should be enabled. Enable this option and slides that are in viewport will have additional visible class</td>
  </tr>
  <tr>
    <th colspan="4" class="am-warning">Freemode</th>
  </tr>
  <tr>
    <td>freeMode</td>
    <td>boolean</td>
    <td>false</td>
    <td>If <b>true</b> then slides will not have fixed positions</td>
  </tr>
  <tr>
    <td>freeModeMomentum</td>
    <td>boolean</td>
    <td>true</td>
    <td>If <b>true</b>, then slide will keep moving for a while after you release it</td>
  </tr>
  <tr>
    <td>freeModeMomentumRatio</td>
    <td>number</td>
    <td>1</td>
    <td>Higher value produces larger momentum distance after you release slider</td>
  </tr>
  <tr>
    <td>freeModeMomentumBounce</td>
    <td>boolean</td>
    <td>true</td>
    <td>Set to <b>false</b> if you want to disable momentum bounce in free mode</td>
  </tr>
  <tr>
    <td>freeModeMomentumBounceRatio</td>
    <td>number</td>
    <td>1</td>
    <td>Higher value produces larger momentum bounce effect</td>
  </tr>
  <tr>
    <td>freeModeSticky</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> to enable snap to slides positions in free mode</td>
  </tr>
  <tr>
    <th colspan="4" class="am-warning">Effects - 动画效果</th>
  </tr>
  <tr>
    <td>effect</td>
    <td>string</td>
    <td>'slide'</td>
    <td>'slide' | 'fade' | 'cube' | 'coverflow'</td>
  </tr>
  <tr>
    <td>fade</td>
    <td>object</td>
    <td>
<code class=" hljs css"><span class="hljs-tag">fade</span>: <span class="hljs-rules">{
  <span class="hljs-rule"><span class="hljs-attribute">crossFade</span>:<span class="hljs-value"> false
</span></span></span>}</code>
    </td>
    <td>Fade 效果参数</td>
  </tr>
  <tr>
    <td>cube</td>
    <td>object</td>
    <td>
<code class=" hljs css"><span class="hljs-tag">cube</span>: <span class="hljs-rules">{
  <span class="hljs-rule"><span class="hljs-attribute">slideShadows</span>:<span class="hljs-value"> true,
  shadow: true,
  shadowOffset: <span class="hljs-number">20</span>,
  shadowScale: <span class="hljs-number">0.94</span>
</span></span></span>}</code>
    </td>
    <td>Cube 动画参数，建议禁用阴影以提高性能。</td>
  </tr>
  <tr>
    <td>coverflow</td>
    <td>object</td>
    <td>
<code class=" hljs css"><span class="hljs-tag">coverflow</span>: <span class="hljs-rules">{
  <span class="hljs-rule"><span class="hljs-attribute">rotate</span>:<span class="hljs-value"> <span class="hljs-number">50</span>,
  stretch: <span class="hljs-number">0</span>,
  depth: <span class="hljs-number">100</span>,
  modifier: <span class="hljs-number">1</span>,
  slideShadows : true
</span></span></span>}</code>
    </td>
    <td>Coverflow 动画参数，建议禁用阴影以提高性能。</td>
  </tr>
  <tr>
    <th colspan="4" class="am-warning">Parallax - 视差滚动</th>
  </tr>
  <tr>
    <td>parallax</td>
    <td>boolean</td>
    <td>false</td>
    <td>开启此项以使用视差滚动效果</td>
  </tr>
  <tr>
    <th colspan="4" class="am-warning">Slides grid</th>
  </tr>
  <tr>
    <td>spaceBetween</td>
    <td>number</td>
    <td>0</td>
    <td>slide 间距</td>
  </tr>
  <tr>
    <td>slidesPerView</td>
    <td>number or 'auto'</td>
    <td>1</td>
    <td>
      <p>每一屏显示的 slide 数量</p>
      <p class="important-note">If you use it with "auto" value and along with <b>loop: true</b> then you need to specify <b>loopedSlides</b> parameter with amount of slides to loop (duplicate)</p>
      <p class="important-note"><b>slidesPerView: 'auto'</b> is currently not compatible with multirow mode, when <b>slidesPerColumn</b> &gt; 1 </p>
    </td>
  </tr>
  <tr>
    <td>slidesPerColumn</td>
    <td>number</td>
    <td>1</td>
    <td>每列显示的 slide 数量</td>
  </tr>
  <tr>
    <td>slidesPerColumnFill</td>
    <td>string</td>
    <td>'column'</td>
    <td>Could be 'column' or 'row'. Defines how slides should fill rows, by column or by row</td>
  </tr>
  <tr>
    <td>slidesPerGroup</td>
    <td>number</td>
    <td>1</td>
    <td>Set numbers of slides to define and enable group sliding. Useful to use with slidesPerView &gt; 1</td>
  </tr>
  <tr>
    <td>centeredSlides</td>
    <td>boolean</td>
    <td>false</td>
    <td>If true, then active slide will be centered, not always on the left side.</td>
  </tr>
  <tr>
    <th colspan="4" class="am-warning">Grab Cursor</th>
  </tr>
  <tr>
    <td>grabCursor</td>
    <td>boolean</td>
    <td>false</td>
    <td>This option may a little improve desktop usability. If <b>true</b>, user will see the "grab" cursor when hover on Swiper</td>
  </tr>
  <tr>
    <th colspan="4" class="am-warning">Touches - 触控</th>
  </tr>
  <tr>
    <td>touchRatio</td>
    <td>number</td>
    <td>1</td>
    <td>Touch ration</td>
  </tr>
  <tr>
    <td>touchAngle</td>
    <td>number</td>
    <td>45</td>
    <td>Allowable angle (in degrees) to trigger touch move</td>
  </tr>
  <tr>
    <td>simulateTouch</td>
    <td>boolean</td>
    <td>true</td>
    <td>If true, Swiper will accept mouse events like touch events (click and drag to change slides)</td>
  </tr>
  <tr>
    <td>shortSwipes</td>
    <td>boolean</td>
    <td>true</td>
    <td>Set to <b>false</b> if you want to disable short swipes</td>
  </tr>
  <tr>
    <td>longSwipes</td>
    <td>boolean</td>
    <td>true</td>
    <td>Set to <b>false</b> if you want to disable long swipes</td>
  </tr>
  <tr>
    <td>longSwipesRatio</td>
    <td>number</td>
    <td>0.5</td>
    <td>Ratio to trigger swipe to next/previous slide during long swipes</td>
  </tr>
  <tr>
    <td>longSwipesMs</td>
    <td>number</td>
    <td>300</td>
    <td>Minimal duration (in ms) to trigger swipe to next/previous slide during long swipes</td>
  </tr>
  <tr>
    <td>followFinger</td>
    <td>boolean</td>
    <td>true</td>
    <td>If disabled, then slider will be animated only when you release it, it will not move while you hold your finger on it</td>
  </tr>
  <tr>
    <td>onlyExternal</td>
    <td>boolean</td>
    <td>false</td>
    <td>If true, then the only way to switch the slide is use of external API functions like slidePrev or slideNext</td>
  </tr>
  <tr>
    <td>threshold</td>
    <td>number</td>
    <td>0</td>
    <td>Threshold value in px. If "touch distance" will be lower than this value then swiper will not move</td>
  </tr>
  <tr>
    <td>touchMoveStopPropagation</td>
    <td>boolean</td>
    <td>true</td>
    <td>If enabled, then propagation of "touchmove" will be stopped</td>
  </tr>
  <tr>
    <th colspan="4">Touch Resistance</th>
  </tr>
  <tr>
    <td>resistance</td>
    <td>boolean</td>
    <td>true</td>
    <td>Set to <b>false</b> if you want to disable resistant bounds</td>
  </tr>
  <tr>
    <td>resistanceRatio</td>
    <td>number</td>
    <td>0.85</td>
    <td>This option allows you to control resistance ratio</td>
  </tr>
  <tr>
    <th colspan="4">Clicks</th>
  </tr>
  <tr>
    <td>preventClicks</td>
    <td>boolean</td>
    <td>true</td>
    <td>Set to <b>true</b> to prevent accidental unwanted clicks on links during swiping</td>
  </tr>
  <tr>
    <td>preventClicksPropagation</td>
    <td>boolean</td>
    <td>true</td>
    <td>Set to <b>true</b> to stop clicks event propagation on links during swiping</td>
  </tr>
  <tr>
    <td>slideToClickedSlide</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> and click on any slide will produce transition to this slide</td>
  </tr>
  <tr>
    <th colspan="4">Swiping / No swiping</th>
  </tr>
  <tr>
    <td>allowSwipeToPrev</td>
    <td>boolean</td>
    <td>true</td>
    <td>Set to <b>false</b> to disable swiping to previous slide direction (to left or top)</td>
  </tr>
  <tr>
    <td>allowSwipeToNext</td>
    <td>boolean</td>
    <td>true</td>
    <td>Set to <b>false</b> to disable swiping to next slide direction (to right or bottom)</td>
  </tr>
  <tr>
    <td>noSwiping</td>
    <td>boolean</td>
    <td>true</td>
    <td>Set to <b>false</b> to disable swiping to next slide direction (to right or bottom)</td>
  </tr>
  <tr>
    <td>noSwipingClass</td>
    <td>string</td>
    <td>'swiper-no-swiping'</td>
    <td>If <b>true</b>, then you can add <code>noSwipingClass</code> class to swiper's slide to prevent/disable swiping on this element</td>
  </tr>
  <tr>
    <td>swipeHandler</td>
    <td>string / HTMLElement</td>
    <td>null</td>
    <td>String with CSS selector or HTML element of the container with pagination that will work as only available handler for swiping</td>
  </tr>
  <tr>
    <th colspan="4">Pagination</th>
  </tr>
  <tr>
    <td>pagination</td>
    <td>string / HTMLElement</td>
    <td>null</td>
    <td>String with CSS selector or HTML element of the container with pagination</td>
  </tr>
  <tr>
    <td>paginationHide</td>
    <td>boolean</td>
    <td>true</td>
    <td>Toggle (hide/true) pagination container visibility when click on Slider's container</td>
  </tr>
  <tr>
    <td>paginationClickable</td>
    <td>boolean</td>
    <td>false</td>
    <td>If <b>true</b> then clicking on pagination button will cause transition to appropriate slide</td>
  </tr>
  <tr>
    <td>paginationBulletRender(index, className)</td>
    <td>function</td>
    <td>null</td>
    <td>This parameter allows totally customize pagination bullets, you need to pass here a function that accepts <b>index</b> number of pagination bullet and required element class name (<b>className</b>).
      <p>For example, with this code, we can add slide number into pagination bullet:</p>
<pre><code class="js hljs "><span class="hljs-keyword">var</span> swiper = <span class="hljs-keyword">new</span> Swiper(<span class="hljs-string">'.swiper-container'</span>, {
  <span class="hljs-comment">//...</span>
  paginationBulletRender: <span class="hljs-function"><span class="hljs-keyword">function</span> <span class="hljs-params">(index, className)</span> {</span>
  <span class="hljs-keyword">return</span> <span class="hljs-string">'&lt;span class="'</span> + className + <span class="hljs-string">'"&gt;'</span> + (index + <span class="hljs-number">1</span>) + <span class="hljs-string">'&lt;/span&gt;'</span>;
  }
  });              </code></pre>
    </td>
  </tr>
  <tr>
    <th colspan="4">Navigation Buttons</th>
  </tr>
  <tr>
    <td>nextButton</td>
    <td>string / HTMLElement</td>
    <td>null</td>
    <td>String with CSS selector or HTML element of the element that will work like "next" button after click on it</td>
  </tr>
  <tr>
    <td>prevButton</td>
    <td>string / HTMLElement</td>
    <td>null</td>
    <td>String with CSS selector or HTML element of the element that will work like "prev" button after click on it</td>
  </tr>
  <tr>
    <th colspan="4">Accessibility</th>
  </tr>
  <tr>
    <td>a11y</td>
    <td>boolean</td>
    <td>false</td>
    <td>Option to enable keyboard accessibility to provide foucsable navigation buttons and basic ARIA for screen readers</td>
  </tr>
  <tr>
    <td>prevSlideMessage</td>
    <td>string</td>
    <td>'Previous slide'</td>
    <td>Message for screen readers for previous button</td>
  </tr>
  <tr>
    <td>nextSlideMessage</td>
    <td>string</td>
    <td>'Next slide'</td>
    <td>Message for screen readers for next button</td>
  </tr>
  <tr>
    <td>firstSlideMessage</td>
    <td>string</td>
    <td>'This is the first slide'</td>
    <td>Message for screen readers for previous button when swiper is on first slide</td>
  </tr>
  <tr>
    <td>lastSlideMessage</td>
    <td>string</td>
    <td>'This is the last slide'</td>
    <td>Message for screen readers for previous button when swiper is on last slide</td>
  </tr>
  <tr>
    <th colspan="4">Scollbar</th>
  </tr>
  <tr>
    <td>scrollbar</td>
    <td>string / HTMLElement</td>
    <td>null</td>
    <td>String with CSS selector or HTML element of the container with scrollbar.</td>
  </tr>
  <tr>
    <td>scrollbarHide</td>
    <td>boolean</td>
    <td>true</td>
    <td>Hide scrollbar automatically after user interaction</td>
  </tr>
  <tr>
    <th colspan="4">Keyboard / Mousewheel</th>
  </tr>
  <tr>
    <td>keyboardControl</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> to enable navigation through slides using keyboard right and left (for horizontal mode), top and borrom (for vertical mode) keyboard arrows</td>
  </tr>
  <tr>
    <td>mousewheelControl</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> to enable navigation through slides using mouse wheel</td>
  </tr>
  <tr>
    <td>mousewheelForceToAxis</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> to force mousewheel swipes to axis. So in horizontal mode mousewheel will work only with horizontal mousewheel scrolling, and only with vertical scrolling in vertical mode.</td>
  </tr>
  <tr>
    <td>mousewheelReleaseOnEdges</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> and swiper will release mousewheel event and allow page scrolling when swiper is on edge positions (in the beginning or in the end)</td>
  </tr>
  <tr>
    <td>mousewheelInvert</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> to invert sliding direction</td>
  </tr>
  <tr>
    <th colspan="4">Hash Navigation</th>
  </tr>
  <tr>
    <td>hashnav</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> to enable hash url navigation to for slides</td>
  </tr>
  <tr>
    <th colspan="4">Images</th>
  </tr>
  <tr>
    <td>preloadImages</td>
    <td>boolean</td>
    <td>true</td>
    <td>When enabled Swiper will force to load all images</td>
  </tr>
  <tr>
    <td>updateOnImagesReady</td>
    <td>boolean</td>
    <td>true</td>
    <td>When enabled Swiper will be reinitialized after all inner images (&lt;img&gt; tags) are loaded. Required <code>preloadImages: true</code></td>
  </tr>
  <tr>
    <td>lazyLoading</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to "true" to enable images lazy loading. Note that <code>preloadImages</code> should be disabled</td>
  </tr>
  <tr>
    <td>lazyLoadingInPrevNext</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to "true" to enable lazy loading for the closest slides images (for previous and next slide images)</td>
  </tr>
  <tr>
    <td>lazyLoadingOnTransitionStart</td>
    <td>boolean</td>
    <td>false</td>
    <td>By default, Swiper will load lazy images after transition to this slide, so you may enable this parameter if you need it to start loading of new image in the beginning of transition</td>
  </tr>
  <tr>
    <th colspan="4">Loop</th>
  </tr>
  <tr>
    <td>loop</td>
    <td>boolean</td>
    <td>false</td>
    <td>
      <p>Set to <b>true</b> to enable continuous loop mode</p>
      <p class="important-note">If you use it along with <code>slidesPerView: 'auto'</code> then you need to specify <code>loopedSlides</code> parameter with amount of slides to loop (duplicate) </p>
    </td>
  </tr>
  <tr>
    <td>loopAdditionalSlides</td>
    <td>number</td>
    <td>0</td>
    <td>Addition number of slides that will be cloned after creating of loop</td>
  </tr>
  <tr>
    <td>loopedSlides</td>
    <td>number</td>
    <td>null</td>
    <td>If you use <code>slidesPerView:'auto'</code> with loop mode you should tell to Swiper how many slides it should loop (duplicate) using this parameter</td>
  </tr>
  <tr>
    <th colspan="4">Controller</th>
  </tr>
  <tr>
    <td>control</td>
    <td>[Swiper Instance]</td>
    <td>undefined</td>
    <td>Pass here another Swiper instance or array with Swiper instances that should be controlled by this Swiper</td>
  </tr>
  <tr>
    <td>controlInverse</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> and controlling will be in inverse direction</td>
  </tr>
  <tr>
    <th colspan="4">Observer</th>
  </tr>
  <tr>
    <td>observer</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> to enable Mutation Observer on Swiper and its elements. In this case Swiper will be updated (reinitialized) each time if you change its style (like hide/show) or modify its child elements (like adding/removing slides)</td>
  </tr>
  <tr>
    <td>observeParents</td>
    <td>boolean</td>
    <td>false</td>
    <td>Set to <b>true</b> if you also need to watch Mutations for Swiper parent elements</td>
  </tr>
  <tr>
    <th colspan="4">Callbacks</th>
  </tr>
  <tr>
    <td>runCallbacksOnInit</td>
    <td>boolean</td>
    <td>true</td>
    <td>Run on[Transition/SlideChange][Start/End] callbacks on swiper initialization. Such callbacks will be fired on initialization in case of your initialSlide is not 0, or you use loop mode</td>
  </tr>
  <tr>
    <td>onInit(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed right after Swiper initialization</td>
  </tr>
  <tr>
    <td>onSlideChangeStart(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed in the beginning of animation to other slide (next or previous). Receives swiper instance as an argument.</td>
  </tr>
  <tr>
    <td>onSlideChangeEnd(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed after animation to other slide (next or previous). Receives slider instance as an argument.</td>
  </tr>
  <tr>
    <td>onTransitionStart(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed in the beginning of transition. Receives swiper instance as an argument.</td>
  </tr>
  <tr>
    <td>onTransitionEnd(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed after transition. Receives slider instance as an argument.</td>
  </tr>
  <tr>
    <td>onTouchStart(swiper, event)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when user touch Swiper. Receives swiper instance and 'touchstart' event as an arguments.</td>
  </tr>
  <tr>
    <td>onTouchMove(swiper, event)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when user touch and move finger over Swiper. Receives swiper instance and 'touchmove' event as an arguments.</td>
  </tr>
  <tr>
    <td>onTouchMoveOpposite(swiper, event)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when user touch and move finger over Swiper in direction opposite to <code>direction</code> parameter. Receives swiper instance and 'touchmove' event as an arguments.</td>
  </tr>
  <tr>
    <td>onSliderMove(swiper, event)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when user touch and move finger over Swiper and move it. Receives swiper instance and 'touchmove' event as an arguments.</td>
  </tr>
  <tr>
    <td>onTouchEnd(swiper, event)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when user release Swiper. Receives swiper instance and 'touchend' event as an arguments.</td>
  </tr>
  <tr>
    <td>onClick(swiper, event)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when user click/tap on Swiper after 300ms delay. Receives swiper instance and 'touchend' event as an arguments.</td>
  </tr>
  <tr>
    <td>onTap(swiper, event)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when user click/tap on Swiper. Receives swiper instance and 'touchend' event as an arguments.</td>
  </tr>
  <tr>
    <td>onDoubleTap(swiper, event)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when user double tap on Swiper's container. Receives swiper instance and 'touchend' event as an arguments</td>
  </tr>
  <tr>
    <td>onImagesReady(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed right after all inner images are loaded. <code>updateOnImagesReady</code> should be also enabled</td>
  </tr>
  <tr>
    <td>onProgress(swiper, progress)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when Swiper progress is changed, as second arguments it receives <b>progress</b> that is always from 0 to 1</td>
  </tr>
  <tr>
    <td>onReachBeginning(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when Swiper reach its beginning (initial position)</td>
  </tr>
  <tr>
    <td>onReachEnd(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when Swiper reach last slide</td>
  </tr>
  <tr>
    <td>onDestroy(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when you destroy Swiper</td>
  </tr>
  <tr>
    <td>onSetTranslate(swiper, translate)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when swiper's wrapper change its position. Receives swiper instance and current translate value as an arguments</td>
  </tr>
  <tr>
    <td>onSetTransition(swiper, transition)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed everytime when swiper starts animation. Receives swiper instance and current transition duration (in ms) as an arguments</td>
  </tr>
  <tr>
    <td>onAutoplayStart(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when when autoplay started</td>
  </tr>
  <tr>
    <td>onAutoplayStop(swiper)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when when autoplay stopped</td>
  </tr>
  <tr>
    <td>onLazyImageLoad(swiper, slide, image)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed in the beginning of lazy loading of image</td>
  </tr>
  <tr>
    <td>onLazyImageReady(swiper, slide, image)</td>
    <td>function</td>
    <td></td>
    <td>Callback function, will be executed when lazy loading image will be loaded</td>
  </tr>
  <tr>
    <th colspan="4">Namespace</th>
  </tr>
  <tr>
    <td>slideClass</td>
    <td>string</td>
    <td>'swiper-slide'</td>
    <td>CSS class name of slide</td>
  </tr>
  <tr>
    <td>slideActiveClass</td>
    <td>string</td>
    <td>'swiper-slide-active'</td>
    <td>CSS class name of currently active slide</td>
  </tr>
  <tr>
    <td>slideVisibleClass</td>
    <td>string</td>
    <td>'swiper-slide-visible'</td>
    <td>CSS class name of currently visible slide</td>
  </tr>
  <tr>
    <td>slideDuplicateClass</td>
    <td>string</td>
    <td>'swiper-slide-duplicate'</td>
    <td>CSS class name of slide duplicated by loop mode</td>
  </tr>
  <tr>
    <td>slideNextClass</td>
    <td>string</td>
    <td>'swiper-slide-next'</td>
    <td>CSS class name of slide which is right after currently active slide</td>
  </tr>
  <tr>
    <td>slidePrevClass</td>
    <td>string</td>
    <td>'swiper-slide-prev'</td>
    <td>CSS class name of slide which is right before currently active slide</td>
  </tr>
  <tr>
    <td>wrapperClass</td>
    <td>string</td>
    <td>'swiper-wrapper'</td>
    <td>CSS class name of slides' wrapper</td>
  </tr>
  <tr>
    <td>bulletClass</td>
    <td>string</td>
    <td>'swiper-pagination-bullet'</td>
    <td>CSS class name of single pagination bullet</td>
  </tr>
  <tr>
    <td>bulletActiveClass</td>
    <td>string</td>
    <td>'swiper-pagination-bullet-active'</td>
    <td>CSS class name of currently active pagination bullet</td>
  </tr>
  <tr>
    <td>paginationHiddenClass</td>
    <td>string</td>
    <td>'swiper-pagination-hidden'</td>
    <td>CSS class name of pagination when it becomes inactive</td>
  </tr>
  <tr>
    <td>buttonDisabledClass</td>
    <td>string</td>
    <td>'swiper-button-disabled'</td>
    <td>CSS class name of next/prev button when it becomes disabled</td>
  </tr>
  </tbody>
</table>

## 方法和属性

所有方法和属性都可以通过 `$('#mySwiper').swiper('xxx')` 的方式调用（读取），如

```js
// 获取 swiper 的所有参数
$('#demo1').swiper('params');
```

<table class="am-table am-table-bordered am-table-striped">
  <tbody>
  <tr>
    <th colspan="2" class="am-primary">属性</th>
  </tr>
  <tr>
    <td>.params</td>
    <td>Swiper 初始化参数</td>
  </tr>
  <tr>
    <td>.container</td>
    <td>主容器，Dom7/jQuery 元素对象，可以通过 <code>.container[0]</code> 获取原生 HTMLElement 对象</td>
  </tr>
  <tr>
    <td>.wrapper</td>
    <td>Slides 容器，Dom7/jQuery 元素对象，可以通过 <code>.wrapper[0]</code> 获取原生 HTMLElement 对象</td>
  </tr>
  <tr>
    <td>.slides</td>
    <td>所有幻灯片 Dom7/jQuery 元素对象数组</td>
  </tr>
  <tr>
    <td>.bullets</td>
    <td>所有分页页码 Dom7/jQuery 元素对象数组</td>
  </tr>
  <tr>
    <td>.width</td>
    <td>容器宽度</td>
  </tr>
  <tr>
    <td>.height</td>
    <td>容器高度</td>
  </tr>
  <tr>
    <td>.translate</td>
    <td>当前变换（translate）值</td>
  </tr>
  <tr>
    <td>.progress</td>
    <td>滚动进度（当前幻灯片索引/幻灯片总数）</td>
  </tr>
  <tr>
    <td>.activeIndex</td>
    <td>
      当前幻灯片索引（loop 模式此值将不准确）
    </td>
  </tr>
  <tr>
    <td>.previousIndex</td>
    <td>上一张幻灯片索引</td>
  </tr>
  <tr>
    <td>.isBeginning</td>
    <td>是否位于初始位置</td>
  </tr>
  <tr>
    <td>.isEnd</td>
    <td>是否位于结束位置</td>
  </tr>
  <tr>
    <td>.autoplaying</td>
    <td>是否在自动播放</td>
  </tr>
  <tr>
    <td>.animating</td>
    <td>是否正在执行动画</td>
  </tr>
  <tr>
    <td>.touches</td>
    <td>包含以下属性的触控事件对象：
      <ul>
        <li>.touches.startX</li>
        <li>.touches.startY</li>
        <li>.touches.currentX</li>
        <li>.touches.currentY</li>
        <li>.touches.diff</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>.clickedIndex</td>
    <td>最后点击的幻灯片索引</td>
  </tr>
  <tr>
    <td>.clickedSlide</td>
    <td>最后点击的幻灯片 (<i>HTMLElement</i>)</td>
  </tr>
  <tr>
    <th colspan="2" class="am-primary">Methods</th>
  </tr>
  <tr>
    <td>.slideNext(<span>runCallbacks</span>, <span>speed</span>);</td>
    <td>切换到一下个 slide<br>
      <ul class="method-parameters">
        <li><span class="parameter">runCallbacks</span> - <span class="parameter-type">boolean</span> - Set it to <code>false</code> (by default it is <code>true</code>) and transition will not produce onSlideChange callback functions. <em>Optional</em></li>
        <li><span class="parameter">speed</span> - <span class="parameter-type">number</span> - transition duration (in ms). <em>Optional</em></li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>.slidePrev(<span>runCallbacks</span>, <span>speed</span>);</td>
    <td>切换到上一个 slide<br>
      <ul class="method-parameters">
        <li><span class="parameter">runCallbacks</span> - <span class="parameter-type">boolean</span> - Set it to <code>false</code> (by default it is <code>true</code>) and transition will not produce onSlideChange callback functions. <em>Optional</em></li>
        <li><span class="parameter">speed</span> - <span class="parameter-type">number</span> - transition duration (in ms). <em>Optional</em></li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>.slideTo(<span>index</span>, <span>speed</span>, <span>runCallbacks</span>);</td>
    <td>切换到索引编号为 `index` 的 slide<br>
      <ul class="method-parameters">
        <li><span class="parameter">index</span> - <span class="parameter-type">number</span> - index number of slide</li>
        <li><span class="parameter">speed</span> - <span class="parameter-type">number</span> - transition duration (in ms). <em>Optional</em></li>
        <li><span class="parameter">runCallbacks</span> - <span class="parameter-type">boolean</span> - Set it to <code>false</code> (by default it is <code>true</code>) and transition will not produce onSlideChange callback functions. <em>Optional</em></li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>.update(updateTranslate);</td>
    <td>
      <p>This method includes updateContainerSize, updateSlidesSize, updateProgress, updatePagination and updateClasses methods </p>
      <p>You should call it after you add/remove slides manually, or after you hide/show it, or do any custom DOM modifications with Swiper</p>
      <ul class="method-parameters">
        <li><span class="parameter">updateTranslate</span> - <span class="parameter-type">boolean</span> - Set it to <code>true</code> (by default it is <code>false</code>) to hard set/reset/update Swiper wrapper translate. It is useful if you use not default effect or scrollbar. <em>Optional</em></li>
      </ul>
      <p>This method also includes subcall of the following methods which you can use separately:</p>
      <ul>
        <li>.updateContainerSize() - recalculate size of swiper container</li>
        <li>.updateSlidesSize() - recalculate number of slides and their offsets. Useful after you add/remove slides with JavaScript</li>
        <li>.updateProgress() - recalculate swiper progress</li>
        <li>.updatePagination() - updates pagination layout and re-render bullets</li>
        <li>.updateClasses() - update active/prev/next classes on slides and bullets</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>.onResize();</td>
    <td>Swiper executes this method when you resize browser. It is almost the same as <code>.update()</code> but a bit softer, without hard setting translate</td>
  </tr>
  <tr>
    <td>.detachEvents();</td>
    <td>移除所有事件处理函数</td>
  </tr>
  <tr>
    <td>.attachEvents();</td>
    <td>绑定事件处理函数</td>
  </tr>
  <tr>
    <td>.startAutoplay();</td>
    <td>开始自动播放</td>
  </tr>
  <tr>
    <td>.stopAutoplay();</td>
    <td>停止自动播放</td>
  </tr>
  <tr>
    <td>.destroy(deleteInstance, cleanupStyles);</td>
    <td>销毁 Slide 实例：<br>
      <ul class="method-parameters">
        <li><span class="parameter">deleteInstance</span> - <span class="parameter-type">boolean</span> - Set it to <code>false</code> (by default it is <code>true</code>) to not to delete Swiper instance</li>
        <li><span class="parameter">cleanupStyles</span> - <span class="parameter-type">boolean</span> - Set it to <code>true</code> (by default it is <code>false</code>) and all custom styles will be removed from slides, wrapper and container. Useful if you need to destroy Swiper and to init again with new options or in different direction</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>.appendSlide(slides);</td>
    <td>插入 <code>slides</code>，可以是 HTMLElement 或者 HTML 字符串 或者数组：
<code class=" hljs xml">.appendSlide('<span class="hljs-tag">&lt;<span class="hljs-title">div</span> <span class="hljs-attribute">class</span>=<span class="hljs-value">"swiper-slide"</span>&gt;</span>Slide 10"<span class="hljs-tag">&lt;/<span class="hljs-title">div</span>&gt;</span>')
  .appendSlide([
  '<span class="hljs-tag">&lt;<span class="hljs-title">div</span> <span class="hljs-attribute">class</span>=<span class="hljs-value">"swiper-slide"</span>&gt;</span>Slide 10"<span class="hljs-tag">&lt;/<span class="hljs-title">div</span>&gt;</span>',
  '<span class="hljs-tag">&lt;<span class="hljs-title">div</span> <span class="hljs-attribute">class</span>=<span class="hljs-value">"swiper-slide"</span>&gt;</span>Slide 11"<span class="hljs-tag">&lt;/<span class="hljs-title">div</span>&gt;</span>'
  ]);</code>
    </td>
  </tr>
  <tr>
    <td>.prependSlide(slides);</td>
    <td>前置插入，参数同上。
    </td>
  </tr>
  <tr>
    <td>.removeSlide(slideIndex);</td>
    <td>移除指定索引的幻灯片，slideIndex 所以可以是一个数字或者包含多个索引的数组。
<code class="js hljs ">.removeSlide(<span class="hljs-number">0</span>); <span class="hljs-comment">//remove first slide</span><br />
  .removeSlide([<span class="hljs-number">0</span>, <span class="hljs-number">1</span>]); <span class="hljs-comment">//remove first and second slides</span></code>
    </td>
  </tr>
  <tr>
    <td>.removeAllSlides();</td>
    <td>移除所有幻灯片</td>
  </tr>
  <tr>
    <td>.setWrapperTranslate(translate);</td>
    <td>Set custom css3 transform's translate value for swiper wrapper</td>
  </tr>
  <tr>
    <td>.getWrapperTranslate();</td>
    <td>Get current value of swiper wrapper css3 transform translate</td>
  </tr>
  <tr>
    <td>.on(callback, handler)</td>
    <td>Add callback/event handler</td>
  </tr>
  <tr>
    <td>.once(callback, handler)</td>
    <td>Add event/callback that will be executed only once</td>
  </tr>
  <tr>
    <td>.off(callback)</td>
    <td>Remove all handlers for specified callback/event </td>
  </tr>
  <tr>
    <td>.lockSwipeToNext()<br>.unlockSwipeToNext()</td>
    <td>Disable (lock) / enable (unlock) ability to slide to the next slides</td>
  </tr>
  <tr>
    <td>.lockSwipeToPrev()<br>.unlockSwipeToPrev()</td>
    <td>Disable (lock) / enable (unlock) ability to slide to the previous slides</td>
  </tr>
  <tr>
    <td>.lockSwipes()<br>.unlockSwipes()</td>
    <td>Disable (lock) / enable (unlock) ability to change slides</td>
  </tr>
  <tr>
    <td>.disableMousewheelControl();</td>
    <td>Disable mousewheel control</td>
  </tr>
  <tr>
    <td>.enableMousewheelControl();</td>
    <td>Enable mousewheel control</td>
  </tr>
  <tr>
    <td>.disableKeyboardControl();</td>
    <td>Disable keyboard control</td>
  </tr>
  <tr>
    <td>.enableKeyboardControl();</td>
    <td>Enable keyboard control</td>
  </tr>
  </tbody>
</table>

## 进阶使用

### Hash 切换

- 幻灯片上设置 `data-hash` 属性
- 初始化时添加选项 `hashnav: true`

```html
<div class="swiper-container" id="hashSwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide" data-hash="slide1">Slide 1</div>
    <div class="swiper-slide" data-hash="slide2">Slide 2</div>
    <div class="swiper-slide" data-hash="slide3">Slide 3</div>
    <div class="swiper-slide" data-hash="slide4">Slide 4</div>
    <div class="swiper-slide" data-hash="slide5">Slide 5</div>
    ...
  </div>
</div>
```
```js
$('#hashSwiper').swiper({
  // enable hash navigation
  hashnav: true
});
```

### 视差滚动

Since version 3.0.3 Swiper supports parallax transition effects for swiper/slides nested elements. There are two types of parallax elements supported:

- Direct child elements of `swiper-container`. Parallax effect for such elements will depend on total slider progress. Useful for parallax backgrounds
- Slides child elements. Parallax effect for such elements will depend on slide progress

To enable parallax effects you need to init Swiper with passed `parallax:true` parameter and add `data-swiper-parallax` attribute on required elements

```html
<div class="swiper-container">
  <!-- Parallax background element -->
  <div
    class="parallax-bg"
    style="background-image:url(http://lorempixel.com/900/600/nightlife/2/)"
    data-swiper-parallax="-23%">
  </div>
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <!-- Each slide has parallax title -->
      <div class="title" data-swiper-parallax="-100">Slide 1</div>
      <!-- Parallax subtitle -->
      <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
      <!-- And parallax text with custom transition duration -->
      <div class="text" data-swiper-parallax="-300" data-swiper-parallax-duration="600">
        <p>Lorem ipsum dolor sit amet, ...</p>
      </div>
    </div>
    ...
  </div>
</div>
```

All elements with specified `data-swiper-parallax` attribute will have parallax transition. This attribute may accept:

- `number` - value in px (as for title, subtitle in example above) to move element depending on progress. In this case such element will be moved on ± this value in px depending on slide position (next or previous)
- `percentage` - (as for "parallax-bg") to move element depending on progress and on its size. In this case such element will be moved on ± this percentage of its size (width in horizontal direction, and height in vertical direction) depending on slide position (next or previous). So if element has 400px width and you specified data-swiper-parallax="50%" then it will be moved on ± 200px
It is possible to overwrite parallax direction by using `data-swiper-parallax-x` and `data-swiper-parallax-y` attributes with same rules

You can also pass custom transition duration for parallax elements by adding `data-swiper-parallax-duration` attribute.

### 懒加载

首先需要添加 Loader 容器，并在图片上添加 `.swiper-lazy`。
- 在图片上添加 `.swiper-lazy`
- 图片 `src` 属性替换为 `data-src`
- 每个幻灯片中添加加载图标容器

  ```html
  <div class="swiper-lazy-preloader"></div>
  ```

  如果需要白色图标则使用：

  ```html
  <div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div>
  ````


```html
<div class="swiper-container">
  <div class="swiper-wrapper">
    <div class="swiper-slide">
      <img data-src="path/to/picture-1.jpg" class="swiper-lazy">
      <div class="swiper-lazy-preloader"></div>
    </div>
    <div class="swiper-slide">
      <img data-src="path/to/picture-2.jpg" class="swiper-lazy">
      <div class="swiper-lazy-preloader"></div>
    </div>
    <div class="swiper-slide">
      <img data-src="path/to/picture-3.jpg" class="swiper-lazy">
      <div class="swiper-lazy-preloader"></div>
    </div>
  </div>
</div>
```

```js
$('#mySwiper').swiper({
  // Disable preloading of all images
  preloadImages: false,

  // Enable lazy loading
  lazyLoading: true
});
```

### 事件 API

```js
// Init Swiper
var mySwiper = new Swiper('.swiper-container');

// Later add callback
mySwiper.on('slideChangeStart', function () {
  console.log('slide change start');
});

// Add one more handler for this event
mySwiper.on('slideChangeStart', function () {
  console.log('slide change start 2');
});

// Add handler that will be executed only once
mySwiper.once('sliderMove', function () {
  console.log('slider moved');
});

// Somewhen later, remove all slideChangeStart handlers
mySwiper.off('slideChangeStart');
```

也可以使用下面的语法：

```js
$('#mySwiper').swiper('on', 'slideChangeStart', function() {
  console.log('slide change start');
});
```



