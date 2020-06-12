<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>营销平台</title>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/admin.css">
    <style type="text/css">
    .dropdown-menu{display: none;}
    </style>
</head>
<body class="c-main-wrapper">
<!--导航条-->
<header class="am-topbar">
  <h1 class="am-topbar-brand">
    <a href="#">博雅融联</a>
  </h1>
  <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
  	<ul id="menudiv" class="am-nav am-nav-pills am-topbar-nav">
    </ul>
    <!-- <div class="am-topbar-right">
      <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">登录</button>
       <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">注册</button>
       <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">退出</button>
    </div> -->
    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list am-topbar-right">
	   	<li class="am-dropdown" data-am-dropdown="">
	       <a class="am-dropdown-toggle okmemo-tmp-unselect" data-am-dropdown-toggle="" href="javascript:;">
	         <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
	       </a>
	       <ul class="am-dropdown-content">

	         <%-- <li><a href="${ctx}/logout.do"><span class="am-icon-user"></span> 登录</a></li> --%>

	         <li><a href="${ctx}/logout.do"><span class="am-icon-power-off"></span> 退出</a></li>
	       </ul>
	     </li>
    </ul>
  </div>
</header>

<!--内容页-->
		
<div class="content-container am-text-sm">
    <div class="am-g">
        
    </div>
   
   <div  class="admin-content">
       
   </div>

</div>

<!-- 	  loading 遮罩层 -->
	<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="loading-modal">
	 <div class="am-modal-dialog">
	   <div class="am-modal-hd">努力加载中...</div>
	   <div class="am-modal-bd">
	     <span class="am-icon-spinner am-icon-spin"></span>
	   </div>
	 </div>
	</div>
	
<!-- 重写的show提示模块 -->
<div class="am-modal am-modal-confirm" tabindex="-1" id="new-show">
    <div class="am-modal-dialog">
        <div class="am-modal-hd"></div>

        <div id="alert-content" class="am-modal-bd">

        </div>
    </div>
</div>
<script src="${stax}/assets/js/jquery.min.js"></script>

<script>
$.ajaxSetup({cache:true});

var menu;

$(document).ready(function() {
	menu = ${menu};
	
	if(menu && menu.length > 0){
		var initChildPage = false;
		for(var i=0; i<menu.length; i++){
			var id = menu[i].id;
			var menuName = menu[i].menuName;
			var fid = menu[i].menuFid;
			if(fid == 0){
				var cla = "";
				if(!initChildPage){
					showChildPage(null, menu[i].menuUrl);
					initChildPage = true;
					cla = "am-active";
				}
				$("#menudiv").append('<li class="'+cla+'"><a href="javascript:;" id="" onclick="showChildPage(this,\''+menu[i].menuUrl+'\')">'+menuName+'</a></li>');
			}
		}
	}else{
		alert("暂无操作权限！");
	}


	
});

function showChildPage(obj, data){
	if(data){
		var r = Math.random();
		$('.admin-content').load('${stax}'+data+'?r='+r);
	}
	if(obj){
		$("#menudiv").children().removeClass("am-active");
		$(obj).parent().addClass("am-active");
	}
}
</script>

</body>
</html>