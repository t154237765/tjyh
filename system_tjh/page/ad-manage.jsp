<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!--<link rel="stylesheet" type="text/css" href="../assets/css/ad-manage.css"/>-->
<style type="text/css">
	input {
		height: 32px;
	}
	
	#del,
	#xiajia,
	#shangjia,
	#select {
		width: 100%;
		height: 100%;
		background: rgba(0, 0, 0, 0.1);
		z-index: 111;
		position: fixed;
		top: 0;
		left: 0;
		display: none;
	}
	
	#del .container {
		width: 500px;
		height: 400px;
		background: #fff;
		margin: 240px auto;
		text-align: center;
		padding: 5%;
		border-radius: 10px;
		font-size: 20px;
	}
	
	#del .text {
		padding: 20% 0%;
	}
	
	#del .am-btn-default {
		padding: .4em 3em;
		border-radius: 3px;
		background: #999999;
		border: 0;
		margin-left: 4em;
	}
	
	#del .am-btn-primary {
		padding: .4em 3em;
	}
	
	#xiajia .container {
		width: 500px;
		height: 400px;
		background: #fff;
		margin: 240px auto;
		text-align: center;
		padding: 5%;
		border-radius: 10px;
	}
	
	#xiajia .text {
		padding: 20% 0%;
	}
	
	#xiajia .am-btn-default {
		padding: .4em 3em;
		border-radius: 3px;
		background: #999999;
		border: 0;
		margin-left: 4em;
	}
	
	#xiajia .am-btn-primary {
		padding: .4em 3em;
	}
	
	#select .container {
		width: 500px;
		height: 400px;
		background: #fff;
		margin: 240px auto;
		text-align: center;
		padding: 3%;
		border-radius: 10px;
	}
	
	#select .text {
		padding: 4% 0%;
	}
	
	#select .close {
		padding: 0.4em 2.5em;
		border-radius: 3px;
		background: #999999;
		border: 0;
		margin-left: 5em;
	}
	
	#shangjia .container {
		width: 500px;
		padding: 3% 0;
		margin: 15% auto;
		border-radius: 10px;
		font-size: 20px;
		text-align: center;
		background: #fff;
	}
	
	#select .am-selected {
		width: 350px;
	}
	
	#select select {
		padding: 0;
		margin-bottom: 4em;
	}
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left">广告名称：</label>
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
				<th>广告名称</th>
				<th>创建时间</th>
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
				<td>
					<div class="c-ib am-margin-right c-b-l">编辑</div>
					<div class="c-ib am-margin-right c-b-l">上架</div>
					<div class="c-ib am-margin-right c-b-l">下架</div>
					<div class="c-ib am-margin-right c-b-l">删除</div>
				</td>
			</tr>
			<tr>
				<td>1</td>
				<td>运营部</td>
				<td>总经理</td>
				<td>高级员工</td>
				<td>
					<div class="c-ib am-margin-right c-b-l">编辑</div>
					<div class="c-ib am-margin-right c-b-l">上架</div>
					<div class="c-ib am-margin-right c-b-l">下架</div>
					<div class="c-ib am-margin-right c-b-l">删除</div>
				</td>
			</tr>

		</tbody>
	</table>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn">+创建广告</button>
</div>
<!--弹出层-->
<div id="del">
	<div class="container">
		<p class="text">是否删除此广告?</p>
		<button type="button" class="am-btn am-btn-primary am-radius">是</button>
		<button type="button" class="am-btn am-btn-default">否</button>
	</div>
</div>

<div id="xiajia">
	<div class="container">
		<p class="text">是否将此广告下架?</p>
		<button type="button" class="am-btn am-btn-primary am-radius">是</button>
		<button type="button" class="am-btn am-btn-default">否</button>
	</div>
</div>

<div id="shangjia">
	<div class="container">
		<p class="text">此广告已在线上</p>
	</div>
</div>

<div id="select">
	<div class="container">
		<p class="text">请选择广告呈现位置</p>

		<select data-am-selected>
			<option value="a">Apple</option>
			<option value="b" selected>Banana</option>
			<option value="o">Orange</option>
			<option value="m">Mango</option>
		</select>
		<br />
		<button type="button" class="am-btn am-btn-primary am-radius">是</button>
		<button type="button" class="am-btn close">否</button>
	</div>
</div>
<script type="text/javascript">
	$('#example').dataTable({
		"lengthMenu": [
			[5, 25, 50, -1],
			[5, 25, 50, "All"]
		]
	});
	$(".datatable-btn").click(function() {
		$.ajax({
			url: "advertising/createdAdver.html",
			type: "get",
			data: {},
			dataType: "html",
			success: function(html) { //载入右侧内容
				$("#c-right-wrapper").html(html);
			}
		})
	})
</script>