<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>


<!DOCTYPE html>
<html>
<head>
   
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>惠享商城注册跳转</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
</style>
</head>
<body>
	手机号：<input type="text" id="phone" maxlength="11" >
	<input type="button" id="loginBtn" value="登录">
</body>
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		$("#loginBtn").click(function(){
			var phone = $("#phone").val();
			if(phone != ""){
				$.ajax({
					url:'${ctx}/enjoyshoppregist/login.do',	
					type:'post',
					data:'phone='+phone,
					success:function(resp){
						if(resp.msg != ''){
							alert(resp.msg);
						}else{
							window.location.href ="${ctx}/enjoyshoppregist/toingotshop.do?ssdid="+encodeURIComponent(resp.ssdid);
						}
					}
				});
			}
		});
	</script>
</html>
