---
title: Switch 参数、方法、事件
prev: demo.html
---

# Switch 参数、方法、事件
---

# 参数列表
---

<table class="am-table am-table-bordered am-table-striped">
  <thead>
  <tr>
    <th>名称</th>
    <th>属性</th>
    <th>类型</th>
    <th>描述</th>
    <th>可选值</th>
    <th>默认值</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>state</td>
    <td>checked</td>
    <td>Boolean</td>
    <td>开关状态</td>
    <td>true, false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>size</td>
    <td>data-size</td>
    <td>String</td>
    <td>开关尺寸</td>
    <td>null, 'xs', 'sm', 'normal', 'lg'</td>
    <td>null</td>
  </tr>
  <tr>
    <td>animate</td>
    <td>data-animate</td>
    <td>Boolean</td>
    <td>Animate the switch</td>
    <td>true, false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>disabled</td>
    <td>disabled</td>
    <td>Boolean</td>
    <td>Disable state</td>
    <td>true, false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>readonly</td>
    <td>readonly</td>
    <td>Boolean</td>
    <td>Readonly state</td>
    <td>true, false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>indeterminate</td>
    <td>data-indeterminate</td>
    <td>Boolean</td>
    <td>Indeterminate state</td>
    <td>true, false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>inverse</td>
    <td>data-inverse</td>
    <td>Boolean</td>
    <td>Inverse switch direction</td>
    <td>true, false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>radioAllOff</td>
    <td>data-radio-all-off</td>
    <td>Boolean</td>
    <td>Allow this radio button to be unchecked by the user</td>
    <td>true, false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>onColor</td>
    <td>data-on-color</td>
    <td>String</td>
    <td>Color of the left side of the switch</td>
    <td>'primary', 'secondary', 'success', 'warning', 'danger', 'default'</td>
    <td>'primary'</td>
  </tr>
  <tr>
    <td>offColor</td>
    <td>data-off-color</td>
    <td>String</td>
    <td>Color of the right side of the switch</td>
    <td>'primary', 'secondary', 'success', 'warning', 'danger', 'default'</td>
    <td>'default'</td>
  </tr>
  <tr>
    <td>onText</td>
    <td>data-on-text</td>
    <td>String</td>
    <td>Text of the left side of the switch</td>
    <td>String</td>
    <td>'ON'</td>
  </tr>
  <tr>
    <td>offText</td>
    <td>data-off-text</td>
    <td>String</td>
    <td>Text of the right side of the switch</td>
    <td>String</td>
    <td>'OFF'</td>
  </tr>
  <tr>
    <td>labelText</td>
    <td>data-label-text</td>
    <td>String</td>
    <td>Text of the center handle of the switch</td>
    <td>String</td>
    <td>'&amp;nbsp;'</td>
  </tr>
  <tr>
    <td>handleWidth</td>
    <td>data-handle-width</td>
    <td>String | Number</td>
    <td>Width of the left and right sides in pixels</td>
    <td>'auto' or Number</td>
    <td>'auto'</td>
  </tr>
  <tr>
    <td>labelWidth</td>
    <td>data-label-width</td>
    <td>String | Number</td>
    <td>Width of the center handle in pixels</td>
    <td>'auto' or Number</td>
    <td>'auto'</td>
  </tr>
  <tr>
    <td>baseClass</td>
    <td>data-base-class</td>
    <td>String</td>
    <td>Global class prefix</td>
    <td>String</td>
    <td>'bootstrap-switch'</td>
  </tr>
  <tr>
    <td>wrapperClass</td>
    <td>data-wrapper-class</td>
    <td>String | Array</td>
    <td>Container element class(es)</td>
    <td>String | Array</td>
    <td>'wrapper'</td>
  </tr>
  <tr>
    <td>onInit</td>
    <td></td>
    <td>Function</td>
    <td>Callback function to execute on initialization</td>
    <td>Function</td>
    <td>
      <pre><code class="javascript">function(event, state) {}</code></pre>
    </td>
  </tr>
  <tr>
    <td>onSwitchChange</td>
    <td></td>
    <td>Function</td>
    <td>Callback function to execute on switch state change</td>
    <td>Function</td>
    <td>
      <pre><code class="javascript">function(event, state) {}</code></pre>
    </td>
  </tr>
  </tbody>
