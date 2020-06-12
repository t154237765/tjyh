<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${stax}/assets/plug-in/datatables-master/dist/amazeui.datatables.css">
<title>临时</title>
<link rel="stylesheet" href="${stax}/assets/js/datetimepicker-master/css/amazeui.datetimepicker.css">
<link rel="stylesheet" href="${stax}/assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="${stax}/assets/css/admin.css">
<link rel="stylesheet" href="${stax}/assets/plug-in/datatables-master/dist/amazeui.datatables.css">
<link rel="stylesheet" href="${stax}/assets/css/bolegou_insert.css">
<style type="text/css">
#example th {   
    white-space: nowrap !important;  
}
</style>
</head>

<!--导航条-->
<header class="am-topbar">
  <h1 class="am-topbar-brand">
    <a href="#">博雅融联</a>
  </h1>
  <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list am-topbar-right">
	   	<li class="am-dropdown" data-am-dropdown="">
	       <a class="am-dropdown-toggle okmemo-tmp-unselect" data-am-dropdown-toggle="" href="javascript:;">
	         <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
	       </a>
	     </li>
    </ul>
  </div>
</header>

<body >

		<div class="am-g">
			<div class="am-u-md-8	 am-u-end lj-contentWrapper" >
				<div class="am-form-horizontal am-form" role="form">
					<div class="am-form-group ">	
									    
						<label  class="am-u-md-1 am-form-label">录入状态</label>
						<div class=" am-u-md-4" style="padding-right:0">
							<!-- <input id="winCode" size="16" type="text" value="" > -->
							<select name="condition" id="condition">
								<option value="">请选择</option>
								<option value="0">未录入</option>
								<option value="1">已录入</option>
							</select>
						</div> 
						
						<label  class="am-u-md-1 am-form-label  am-u-sm-offset-1 ">商品名称</label>
						<div class=" am-u-md-5">
							<input type="text" id="prodname">
						</div>
					</div>
					<div class="am-form-group" style="text-align:right">
						<div class=" am-u-md-12" style="padding:0">
							<div class="am-btn-group">
								<button id="importWinCode" type="button" class="am-btn  am-radius am-margin-right-sm">导入</button>	
                                <form id="winCodeForm" action="" method="post" enctype="multipart/form-data">
									<input style="display:none" id="winCodeFile" name="file" type="file" />
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/amazeui.min.js"></script>
<script src="${stax}/assets/js/jquery-form.js"></script>
<script src="${stax}/assets/js/vue.min.js"></script>

<script>

$(function(){
	
	console.log(encodeURIComponent('Ow3Bl3LADs8='));
	console.log(encodeURIComponent("Y/dewQJ8n9w="));
    
    // 上传数据 
    $("#importWinCode").on('click', function(){
    	$("#winCodeFile").click();
    });
    
    $("#winCodeFile").change(function(){
		$("#winCodeForm").submit();
	});

	$("#winCodeForm").submit(function(){
		$("#winCodeForm").ajaxSubmit({
	        type: "post",
	        url: "${ctx}/temp/importQues.json",
	        success: function (data) {
	        	console.log(data);
	        	alert('success');
	        }, 
	        error: function (msg) {
	            alert("信息导入失败");    
	        },
	        timeout:100000
	    });
		return false;
	});
});

</script>
</body>
</html>