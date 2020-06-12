---
title: Amaze UI Switch 使用演示
next: options.html
---

## Switch 使用演示
---

### 开关状态

`````html
<p>
  <input id="switch-state" type="checkbox" checked>
</p>

<div class="am-btn-group">
  <button type="button" data-switch-toggle="state" class="am-btn am-btn-default">切换</button>
  <button type="button" data-switch-set="state" data-switch-value="true" class="am-btn am-btn-default">设为 true</button>
  <button type="button" data-switch-set="state" data-switch-value="false" class="am-btn am-btn-default">设为 false</button>
  <button type="button" data-switch-get="state" class="am-btn am-btn-default">获取状态</button>
</div>
`````

```html
<p>
  <input id="switch-state" type="checkbox" checked>
</p>

<div class="am-btn-group">
  <button type="button" data-switch-toggle="state" class="am-btn am-btn-default">切换</button>
  <button type="button" data-switch-set="state" data-switch-value="true" class="am-btn am-btn-default">设为 true</button>
  <button type="button" data-switch-set="state" data-switch-value="false" class="am-btn am-btn-default">设为 false</button>
  <button type="button" data-switch-get="state" class="am-btn am-btn-default">获取状态</button>
</div>
```

```js
$('[data-switch-set]').on('click', function() {
  var type = $(this).data('switch-set');
  return $('#switch-' + type).bootstrapSwitch(type, $(this).data('switch-value'));
});
```

### 按钮大小

`````html
<p>
  <input id="switch-size" type="checkbox" checked data-size="xs">
</p>
<div class="am-btn-group">
  <button type="button" data-switch-set="size" data-switch-value="xs" class="am-btn am-btn-default">XS</button>
  <button type="button" data-switch-set="size" data-switch-value="sm" class="am-btn am-btn-default">Small</button>
  <button type="button" data-switch-set="size" data-switch-value="normal" class="am-btn am-btn-default">Normal</button>
  <button type="button" data-switch-set="size" data-switch-value="lg" class="am-btn am-btn-default">Large</button>
  <button type="button" data-switch-get="size" class="am-btn am-btn-default">获取尺寸</button>
</div>
`````
```html
<p>
  <input id="switch-size" type="checkbox" checked data-size="xs">
</p>
<div class="am-btn-group">
  <button type="button" data-switch-set="size" data-switch-value="xs" class="am-btn am-btn-default">XS</button>
  <button type="button" data-switch-set="size" data-switch-value="sm" class="am-btn am-btn-default">Small</button>
  <button type="button" data-switch-set="size" data-switch-value="normal" class="am-btn am-btn-default">Normal</button>
  <button type="button" data-switch-set="size" data-switch-value="lg" class="am-btn am-btn-default">Large</button>
  <button type="button" data-switch-get="size" class="am-btn am-btn-default">获取尺寸</button>
</div>
```

### 动画设置

`````html
<p>
  <input id="switch-animate" type="checkbox" checked>
</p>
<p>
  <button type="button" data-switch-toggle="animate" class="am-btn am-btn-default">切换</button>
  <button type="button" data-switch-get="animate" class="am-btn am-btn-default">获取</button>
</p>
`````
```html
<p>
  <input id="switch-animate" type="checkbox" checked>
</p>
<p>
  <button type="button" data-switch-toggle="animate" class="am-btn am-btn-default">切换</button>
  <button type="button" data-switch-get="animate" class="am-btn am-btn-default">获取</button>
</p>
```

### 禁用

`````html
<p>
  <input id="switch-disabled" type="checkbox" checked disabled>
</p>
<p>
  <button type="button" data-switch-toggle="disabled" class="am-btn am-btn-default">
    Toggle
  </button>
  <button type="button" data-switch-get="disabled" class="am-btn am-btn-default">Get
  </button>
</p>
`````

```html
<p>
  <input id="switch-disabled" type="checkbox" checked disabled>
</p>
```

### 只读

`````html
<p>
  <input id="switch-readonly" type="checkbox" checked readonly>
</p>
<p>
  <button type="button" data-switch-toggle="readonly" class="am-btn am-btn-default">
    Toggle
  </button>
  <button type="button" data-switch-get="readonly" class="am-btn am-btn-default">Get
  </button>
</p>
`````

```html
<p>
  <input id="switch-readonly" type="checkbox" checked readonly>
</p>
```

### 不确定

