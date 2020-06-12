<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>登录</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<link rel="alternate icon" type="image/png" href="${stax}/assets/i/favicon.png">
<link rel="stylesheet" href="${stax}/assets/css/amazeui.min.css" />
<link rel="stylesheet" href="${stax}/assets/css/main.css" />
<script type="text/javascript" src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/amazeui.min.js"></script>
<%-- <script src="${stax}/assets/js/amazeui.min.js"></script> --%>

<style>
.header {
	text-align: center;
}

.header h1 {
	font-size: 200%;
	color: #2481d8;
	margin-top: 30px;
}

.header p {
	font-size: 14px;
	color: #555;
}

.register-link {
	color: #555;
	font-size: 14px;
	font-weight: normal;
	margin-left: 10px;
}
</style>
</head>
<body>
	<div class="header">
		<div class="am-g">
			<h1>融联</h1>
		</div>
		<hr />
	</div>
	<div class="am-g">
		<div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
			<h3>登录</h3>
			<hr>
			<br> <br>
			<%-- <p style="color: red">${errMsg}</p> --%>
			<p><span id="erroMsg" style="color: red;font-size: 12px"></span></p>

			<form method="post" class="am-form" data-am-validator
				action="${ctx}/main.do">
				<label for="email">用户名:</label> <input required type="text" class=""
					name="userName" id="userName" value="" placeholder="请输入用户名">
				<br> <label for="password">密码:</label> <input minlength="3"
					required type="password" name="password" id="password" value=""
					placeholder="输入密码（至少 3 个字符）"> <br>

				<div class="am-cf">
					<input type="button" onclick="login();" value="登 录">
					<!-- <input type="submit" value="登录"> -->
				</div>
			</form>
			<hr>
			<p>© 2017 融联</p>
		</div>
	</div>
<script type="text/javascript">
		var store = $.AMUI.store;
	 	$("#userName").focus(); 
	 	
		 function login() {
			var userName = $("#userName").val();
			var password = $("#password").val();
			if($.trim(userName).length==0){
				$("#erroMsg").text("用户名不能为空");	
			}else if($.trim(password).length==0){
				$("#erroMsg").text("密码不能为空");
			}else{
				$.ajax({
							url : "${ctx}/loginAfter.do",
							type : "post",
							data : {
								"userName" : userName,
								"password" : password
							},
							dateType:"json",
							beforeSend : function() {
								return true;
							},
							success : function(jsonObject) {							
								if (jsonObject.success==true) {
									store.set("utype",jsonObject.utype);
									location.href = "${ctx}/tuanExpress.do";
								} else {
									$("#erroMsg").text("用户名或密码错误");
								}

							}

						});
			}
		} 
		 
		 $(document).keyup(function(event){
			  if(event.keyCode ==13){
				  login();
			  }
		 });
		 
		 
</script>
</body>
</html>