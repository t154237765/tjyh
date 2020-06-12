<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<style type="text/css">
	input{
		height: 32px;
	}
	select{
		height: 32px;
		width: 160px;
	}
	.am-btn{
		position: relative;
		top:-3.4em;
		margin-left:3%;
	}
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left">用户手机号：</label>
		<input type="text" class="doc-ipt-3" style="width: 260px;" />
		<label for="doc-ipt-3" class="am-margin-left">创建时间：</label>
		<input type="text" class="doc-ipt-3" />
		<label for="doc-ipt-3" class=" ">至</label>
		<input type="text" class="doc-ipt-3" />　　　　

		<label for="doc-select-1">项目：</label>
		<select id="doc-select-1">
			<option value="option1">请选择</option>
			<option value="option2">一...</option>
			<option value="option3">二.....</option>
			<option value="option4">三........</option>
		</select>　　　

		<label for="doc-select-1">处理状态：</label>
		<select id="doc-select-1">
			<option value="option1">请选择</option>
			<option value="option2">一...</option>
			<option value="option3">二.....</option>
			<option value="option4">三........</option>
		</select>
		<br />
		<br />

		<label for="doc-ipt-3" class="am-margin-left">投诉内容：　</label>
		<input type="text" class="doc-ipt-3" style="width: 260px;" />　
		<label for="doc-select-1">　　提交人：</label>
		<select id="doc-select-1">
			<option value="option1">请选择</option>
			<option value="option2">一...</option>
			<option value="option3">二.....</option>
			<option value="option4">三........</option>
		</select>　　　　

		<label for="doc-select-1">责任人：</label>
		<select id="doc-select-1">
			<option value="option1">请选择</option>
			<option value="option2">一...</option>
			<option value="option3">二.....</option>
			<option value="option4">三........</option>
		</select>
		<button type="button " class="am-btn am-btn-primary am-radius am-fr ">搜索</button>
	</div>
</div>
<div class="am-u-md-12">
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr class="tr-color">
				<th>序号</th>
				<th>日期</th>
				<th>项目</th>
				<th>投诉内容</th>
				<th>用户手机号</th>
				<th>提交人</th>
				<th>责任人</th>
				<th>处理状态</th>
				<th>处理结果</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<div class="c-ib am-margin-right c-b-l">处理</div>
				</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<div class="c-ib am-margin-right c-b-l">处理</div>
				</td>
			</tr>

		</tbody>
	</table>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn1">+创建投诉工单</button>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn2">批量导出投诉记录</button>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn3">批量导出投诉记录</button>
</div>
<script type="text/javascript">
	$('#example').dataTable({
		"lengthMenu": [
			[5, 25, 50, -1],
			[5, 25, 50, "All"]
		]
	});
	$(".datatable-btn1").click(function(){
		$.ajax({
				url:"service/createdOrder.html",
				type:"get",
				data:{},
				dataType:"html",
				success:function(html){	//载入右侧内容
					$("#c-right-wrapper").html(html);
				}
		})
	})
	//投诉处理
	$(".c-b-l").click(function(){
		$.ajax({
				url:"service/solve.html",
				type:"get",
				data:{},
				dataType:"html",
				success:function(html){	//载入右侧内容
					$("#c-right-wrapper").html(html);
				}
		})
	})
	
</script>