`````html
<p>
  <input id="switch-indeterminate" type="checkbox" checked data-indeterminate="true">
</p>
<p>
  <button type="button" data-switch-toggle="indeterminate" class="am-btn am-btn-default">Toggle</button>
  <button type="button" data-switch-get="indeterminate" class="am-btn am-btn-default">Get</button>
</p>
`````

```html
<p>
  <input id="switch-indeterminate" type="checkbox" checked data-indeterminate="true">
</p>
```

### 反向

`````html
<p>
  <input id="switch-inverse" type="checkbox" checked data-inverse="true">
</p>
<p>
  <button type="button" data-switch-toggle="inverse"
          class="am-btn am-btn-default">Toggle
  </button>
  <button type="button" data-switch-get="inverse" class="am-btn am-btn-default">
    Get
  </button>
</p>
`````

```html
<p>
  <input id="switch-inverse" type="checkbox" checked data-inverse="true">
</p>
```

### 颜色选项

#### 【打开】颜色设置

`````html
<p>
  <input id="switch-onColor" type="checkbox" checked data-on-color="secondary">
</p>
<div class="am-btn-group">
  <div class="am-btn-group am-dropdown" data-am-dropdown>
    <button type="button" data-toggle="dropdown"
            class="am-btn am-btn-default am-dropdown-toggle">Set &nbsp;
      <span class="am-icon-caret-down"></span></button>
    <ul role="menu" class="am-dropdown-content">
      <li><a data-switch-set="onColor" data-switch-value="primary">Primary</a>
      </li>
      <li><a data-switch-set="onColor"
             data-switch-value="secondary">Secondary</a>
      </li>
      <li><a data-switch-set="onColor" data-switch-value="success">Success</a>
      </li>
      <li><a data-switch-set="onColor" data-switch-value="warning">Warning</a>
      </li>
      <li><a data-switch-set="onColor" data-switch-value="default">Default</a>
      </li>
    </ul>
  </div>
  <button type="button" data-switch-get="onColor" class="am-btn am-btn-default">
    Get
  </button>
</div>
`````

```html
<p>
  <input id="switch-onColor" type="checkbox" checked data-on-color="secondary">
</p>
```

#### 【关闭】颜色设置

`````html
<p>
  <input id="switch-offColor" type="checkbox" data-off-color="warning">
</p>
<div class="am-btn-group">
  <div class="am-btn-group am-dropdown" data-am-dropdown>
    <button type="button" data-toggle="dropdown"
            class="am-btn am-btn-default am-dropdown-toggle" data-am-dropdown-toggle>Set &nbsp;
      <span class="am-icon-caret-down"></span>
    </button>
    <ul role="menu" class="am-dropdown-content">
      <li><a data-switch-set="offColor" data-switch-value="primary">Primary</a>
      </li>
      <li><a data-switch-set="offColor" data-switch-value="secondary">Secondary</a></li>
      <li><a data-switch-set="offColor" data-switch-value="success">Success</a>
      </li>
      <li><a data-switch-set="offColor" data-switch-value="warning">Warning</a>
      </li>
      <li><a data-switch-set="offColor" data-switch-value="default">Default</a>
      </li>
    </ul>
  </div>
  <button type="button" data-switch-get="offColor"
          class="am-btn am-btn-default">Get
  </button>
</div>
`````

```html
<p>
  <input id="switch-offColor" type="checkbox" data-off-color="warning">
</p>
````

### 文字设置

#### 【打开】文字

`````html
<p>
  <input id="switch-onText" type="checkbox" checked data-on-text="开">
</p>

<hr/>

<p>在下面输入文字试试：</p>

<div class="am-g am-g-collapse">
  <div class="am-u-sm-6">
    <input type="text" data-switch-set-value="onText" value="开"
           class="am-form-field">
  </div>
</div>
`````

```html
<p>
  <input id="switch-onText" type="checkbox" checked data-on-text="开">
</p>
```

#### 【关闭文字】

`````html
<p>
  <input id="switch-offText" type="checkbox" data-off-text="关" data-on-text="开">
</p>
<div class="am-g am-g-collapse">
  <div class="am-u-sm-6">
    <input type="text" data-switch-set-value="offText" value="关"
           class="am-form-field">
  </div>
</div>
`````

```html
<p>
  <input id="switch-offText" type="checkbox" data-off-text="关" data-on-text="开">
