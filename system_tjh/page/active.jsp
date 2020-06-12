<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<style type="text/css">
	input{
		height: 32px;
	}
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left">活动名称：</label>
		<input type="email" class="doc-ipt-3" />

		<label for="doc-ipt-3" class="am-margin-left">创建时间：</label>
		<input type="email" class="doc-ipt-3" />
		<label for="doc-ipt-3" class=" ">至</label>
		<input type="email" class="doc-ipt-3" />

		<button type="button " class="am-btn am-btn-primary am-radius am-fr ">搜索</button>
	</div>
</div>
<div class="am-u-md-12">

	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr class="tr-color">
				<th>序号</th>
				<th>活动名称</th>
				<th>开始时间</th>
				<th>结束时间</th>
				<th>活动链接</th>
				<th>位置</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>运营部</td>
				<td>总经理</td>
				<td>高级员工</td>
				<td>总经理</td>
				<td>高级员工</td>
				<td>
					<div class="c-ib am-margin-right c-b-l">上架</div>
					<div class="c-ib am-margin-right c-b-l">下架</div>
					<div class="c-ib am-margin-right c-b-l">编辑</div>
				</td>
			</tr>
			<tr>
				<td>1</td>
				<td>运营部</td>
				<td>总经理</td>
				<td>高级员工</td>
				<td>总经理</td>
				<td>高级员工</td>
				<td>
					<div class="c-ib am-margin-right c-b-l">上架</div>
					<div class="c-ib am-margin-right c-b-l">下架</div>
					<div class="c-ib am-margin-right c-b-l">编辑</div>
				</td>
			</tr>

		</tbody>
	</table>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn">+添加活动</button>
</div>
<script type="text/javascript">
	$('#example').dataTable({
		"lengthMenu": [
			[5, 25, 50, -1],
			[5, 25, 50, "All"]
		]
	});
</script>