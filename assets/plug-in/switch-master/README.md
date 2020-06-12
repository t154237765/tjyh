# Amaze UI Switch
---

将 `checkbox` 和 `radio` 转换为按钮开关。

项目源自 [Bootstrap Switch](https://github.com/nostalgiaz/bootstrap-switch)，只是将样式调整为 Amaze UI 风格，没有修改 JS 源码。

- [使用示例](http://amazeui.github.io/switch/docs/demo.html)
- [参数说明](http://amazeui.github.io/switch/docs/options.html)

**使用说明：**

1. 获取 Amaze UI Switch：

  - [直接下载](https://github.com/amazeui/switch/archive/master.zip)
  - 使用 NPM: `npm install amazeui-switch`

2. 在 Amaze UI 样式之后引入 Switch 样式：

  Amaze UI Switch 依赖 Amaze UI 样式。

  ```html
  <link rel="stylesheet" href="path/to/amazeui.min.css"/>
  <link rel="stylesheet" href="path/to/amazeui.switch.css"/>
  ```

3. 在 jQuery 之后引入 Switch 插件：

  ```html
  <script src="path/to/jquery.min.js"></script>
  <script src="path/to/amazeui.switch.min.js"></script>
  ```

4. 初始化 Switch：

  ```js
  $(function() {
    $('[name="my-checkbox"]').bootstrapSwitch();
  });
  ```

  可以监听到 jQuery Ready 事件的 DOM 也可以使用 `data-am-switch` 钩子自动初始化：

  ```html
  <input type="checkbox" data-am-switch />
  ```
