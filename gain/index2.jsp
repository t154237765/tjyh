<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
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
        *{
        	padding:0;
        	margin:0;
        	list-style:none;
        }
        html,body{
        	width:100%;
        	height:100%;
        }
        .container{
        	width:90%;
        	padding:0% 5%;
        	background:url('${stax}/assets/images/gain/background.jpg') no-repeat 100% 100%;
        	background-size:cover;
        	padding-bottom:0.5rem;
        	padding-top:0.5rem;
        	margin-top:0.8rem;
        }
        
        .top img{
        	width:100%;
        }
        .title{
        	width:4.43rem;
        	height:1.42rem;
        	text-align:center;
        	background:url('${stax}/assets/images/gain/images-01.png') no-repeat 100% 100%;
        	background-size:contain;
        	font-size:0.32rem;
        	line-height:1.8rem;
        	color:#000;
        	margin:2% auto;
        }
        .middle{
        	width:100%;
        	/* background:url('${stax}/assets/images/gain/border.jpg') no-repeat 100% 100%;
        	background-size:cover; */
        	padding:5% 0%;
        	border:2px solid #F29B76;
        	border-radius:0.4rem;
        }
        ul,li{
        	width:100%;
        	margin:5% auto;
        	text-align:center;
        }
        
        .show{
        	display:none;
        }
        li img{
        	width:92%;
        }
        .slide img{
        	display:none;
        }
        .bottom{
        	width:100%;
        }
        .bottom img{
        	width:100%;
        }
        .regbutton{
        	width:4.5rem;
        	height:0.8rem;
        	text-align:center;
        	line-height:0.8rem;
        	color:#fff;
        	border-radius:0.5rem;
        	background:#08B6F2;
        	font-size:0.3rem;
        	margin:8% auto;
        	margin-bottom:0%;
        }
        .li1 , .li2  , .li3 , .li4 , .li5 , .li6 , .li7{
        	width:6.2rem;
        	height:0.9rem;
        	
        	margin:auto;
        	font-size:0.36rem;
        	display:flex;
        	align-items:center;
        	justify-content:space-around;
        }
        .li1{
        	 background:url('${stax}/assets/images/gain/nav1.png') no-repeat 100% 100%;
        	 background-size:cover;    	
        }
        .li2{
        	 background:url('${stax}/assets/images/gain/nav2.png') no-repeat 100% 100%;    	
        	 background-size:cover;
        }
        .li3{
        	 background:url('${stax}/assets/images/gain/nav3.png') no-repeat 100% 100%;   
        	 background-size:cover; 	
        }
        .li4{
        	 background:url('${stax}/assets/images/gain/nav4.png') no-repeat 100% 100%;  
        	 background-size:cover;  	
        }
        .li5{
        	 background:url('${stax}/assets/images/gain/nav5.png') no-repeat 100% 100%;    
        	 background-size:cover;	
        }
        .li6{
        	 background:url('${stax}/assets/images/gain/nav7.png') no-repeat 100% 100%;    
        	 background-size:cover;	
        }
        .li7{
        	 background:url('${stax}/assets/images/gain/nav8.png') no-repeat 100% 100%;    
        	 background-size:cover;	
        }
        .left{
        	width:50%;
        	color:#D1443A;
        	text-align:left;
        	margin-left:1rem;
        }
        .right{
        	width:25%;
        	color:#09B6F2;
        	font-size:0.26rem;
        }
        .right img{
        	width:0.18rem;
        	
        }
        .nav{
        	background:url('${stax}/assets/images/gain/title-01.png') no-repeat 100% 100%;    
        	background-size:cover;	
        	font-size:0.24rem;
        	width:6.3rem;
        	height:1rem;
        	text-align:center;
        	margin:auto;
        }
        .nav2{
        	background:url('${stax}/assets/images/gain/nav1.png') no-repeat 100% 100%;    
        	background-size:contain;	
        	font-size:0.24rem;
        	width:6.3rem;
        	height:1rem;
        	text-align:center;
        	margin:auto;
        	display:flex;
        	align-items:center;
        	justify-content:space-around;
        	font-size:0.36rem;
        }
        .nav3{
        	background:url('${stax}/assets/images/gain/nav6.png') no-repeat 100% 100%;    
        	background-size:cover;	
        	font-size:0.24rem;
        	width:6.3rem;
        	height:1rem;
        	text-align:center;
        	margin:auto;
        }
        .nav img{
        	width:0.18rem;
        }
        .nav2 img{
        	width:0.18rem;
        }
        .nav3 img{
        	width:0.18rem;
        }
        .on{
        	transform:rotate(-90deg);
        }
        .login{
			width: 100%;
			height: 100%;
			background: rgba(0,0,0,0.4);
			z-index: 333;
			position: fixed;
			top: 0;
			left: 0;
			display:none;
		}
		.reg{
			width:6.6rem;
			height: 4.06rem;
			margin: auto;
			margin-top:4rem;
			font-size: 0.3rem;
		}
		.reg i{
			text-align:right;
			display: block;
			color:#fff;
			font-size: 0.64rem;
		}
		.reg>div{
			border-radius: 0.1rem;
			background:#fff;
			background-size:100% 100%;
			padding: 0.4rem 0rem;
		}
		.reg .phone{
			width:90%;
			padding: 0 5%;
			height: 1rem;
			line-height: 0.5rem;
		}
		.reg .phone input{
			width:100%;
			padding-left: 4%;
			height:0.72rem;
			border-radius: 0.1rem;
			border: 1px solid #BFBFBF;
		}
		.reg .password{
			width:90%;
			padding: 0 5%;
			height: 1rem;
			line-height: 0.5rem;
			display: flex;
			justify-content: space-between;
			align-items: center;
		}
		.reg .password input{
			width:50%;
			height:0.72rem;
			border-radius: 0.1rem;
			border: 1px solid #BFBFBF;
			padding-left:4%;
		}
		.reg .password button{
			width:41%;
			height:0.75rem;
			border-radius: 0.1rem;
			background:#707070;
			border: 0;
			color: #fff;
		}
		.denglu{
			width:90%;
			height:0.75rem;
			text-align:center;
			line-height: 0.75rem;
			color: #fff;
			background:#18C0FE;
			border: 0;
			border-radius: 0.1rem;
			margin-top: 0.2rem;
		}
		.pop-up1 , .pop-up2, .pop-up3{
			width: 100%;
			height: 100%;
			background: rgba(0,0,0,0.4);
			z-index: 333;
			position: fixed;
			top: 0;
			left: 0;
			display:none;
		}
		.pop-up1 .box{
			width:6.6rem;
			padding-bottom: 1rem;
			margin: auto;
			margin-top:3rem;
			font-size: 0.3rem;
			background: #fff;
			border-radius:0.1rem;
		}
		.pop-up1 .text{
			padding:0.8rem 0.6rem;
			text-align: center;
			line-height: 0.6rem;
			color: #000;
		}
		.pop-up1 button{
			width:4rem;
			height: 0.7rem;
			margin: auto;
			display: flex;
			justify-content:center;
			border: 0;
			border-radius: 0.1rem;
			background: #1ABFFF;
			color: #fff;
		}
		.pop-up2 p{
			font-size:0.3rem;
			color: #000;
			text-align: center;
			padding-top: 0.4rem;
		}
		.pop-up2 .text{
			font-size: 0.26rem;
			color: #666666;
			text-align: center;
			padding:0.5rem 0.4rem;
			line-height: 0.4rem;
		}
		.pop-up2 label{
			font-size: 0.24rem;
			color: #666;
			display: block;
		}
		.pop-up2 .box{
			width:6.6rem;
			padding-bottom:0.1rem;
			margin: auto;
			margin-top:3rem;
			font-size: 0.3rem;
			background: #fff;
			border-radius:0.1rem;
		}
		.pop-up2 button{
			width:4rem;
			height: 0.7rem;
			margin: auto;
			display: flex;
			justify-content:center;
			border: 0;
			border-radius: 0.1rem;
			background: #1ABFFF;
			color: #fff;
		}
		
		.pop-up3 p{
			font-size:0.3rem;
			color: #000;
			text-align: center;
			padding-top: 0.4rem;
		}
		.pop-up3 .text{
			font-size: 0.26rem;
			color: #666666;
			text-align: center;
			padding:0.5rem 0.4rem;
			line-height: 0.4rem;
		}
		.pop-up3 .box{
			width:6.6rem;
			padding-bottom:0.4rem;
			margin: auto;
			margin-top:3rem;
			font-size: 0.3rem;
			background: #fff;
			border-radius:0.1rem;
		}
		.pop-up3 button{
			width:4rem;
			height: 0.7rem;
			margin: auto;
			display: flex;
			justify-content:center;
			border: 0;
			border-radius: 0.1rem;
			background: #1ABFFF;
			color: #fff;
		}
		#reg{width:100%;height:100%;position:fixed;z-index:10000;display:none;top:0;left:0;right:0;margin:auto;background:rgba(0,0,0,0.4);padding-top:2rem;}
	    .titleBar-text{padding-left: 0;width:200%;}
	    .rule2{width:5.8rem;height:8rem;background:#fff;;overflow:scroll;border-radius:0.1rem;margin:auto;padding:0rem 0.4rem;line-height:0.4rem;}
	    .rule2 p{font-size:0.26rem;text-indent:2em;}
		.titleBar{z-index:990;position:fixed;top:0;left:0;width:100%;height:44px;background-color:#09b6f2;padding-left: 3rem;padding-right: 3rem;box-sizing: border-box;}
		.titleBar-back{color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height:44px;line-height:44px;padding-left:.4rem;position: absolute;left: 0;top:0;bottom:44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;}
		.titleBar-back .fa{font-size:16px;color:#fff;vertical-align: baseline;margin-right:5px;}
		.titleBar-text{height:44px;line-height:44px;vertical-align: middle;color:#fff;font-size:16px;text-align:start;}
		.weui-cell1{margin-top:0.2rem;margin-left:0.4rem;}
		.btn{text-align:center;}
		.icon1{
			width:0.8rem;
			position:absolute;
			top:3.2rem;
			right:0.3rem;
		}
		.icon1 img{
			width:75%;
		}
		
    </style>
</head>
<body>
	<div class="titleBar">
		<div class="titleBar-back">
		     <img style="width:0.15rem;" src="${stax}/assets/images/history.png" />&nbsp;返回
		</div>
		<div class="titleBar-text am-text-truncate">津元宝使用指南</div>
	</div>
    <div class="container">
      <div class="top">
      	<img alt="" src="${stax}/assets/images/gain/problem.png">
      </div>
      <div class="title">如何获取"津元宝"？</div>
      <div class="middle">
      	<ul>
      		<li>
      			<div class="li li1">
	      			<p class="left">诗词大会</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/cont2.jpg" />
      			</div>
      		</li>
      		<li>
      			<div class="li li2">
	      			<p class="left">本地特惠</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/cont1.jpg" />
      			</div>
      		</li>
      		<li>
      			<div class="li li3">
	      			<p class="left">幸运大转盘</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/cont3.jpg" />
      			</div>
      		</li>
      		<li>
      			<div class="li li4">
	      			<p class="left">节气好礼</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/cont4.jpg" />
      			</div>
      		</li>
      		<li>
      			<div class="li li5">
	      			<p class="left">建行云宠物</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/cont5.jpg" />
      			</div>
      		</li>
      		<li>
      			<div class="li li6">
	      			<p class="left">集字赢大奖</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/content10.jpg" />
      			</div>
      		</li>
      		<li>
      			<div class="li li7">
	      			<p class="left">邀请有礼</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/content11.jpg" />
      			</div>
      		</li>
      	</ul>
      </div>
      <div class="bottom">
      	<div class="title">如何使用"津元宝"？</div>
      	<div class="use">
      		<ol>
      			<li>
      			<div class="li li1">
	      			<p class="left">天津惠-兑换专区</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/cont6.jpg" />
      			</div>
      		</li>
      		<li>
      			<div class="li li2">
	      			<p class="left">天津惠-本地特惠</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/cont7.jpg" />
      			</div>
      		</li>
      		<img src="${stax}/assets/images/gain/cut.png" />
      		<div class="title">如何查看"津元宝"？</div>
      		<li>
      			<div class="li nav2">
	      			<p class="left">天津惠-个人中心</p>
	      			<p class="right">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/content9.jpg" />
      			</div>
      		</li>
      		<li>
      			<div class="li nav3">
      				<p style="color:#D1443A;font-size:0.36rem;padding-top:0.1rem;">天津惠-个人中心-查看明细</p>
				    <p style="color:#09B6F2;">操作显示 <img class="on" src="${stax}/assets/images/gain/bottom.png" /></p>
      			</div>
      			<div class="show">
      				<img src="${stax}/assets/images/gain/content8.jpg" />
      			</div>
      		</li>
      		</ol>
      	</div>
      	<img src="${stax}/assets/images/gain/cut.png" />
      </div>
      <!-- <div class="regbutton">一键注册“天津惠”</div> -->
    </div>
    <div class="login">
			<div class="reg">
				<p class="icon1">
					<img src="${stax}/assets/images/bottom-close2.png" />
				</p>
				<div>
					<div class="phone">
						<input type="tel" id="phone" pattern="[0-9]*" placeholder="请输入您的手机号" maxlength="11"/>
					</div>
					<div class="password">
						<input type="text" id="ccode" placeholder="请输入您的验证码" />
						<button class="gain" id="bpcodebtn">获取验证码</button>
					</div>
					<div class="btn">
						<button class="denglu" id="loginBtn">注册</button>
					</div>
					<div class="weui-cell1 weui-cell_vcode1" style="font-size:0.24rem">					
						<input type="checkbox" id="checked" checked="checked" />我已阅读并同意
						<a class="register" href="#" style="text-decoration:underline;color:#1752C9;font-size:0.24rem;letter-spacing:0.05rem;">《注册必读》</a>
					</div>
				</div>
			</div>
		</div>
		<div class="pop-up1">
			<div class="box">
				<div class="text">该手机号已绑定</div>
				<button>我知道了</button>
			</div>
		</div>
		<!-- 注册必读 -->
		<div id="reg">
			<div style="text-align:right;margin-right:5%;color:#fff;font-size:0.7rem;"><img style="width:0.6rem;" class="icon2" src="${stax}/assets/images/bottom-close2.png" /></div>
	        <div class="rule2">
	        <p style="text-align:center;font-size:0.36rem;text-indent:0;margin:0.2rem 0">注册必读</p>
	        	<p>1.活动对象：建设银行天津市分行个人手机银行签约用户。</p>
	        	<p>2.参与方式：登陆建行个人手机银行，悦享生活频道点击“天津惠”图标，校验个人手机号后注册“天津惠”平台即可。“天津惠”平台仅使用注册手机号作为客户识别唯一标示，不收集任何其他客户个人信息。</p>
	        	<p>3.“天津惠”平台不会以任何方式，向任何外部机构泄露客户平台相关信息。</p>
	        	<p>4.“天津惠”平台是建设银行天津市分行搭建起的个人手机银行线上营销推广平台，客户参加“天津惠”平台活动，如果需要执行支付操作，均跳转客户建行个人手机银行进行操作，支付成功后跳转回“天津惠”平台。</p>
	        	<p><b>5.“天津惠”平台销售商品均明码标价，不向客户收取任何其他服务费。</b></p>
	        	<p><b>6.参加“天津惠”平台活动，需要跳转客户个人手机银行操作支付交易，请您不要向他人泄露手机银行登陆密码、交易密码、短信验证码。</b></p>
	        	<p>7.除指定条件客群参与的活动外，“天津惠”平台其他活动客户均可以自由选择是否参与。</p>
	        	<p>8.“天津惠”平台各项活动均附有详细规则说明，请您仔细阅读。</p>
	        	<p>9.活动过程中，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。</p>
	        	<p>10.客户参加“天津惠”平台活动，在交易真实有效、操作正常无误的基础上，如果因银行责任而造成消费者损失，经责任认定确认后，银行对客户进行相应补偿。</p>
	        	<p>“天津惠”平台由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。</p>
	        	<p style="margin-bottom:1rem;">“天津惠”平台的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。</p>
	        </div>
		</div>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
<script>
	
	$("li .li").click(function(){
		$(this).next().slideToggle();
		if($(this).find("img").attr("class") == "on"){
			$(this).find("img").removeClass("on");
		}else{
			$(this).find("img").addClass("on");
			
		}
	});
	$(".use .nav").click(function(){
		$(this).next().slideToggle();
		if($(this).find("img").attr("class") == "on"){
			$(this).find("img").removeClass("on");
		}else{
			$(this).find("img").addClass("on");
			
		}
	});
	
	$(".box button").click(function() {
		$(".pop-up1").css("display", "none");
		$(".pop-up2").css("display", "none");
		$(".pop-up3").css("display", "none");
		$("#bpcodebtn").attr("disabled", false);
		
	});
	$(".icon2").click(function(){
		$("#reg").hide();
	});
	$(".login .icon1").click(function(){
	
		$(".login").css("display", "none");
	});
	
	$(".icon1").click(function(){
		clearInterval(timer);
		$("#bpcodebtn").html("获取验证码");
		$("#bpcodebtn").css("background", "#707070");
		$("#bpcodebtn").attr("disabled", false);
		
	});
	
	$(".titleBar-back").click(function(){
		window.history.go(-1);
	})
	
	
</script>
</body>
</html>