</p>
```

### 标签文字

`````html
<p>
  <input id="switch-labelText" type="checkbox" data-label-text="标签">
</p>
<div class="am-g am-g-collapse">
  <div class="am-u-sm-6">
    <input type="text" data-switch-set-value="labelText" class="am-form-field">
  </div>
</div>
`````

```html
<p>
  <input id="switch-labelText" type="checkbox" data-label-text="标签">
</p>
```

### 宽度设置

#### 整体宽度

`````html
<p>
  <input id="switch-handleWidth" type="checkbox" data-handle-width="100">
</p>
<div class="am-g am-g-collapse">
  <div class="am-u-sm-6">
    <input type="number" data-switch-set-value="handleWidth" value="100"
           class="am-form-field">
  </div>
</div>
`````

```html
<p>
  <input id="switch-handleWidth" type="checkbox" data-handle-width="100">
</p>
```

#### 标签宽度

`````html
<p>
  <input id="switch-labelWidth" type="checkbox" data-label-width="100">
</p>
<div class="am-g am-g-collapse">
  <div class="am-u-sm-6">
    <input type="number" data-switch-set-value="labelWidth" value="100"
           class="am-form-field">
  </div>
</div>
`````

```html
<p>
  <input id="switch-labelWidth" type="checkbox" data-label-width="100">
</p>
```

### 初始化/销毁

`````html
<p>
  <input id="switch-create-destroy" type="checkbox" checked data-switch-no-init>
</p>
<div class="am-g am-g-collapse">
  <div class="am-u-sm-6">
    <button type="button" data-switch-create-destroy data-destroy-text="Destroy"
            class="am-btn am-btn-default">初始化
    </button>
  </div>
</div>
`````

### Radio 选项

#### 禁止关闭所有

`````html
<div>
  <input type="radio" name="radio1" checked class="switch-radio1">
  <input type="radio" name="radio1" class="switch-radio1">
  <input type="radio" name="radio1" class="switch-radio1">
</div>
`````

```html
<div>
  <input type="radio" name="radio1" checked class="switch-radio1">
  <input type="radio" name="radio1" class="switch-radio1">
  <input type="radio" name="radio1" class="switch-radio1">
</div>
```

### 允许关闭所有

`````html
<div>
  <input type="radio" name="radio2" checked data-radio-all-off="true"
       class="switch-radio2">
  <input type="radio" name="radio2" data-radio-all-off="true"
         class="switch-radio2">
  <input type="radio" name="radio2" data-radio-all-off="true"
         class="switch-radio2">
</div>
`````

```html
<div>
  <input type="radio" name="radio2" checked data-radio-all-off="true"
       class="switch-radio2">
  <input type="radio" name="radio2" data-radio-all-off="true"
         class="switch-radio2">
  <input type="radio" name="radio2" data-radio-all-off="true"
         class="switch-radio2">
</div>
```

<script src="../amazeui.switch.js"></script>
<script>
(function() {
  $(function() {
    var $createDestroy = $('#switch-create-destroy');

    $('input[type="checkbox"], input[type="radio"]').not('[data-switch-no-init]').bootstrapSwitch();

    $('[data-switch-get]').on('click', function() {
      var type = $(this).data('switch-get');
      return alert($('#switch-' + type).bootstrapSwitch(type));
    });

    $('[data-switch-set]').on('click', function() {
      var type = $(this).data('switch-set');
      return $('#switch-' + type).bootstrapSwitch(type, $(this).data('switch-value'));
    });

    $('[data-switch-toggle]').on('click', function() {
      var type = $(this).data('switch-toggle');
      return $('#switch-' + type).bootstrapSwitch('toggle' + type.charAt(0).toUpperCase() + type.slice(1));
    });

    $('[data-switch-set-value]').on('input', function(event) {
      event.preventDefault();
      var type = $(this).data('switch-set-value');
      var value = $.trim($(this).val());
      if ($(this).data('value') === value) {
        return;
      }
      return $('#switch-' + type).bootstrapSwitch(type, value);
    });

    $('[data-switch-create-destroy]').on('click', function() {
      var isSwitch = $createDestroy.data('bootstrap-switch');
      $createDestroy.bootstrapSwitch((isSwitch ? 'destroy' : null));
      return $(this).text((isSwitch ? '初始化' : '销毁'));
    });
  });
}).call(this);
</script>
