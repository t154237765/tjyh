<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title></title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <style type="text/css">
        *{padding:0;margin:0;}
        .box{width:100%;height:25.63rem;background:url(${stax}/assets/images/dial_share.jpg) no-repeat 100% 100%;background-size:100% 100%;position:relative;}
        .btn{width:80%;height:0.8rem;font-size:0.36rem;text-align:center;letter-spacing:0.03rem;line-height:0.8rem;color:#fff;background:#09b6f2;border-radius:0.5rem;position:absolute;bottom:1.2rem;left:0;right:0;margin:auto;}
    </style>
    <title></title>
</head>
<body>
	<div class="box">
		<div class="btn">进入/下载建设银行手机APP</div>
	</div>
</body>
    

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
<script>
    $(".btn").click(function(){
		window.location.href="http://group.ccb.com/cn/v3/head_content/mbsapp.html";
    });
</script>
</body>
</html>