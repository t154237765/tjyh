<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/jquery.dataTables.min.css" />
<style type="text/css">
	input{
		height: 35px;
	}
	button{
		position: relative;
		top: -3.4em;
	}
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left tel" style="margin-left: 0;">用户手机号：</label>
		<input type="text" class="doc-ipt-3" style="width: 260px;" />
		<label for="doc-ipt-3" class="am-margin-left tel" style="margin-left: 0;">津元宝数量：</label>
		<input type="text" class="doc-ipt-3" style="width: 260px;" />
		<label for="doc-ipt-3" class="am-margin-left">注册时间：</label>
		<input type="text" class="doc-ipt-3" />
		<label for="doc-ipt-3" class=" ">至</label>
		<input type="text" class="doc-ipt-3" />
		<button type="button" class="am-btn am-btn-primary am-radius am-fr ">搜索</button>
	</div>
</div>
<div class="am-u-md-12">
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr class="tr-color">
				<th>ID</th>
				<th>userID</th>
				<th>手机号</th>
				<th>注册时间</th>
				<th>津元宝数量</th>
				<th>体力值</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn1">+添加商品</button>
</div>
<script src="${ctx}/jsp/system_tjh/assets/js/datatables-master/dist/amazeui.datatables.min.js"></script>
<script type="text/javascript">
	
	$('#example').dataTable({
		"lengthMenu": [
			[5, 25, 50, -1],
			[5, 25, 50, "All"]
		]
	});
	$(".datatable-btn1").click(function(){
		$.ajax({
				url:"${ctx}/jsp/system_tjh/page/user/addShop.jsp",
				type:"get",
				data:{},
				dataType:"html",
				success:function(html){	//载入右侧内容
					$("#c-right-wrapper").html(html);
				}
		});
	});
</script>