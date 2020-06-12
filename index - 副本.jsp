<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>幸福销客</title>
  <meta name="description" content="这是一个 user 页面">
  <meta name="keywords" content="user">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${stax}/assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="${stax}/assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${stax}/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${stax}/assets/css/admin.css">
  <link rel="stylesheet" href="${stax}/assets/css/main.css">
  <link rel="stylesheet" href="${stax}/assets/plug-in/datatables-master/dist/amazeui.datatables.css">
  <link rel="stylesheet" href="${stax}/assets/plug-in/zTree_v3/css/zTreeStyle/zTreeStyle.css">
</head>
<body class="c-main-wrapper">
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <div class="am-topbar-brand">
    <strong>幸福销客</strong> <small>管理平台</small>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list am-g">
      <div class="am-u-lg-7 am-u-md-7">
      <li><a href="javascript:;" id=""><span class=""></span> <span id="org" class="">公司管理</span></a></li>
      <li><a href="javascript:;" id=""><span class=""></span> <span id="dep" class="">部门管理</span></a></li>
      <li><a href="javascript:;" id=""><span class=""></span> <span class="">岗位管理</span></a></li>
      <li><a href="javascript:;" id=""><span class=""></span> <span class="">角色管理</span></a></li>
      <li><a href="javascript:;" id=""><span class=""></span> <span id="user" class="">人员管理</span></a></li>
      </div>
      <div class="am-u-lg-5 am-u-md-5 am-fr">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li class="am-hide-sm-only"><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    	</div>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
      <ul class="am-list admin-sidebar-list">
        <li><a href="#"><span class="am-icon-home"></span> 首页</a></li>
        
        <li class="am-nav-divider"></li>
        
        <li class="admin-parent selected">
          <a class="am-cf" data-am-collapse="{target: '#collapse-nav'}"><span class="am-icon-file"></span> 公众号绑定 </a>
          <!--左边栏二级菜单-->
          <!--<ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav">
            <li><a href="admin-user.html" class="am-cf"><span class="am-icon-check"></span> 个人资料<span class="am-icon-star am-fr am-margin-right admin-icon-yellow"></span></a></li>
            <li><a href="admin-help.html"><span class="am-icon-puzzle-piece"></span> 帮助页</a></li>
            <li><a href="admin-gallery.html"><span class="am-icon-th"></span> 相册页面<span class="am-badge am-badge-secondary am-margin-right am-fr">24</span></a></li>
            <li><a href="admin-log.html"><span class="am-icon-calendar"></span> 系统日志</a></li>
            <li><a href="admin-404.html"><span class="am-icon-bug"></span> 404</a></li>
          </ul>-->
        </li>
        <li><a href="admin-table.html"><span class="am-icon-table"></span> 自定义菜单</a></li>
        <li><a href="admin-form.html"><span class="am-icon-pencil-square-o"></span> 推图文消息</a></li>
        <li><a href="#"><span class="am-icon-sign-out"></span> 自定义微站</a></li>
      </ul>
			
    </div>
  </div>
  <!-- sidebar end -->

  <!-- content start -->
  <div id="load" class="admin-content">




  </div>
  <!-- content end -->  

</div>

<a href="#" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"></a>


<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="${stax}/assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${stax}/assets/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${stax}/assets/js/amazeui.min.js"></script>

<script src="${stax}/assets/js/app.js"></script>
<!--以下为插件-->
<!--日期组件-->
<script src="${stax}/assets/plug-in/datetimepicker-master/js/amazeui.datetimepicker.min.js"></script>
<!--ztree-->
<script src="${stax}/assets/plug-in/datatables-master/dist/amazeui.datatables.min.js"></script>


<script>
	$(document).ready(function() {
		$("#org").click(function(){
		    $("#load").load("${ctx}/org/list.do");
		});
		$("#dep").click(function(){
		    $("#load").load("${ctx}/dep/list.do");
		});
		$("#user").click(function(){
		    $("#load").load("${ctx}/user/list.do");
		});
	    
	} );

</script>
</body>
</html>
