<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>404</title>
  <meta name="description" content="这是一个 404 页面">
  <meta name="keywords" content="user">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <%
	Exception ex = (Exception) request.getAttribute("Exception");
	if(ex != null)
		ex.printStackTrace();
  %>
  <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
  <style>
  *{padding:0;margin:0;}
  	.titleBar{background:#09B6F2;}
  	/* #box{width:90%;background: url(${stax}/assets/images/shenji.png) no-repeat 50% top;background-size: contain;padding:0% 5%;padding-top:95%;} 升级页面 */
  	#box{width:90%;background: url(${stax}/assets/images/weihu.jpg) no-repeat 50% top;background-size: contain;padding:0% 5%;padding-top:95%;}
  </style>
</head>
<script src="${stax}/assets/js/common.js"></script>
<body class="c-main-wrapper">
	<div class="titleBar">
		<div class="titleBar-text am-text-truncate">天津惠</div>
	</div>
	//系统升级页面；
		<div id="box">
			<div class="txtBox" style="font-size:0.6rem;line-height:1.2rem;">
				尊敬的用户：<br />
				&nbsp;您好！<br />
				“天津惠”平台将于<br /><span style="color:red;">2019年01月23日09：00-10:30</span><br />进行系统升级，期间平台暂停一切服务，升级完成后恢复。感谢您的关注，谢谢！
			</div>
		</div>
</body>
</html>
