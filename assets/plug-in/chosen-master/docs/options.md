---
title: Chosen 选项列表
prev: demo.html
---

# Chosen 选项列表
---

## 通过参数传递的选项

以下参数在实例化的时候通过参数设置。

```js
$('.my_select_box').chosen({
  disable_search_threshold: 10,
  no_results_text: 'Oops, nothing found!',
  width: '95%'
});
```

<table class="am-table am-table-bordered am-table-striped">
  <tr>
    <th>选项</th>
    <th>默认值</th>
    <th>描述</th>
  </tr>
  <tr>
    <td>allow_single_deselect</td>
    <td>false</td>
    <td>设置为 <code class="language-javascript">true</code> 时非必选的单选框会显示清除选中项图标</td>
  </tr>
  <tr>
    <td>disable_search</td>
    <td>false</td>
    <td>设置为 <code class="language-javascript">true</code> 隐藏单选框的搜索框</td>
  </tr>
  <tr>
    <td>disable_search_threshold</td>
    <td>0</td>
    <td>少于 <code>n</code> 项时隐藏搜索框</td>
  </tr>
  <tr>
    <td>enable_split_word_search</td>
    <td>true</td>
    <td>是否开启分词搜索，默认开启</td>
  </tr>
  <tr>
    <td>inherit_select_classes</td>
    <td>false</td>
    <td>是否继承 select 元素的 class，如果设为 <code class="language-javascript">true</code>，Chosen 将把 select 的 class 添加到容器上</td>
  </tr>
  <tr>
    <td>max_selected_options</td>
    <td>Infinity</td>
    <td>最多选择项数，达到最大限制时会触发 <code class="language-javascript">chosen:maxselected</code> 事件</td>
  </tr>
  <tr>
    <td>no_results_text</td>
    <td>"No results match"</td>
    <td>没有搜索到匹配项时显示的文字</td>
  </tr>
  <tr>
    <td>placeholder_text_multiple</td>
    <td>"Select Some Options"</td>
    <td>多选框没有选中项时显示的占位文字</td>
  </tr>
  <tr>
    <td>placeholder_text_single</td>
    <td>"Select an Option"</td>
    <td>单选框没有选中项时显示的占位文字</td>
  </tr>
  <tr>
    <td>search_contains</td>
    <td>false</td>
    <td>搜素包含项，默认从第一个字符开始匹配</td>
  </tr>
  <tr>
    <td>single_backstroke_delete</td>
    <td>true</td>
    <td>多选框中使用退格键删除选中项目，如果设为 <code class="language-javascript">false</code>，第一次按 delete/backspace 会高亮最好一个选中项目，再按会删除该项</td>
  </tr>
  <tr>
    <td>width</td>
    <td>Original select width.</td>
    <td>Chosen 生成的选择框宽度，默认为和原 select 宽度保持一致</td>
  </tr>
  <tr>
    <td>display_disabled_options</td>
    <td>true</td>
    <td>是否显示禁止选择的项目</td>
  </tr>
  <tr>
    <td>display_selected_options</td>
    <td>true</td>
    <td>
      多选框是否在下拉列表中显示已经选中的项
    </td>
  </tr>
</table>


## 属性

可以通过在 `<select>` 上设置属性传递给 Chosen。

```html
<select class="my_select_box" data-placeholder="Select Your Options">
  <option value="1">Option 1</option>
  <option value="2" selected>Option 2</option>
  <option value="3" disabled>Option 3</option>
</select>
```

<table class="am-table am-table-bordered am-table-striped">
  <tr>
    <th>属性</th>
    <th>描述</th>
  </tr>
  <tr>
    <td>data-placeholder</td>
    <td>
      占位符文字 <br/>
      <strong>注意：</strong> 改属性会覆盖 <code class="language-javascript">placeholder_text_multiple</code> 或 <code class="language-javascript">placeholder_text_single</code> 选项。
    </td>
  </tr>
  <tr>
    <td>multiple</td>
    <td>有此属性的 select 会渲染成可以多选的 Chosen 选框</td>
  </tr>
  <tr>
    <td>selected, disabled</td>
    <td>设置选中、禁止状态，Chosen 会读取这些属性</td>
  </tr>
</table>

## 触发事件

Chosen 会在源 `<select>` 元素上触发事件。

```js
$('.my_select_box').on('change', function(e, params) {
  do_something(e, params);
});
```

<table class="am-table am-table-bordered am-table-striped">
  <tr>
    <th>事件</th>
    <th>描述</th>
  </tr>
  <tr>
    <td>change</td>
    <td>
      Chosen 触发标准的 change 事件，同时会传递 <code class="language-javascript">selected</code> or <code class="language-javascript">deselected</code> 参数， 方便用户获取改变的选项</p>

    </td>
  </tr>
  <tr>
    <td>chosen:ready</td>
    <td>Chosen 实例化完成时触发</td>
  </tr>
  <tr>
    <td>chosen:maxselected</td>
    <td>超过 <code class="language-javascript">max_selected_options</code> 设置时触发</td>
  </tr>
  <tr>
    <td>chosen:showing_dropdown</td>
    <td>Chosen 下拉选框打开完成时触发</td>
  </tr>
  <tr>
    <td>chosen:hiding_dropdown</td>
    <td>Chosen 下拉选框关闭完成时触发</td>
  </tr>
  <tr>
    <td>chosen:no_results</td>
    <td>搜索没有匹配项时触发</td>
  </tr>
</table>

**注意：**所有 Chosen 自定义事件 都包含 Chosen 实例 `chosen` 对象作为参数。

## Chosen 监听的事件

通过在 `<select>` 元素上触发特定事件可以调用 Chosen 的监听函数。

```js
// tell Chosen that a select has changed
$('.my_select_box').trigger('chosen:updated');
```

<table class="am-table am-table-bordered am-table-striped">
  <tr>
    <th>事件</th>
    <th>描述</th>
  </tr>
  <tr>
    <td>chosen:updated</td>
    <td>通过 JS 改变 select 元素选项时应该触发此事件，以更新 Chosen 生成的选框</td>
  </tr>
  <tr>
    <td>chosen:activate</td>
    <td>相当于 HTML focus 事件</td>
  </tr>
  <tr>
    <td>chosen:open</td>
    <td>激活 Chosen 并显示搜索结果</td>
  </tr>
  <tr>
    <td>chosen:close</td>
    <td>关闭 Chosen 并隐藏搜索结果</td>
  </tr>
</table>

<footer>
  &copy; 2011&ndash;2014 <a href="http://www.getharvest.com/">Harvest</a>. Chosen is licensed under the <a href="https://github.com/harvesthq/chosen/blob/master/LICENSE.md">MIT license</a>.
</footer>
