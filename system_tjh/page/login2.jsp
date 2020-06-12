<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>登录</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="../assets/i/favicon.png">
  <link rel="stylesheet" href="../assets/css/amazeui.min.css"/>
  <style>
    html{position:relative;}
    body{background:#0066B3;}
    #login-wrapper{margin-top:7%;width:620px;}
   /*  #login-wrapper .am-form{background: url(../assets/i/login-bg.jpg) no-repeat;width:478px;height:335px;} */
    #login-wrapper .am-form{background: #fff;width:478px;height:335px;}
    #login-wrapper .c-form-container{position:absolute;left:86px;top:90px;width:360px;}
    #login-wrapper .c-form-container .c-login-user{width:18px;height:40px;position:absolute;left:32px;top:1px;}
    #login-wrapper .c-form-container .c-login-key{width:18px;height:40px;position:absolute;left:32px;top:66px;}
    #login-wrapper .am-form input{background:transparent;display:inline-block;height:44px;line-height:1;}
    #login-wrapper .am-form input[type="text"],#login-wrapper .am-form input[type="password"]{width:247px;border:0;outline: none;padding-left:0;}
  
    #login-wrapper .am-form input:focus[type="text"],#login-wrapper .am-form input:focus { outline:none; -webkit-box-shadow:none;} 
    #login-wrapper .am-form div{margin-bottom:7px;height:44px;}
    #login-wrapper .am-form div img{margin-left:-2px;border-radius:5px;}
    #login-wrapper .am-form div i{cursor:pointer;}
    #login-wrapper .am-form label{visibility:hidden;}
    .c-login-click{margin-left:-50px;}
    .c-login-btn{width:100%;height:40px;border-radius:5px;display:inline-block;background:#00AC9D;color:#fff;font-size:18px;text-align: center;line-height:40px;vertical-align:middle;cursor:pointer;}
    .c-login-click div:last-child{background:none;}
    .c-login-click div:first-child{margin-right:16px}
    #c-foot-text{margin-left:-7rem;}
    .header {text-align: center;}
    .header h1 {font-size: 200%;color: #333;margin-top: 30px;}
    .header p {font-size: 14px;}
    #c-errorMsg{position:absolute;bottom:30px;left:202px;color:red;}
    #login-wrapper #c-login-btn[disabled="disabled"]{background: none;}
    .c-foot-text{position:absolute;bottom:-50px;text-align: center;width:100%;opacity:.6;color: #fff;}
    .send_messageCode{font-size: 10px;margin-left: 9px;color: #fff;cursor: pointer;padding: 20px 0;}
    .title{font-size: 30px;text-align: center;padding-top: 20px;}
  </style>
</head>
<body>
<div class="am-g" id="c-login-all">
  <div class="am-u-sm-centered" id="login-wrapper">
   
    <form method="post" class="am-form am-animation-slide-top">
    	<p class="title">天津惠后台管理系统登录</p>
    	<div class="c-form-container">
    		<div class="am-input-group">
				  <span class="am-input-group-label"><i class="am-icon-user am-icon-fw"></i></span>
				  <input type="text" class="am-form-field" placeholder="账户名">
			</div>
		    <div class="am-input-group">
				  <span class="am-input-group-label"><i class="am-icon-lock am-icon-fw"></i></span>
				  <input type="text" class="am-form-field" placeholder="密码">
			</div>  
    		<!-- <div>
		      <input type="text" name="" id="userName" value="" placeholder="请输入您的手机号码">
		    </div>  
		    <div>
		      <input type="password" name="" id="codeTest" value="" placeholder="验证码">
		      <span class="send_messageCode">发送短信验证码</span>
		    </div>    -->
		    
		    
		     
	      <!--<div>
		      <label for="code">验证:</label>
		      <input type="text" name="" id="codeTest" value="">
		      <i class="am-icon-refresh am-padding-left-xs am-padding-top-xs"></i>
		    </div> -->
		    <div class="c-login-click" style="background:#00AC9D;">
		    	<div class="c-login-btn" id="c-login-btn">登录</div>
		    </div>
      </div>
      <span id="c-errorMsg" class="am-hide"></span>
    </form>
    
    
    
  </div>
</div>



<div class="c-foot-text">
  <p id="c-foot-text">© 2016 China Construction Bank.</p>
</div>

<script src="${ctx}/jsp/system_tjh/assets/js/jquery.min.js"></script>
<script src="${ctx}/jsp/system_tjh/assets/js/amazeui.min.js"></script>
<script src="${ctx}/jsp/system_tjh/assets/js/md5.js"></script>
<script>

	if(!Function.prototype.bind){
		Function.prototype.bind = function(){
			var fn = this, args = Array.prototype.slice.call(arguments), object = args.shift();
			return function(){
				return fn.apply(object, args.concat(Array.prototype.slice.call(arguments)));
			}
		}
	}

	var loginPage = {
		init : function(){
			this.initNode();
			this.animation();
			this.clrIpt();
			this.addEvent();
			this.sCode();
		},
		initNode : function(){
			this.$userIcon = $(".c-login-user");
			this.$keyIcon  = $(".c-login-key");
			this.$userName = $("#userName");
			this.$passWord = $("#password");
			this.$key      = $("#codeTest");
			this.$clr      = $("#c-clr-ipt");
			this.$loginBtn = $("#c-login-btn");
			this.$errorMsg = $('#c-errorMsg');
			this.$sCode = $('.send_messageCode');
		},
		//验证码动画
		sCode : function(){
			var that = this;
			var flag = true;
			var s = 60;
			that.$sCode.on('click',function(){
				
				if(flag == true){
					flag = false;
					$('.send_messageCode').html("重新获取(59s)");
					var timer = setInterval(function(){
						s--;
						$('.send_messageCode').html("重新获取("+s+"s)");
						if(s==0){
							$('.send_messageCode').html("重新获取验证码");
							flag = true;
							s = 60;
							clearInterval(timer);
						};
					},1000)
				}
			})
		},
		//input显示隐藏图标
		animation : function(){
			
			var that = this;
			
			iptIcon(this.$userName,that.$userIcon);
			iptIcon(this.$passWord,that.$keyIcon);
			
			function iptIcon(ipt,icon){
				ipt.on("focus",function(){
					icon.hide();
				})
				ipt.on("blur",function(){
					if(this.value){
						icon.hide();
					} else {
						icon.show();
					}
				})
			}
			
		},
		//取消
		clrIpt : function(){
			var that = this;
			this.$clr.on("click",function(){
				that.$userName.val("");
				that.$passWord.val("");
				that.$key.val("");
			})
		},
		//绑定事件
		addEvent: function() {
			var that = this;
			this.$loginBtn.on('click', this.validate.bind(this));
			$(document).on('keydown', function(e) {
				var ev = e || window.event;
				if (ev.keyCode === 13) {
					that.validate();
				}
			});
		},
		//登录验证
		validate: function() {
			var that = this,
				account = $.trim(that.$userName.val()),
				//pwd = that.$passWord.val(),
				testcode = that.$key.val(),
				TelReg = /^1((3|4|5|7|8){1}\d{1}|70)\d{8}$/;
				errorMsg = '';
			if (account.length === 0) {
				errorMsg = '手机号不能为空';
			} else if (account.length > 11){
				errorMsg = '手机号过长';
			} else if(TelReg.test(account)===false){
				errorMsg = '手机号不正确';
			}else if (!testcode || testcode.length < 4) {
				errorMsg = '请输入正确验证码';
			} else {
				that.$loginBtn.html('登录中...').attr('disabled', 'disabled');
				
				that.requestLogin.call(that, account,testcode);
				that.$loginBtn.html('登录').removeAttr('disabled');
			}
			// 显示错误信息
			that.$errorMsg.html(errorMsg).removeClass('am-hide');  
			return false;
		},
		//登录接口
		requestLogin: function(account, testcode) {
			var store = $.AMUI.store;

			if (!store.enabled) {
			  console.log('不支持本地存储');
			  return;
			}
			
			store.set('uid',account.toLowerCase());
			//store.set('key',MD5(pwd.toLowerCase()));
			store.set('code',testcode.toLowerCase());
			
			window.location.href = 'javascript:;';
				
		}
	}
	
	loginPage.init();
	
	

</script>
    
</body>
</html>