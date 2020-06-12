<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<style>
 *{
 	 padding:0;
 	 margin:0;
 }
 html,body{
 	width:100%;
 	height:100%;
 }
.stocks{
	width:100%;
 	height:100%;
 	margin-top:0.88rem;
 }
 .stocks img{
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
		position:fixed;
		top:0;
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
</style>
</head>
<body>
<div>
	<div class="titleBar">
		<div class="titleBar-back" onclick="toHome()">
			<img src="${stax}/assets/images/history.png" />&nbsp;返回
		</div>
		<div class="titleBar-text am-text-truncate">报名入口</div>
	</div>
	<div class="stocks">
		<img src="${stax}/assets/images/stocks.jpg" />
	</div>
</div>
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/rem.js"></script>
	<script>   
	/**返回首页**/
  	function toHome(){
  		window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
  	}
	</script>
	
</body>
</html>