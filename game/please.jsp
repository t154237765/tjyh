<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>女神节</title>
<style>
 *{
 	 padding:0;
 	 margin:0;
 }
 html,body{
 	width:100%;
 	height:100%;
 	background:#FFD9DF;
 }
 div{
	width:100%;
 	height:100%;
 }
 img{
 	width:100%;
 }
 .titleBar {
	width: 100%;
	height: 0.88rem;
	line-height: 0.88rem;
	background: #08B6F2;
	font-size: 0.36rem;
	text-align: center;
	color: #fff;
	background: #08B6F2;
}

.titleBar-back .fa {
	font-size: 16px;
	color: #fff;
	vertical-align: baseline;
	margin-right: 5px;
}

.titleBar-back {
	color: #fff;
	font-size: 16px;
	vertical-align: middle;
	width: 60px;
	height: 44px;
	line-height: 44px;
	padding-left: .4rem;
	position: absolute;
	left: 0;
	top: 0;
	bottom: 44px;
	word-wrap: normal;
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
	display: flex;
	align-items: center;
	justify-content: start;
}

.titleBar-back img {
	width: 0.2rem;
}
.box{
	width:100%;
	position:fixed;
}
</style>
</head>
<body>
<!-- 	<div class="titleBar"> -->
<!-- 		<div class="titleBar-back" onclick="toHome()"> -->
<%-- 			<img src="${stax}/assets/images/history.png" />&nbsp;返回 --%>
<!-- 		</div> -->
<!--         <div class="titleBar-text am-text-truncate">女神节</div> -->
<!--     </div> -->
	<div class="box">
		<img src="${stax}/assets/images/girls/please.jpg" />
	</div>
	<script>   
		
	</script>
	<script src="${stax}/assets/js/jquery.min.js"></script>
    <script src="${stax}/assets/js/rem.js"></script>
</body>
</html>