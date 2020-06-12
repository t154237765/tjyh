<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<style type="text/css">
	input{
		height: 35px;
	}
	button{
		position: relative;
		top: -3.4em;
		margin-left: 3%;
	}
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left tel" style="margin-left: 0;">用户手机号：</label>
		<input type="text" class="doc-ipt-3" style="width: 260px;" />
		<label for="doc-ipt-3" class="am-margin-left">导入时间：</label>
		<input type="text" class="doc-ipt-3" />
		<label for="doc-ipt-3" class=" ">至</label>
		<input type="text" class="doc-ipt-3" />
		<button type="button " class="am-btn am-btn-primary am-radius am-fr ">搜索</button>
	</div>
</div>
<div class="am-u-md-12">
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr class="tr-color">
				<th>序号</th>
				<th>手机号</th>
				<th>理由</th>
				<th>数量</th>
				<th>导入时间</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td>1</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

		</tbody>
	</table>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn2">批量导出名单</button>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn1">批量导入津元宝</button>
</div>
</div>
<script type="text/javascript ">
	$('#example').dataTable({
		"lengthMenu ": [
			[5, 25, 50, -1],
			[5, 25, 50, "All "]
		]
	});
	$(".datatable-btn1").click(function(){
		$.ajax({
				url:"user/derive.html",
				type:"get",
				data:{},
				dataType:"html",
				success:function(html){	//载入右侧内容
					$("#c-right-wrapper").html(html);
				}
		})
	})
</script>