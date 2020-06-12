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
</head>
<body class="c-main-wrapper" style="text-align: center;padding-top: 4rem;">

        <img alt="" src="${stax}/assets/images/404.jpg" style="width:80%;">
		<br>${msg}
</body>
</html>