</table>

## 全局默认选项重写

默认的参数为：

```js
{
  state: true,
  size: null,
  animate: true,
  disabled: false,
  readonly: false,
  indeterminate: false,
  inverse: false,
  radioAllOff: false,
  onColor: "primary",
  offColor: "default",
  onText: "ON",
  offText: "OFF",
  labelText: "&nbsp;",
  handleWidth: "auto",
  labelWidth: "auto",
  baseClass: "am-switch",
  wrapperClass: "wrapper",
  onInit: function() {
  },
  onSwitchChange: function() {
  }
}
```

可以通过以下方式重写：

```js
$.fn.bootstrapSwitch.defaults.size = 'lg';
$.fn.bootstrapSwitch.defaults.onColor = 'success';
```

## 方法

Bootstrap Switch 中每个参数都可以作为方法使用：

```js
// 将开关设置为打开状态
$('input[name="my-checkbox"]').bootstrapSwitch('state', true);
```

如果省略第二个参数，则返回当前值。

### 其他方法

<table class="am-table am-table-bordered am-table-striped">
  <thead>
  <tr>
    <th>名称</th>
    <th>描述</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>toggleState</td>
    <td>切换开关状态</td>
  </tr>
  <tr>
    <td>toggleAnimate</td>
    <td>切换动画选项</td>
  </tr>
  <tr>
    <td>toggleDisabled</td>
    <td>切换禁用状态</td>
  </tr>
  <tr>
    <td>toggleReadonly</td>
    <td>切换只读状态</td>
  </tr>
  <tr>
    <td>toggleIndeterminate</td>
    <td>切换不确定状态</td>
  </tr>
  <tr>
    <td>toggleInverse</td>
    <td>切换反向状态</td>
  </tr>
  <tr>
    <td>destroy</td>
    <td>销毁实例</td>
  </tr>
  </tbody>
</table>

### 特别说明

- `state` 方法接受第三个参数，用于设置是否跳过执行 `switchChange` 事件（设为 `true` 时不执行）。
- `toggleState` 接受第二个参数，为 `true` 时跳过执行 `switchChange`， 默认为 `false`。
- `wrapperClass` 接受第二个参数。


## 事件

自定义事件添加了 `.bootstrapSwitch` 命名空间，监听时须加上。

`````html
<p>
  <input id="my-checkbox" type="checkbox" data-am-switch checked/>
</p>
`````

```js
$('#my-checkbox').on('switchChange.bootstrapSwitch', function(event, state) {
  console.log(this); // DOM element
  console.log(event); // jQuery event
  console.log(state); // true | false
});
```

<table class="am-table am-table-bordered am-table-striped">
  <thead>
  <tr>
    <th>名称</th>
    <th>描述</th>
    <th>参数</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>init</td>
    <td>初始化时触发，<code>this</code> 指向 DOM 元素</td>
    <td>event (<a href="https://api.jquery.com/category/events/event-object/" target="_blank">jQuery Event object</a>)</td>
  </tr>
  <tr>
    <td>switchChange</td>
    <td>开关状态改变时触发，<code>this</code> 指向 DOM 元素</td>
    <td>
      event (<a href="https://api.jquery.com/category/events/event-object/" target="_blank">jQuery Event object</a>),
      state (true | false)
    </td>
  </tr>
  </tbody>
</table>

<script src="../amazeui.switch.min.js"></script>
<script>
  $('#my-checkbox').on('switchChange.bootstrapSwitch', function(event, state) {
    console.log(this); // DOM element
    console.log(event); // jQuery event
    console.log(state); // true | false
  });
</script>

