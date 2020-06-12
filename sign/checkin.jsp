<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
	<title>签到送礼</title>
	 <link rel="stylesheet" href="${stax}/assets/css/weui.min.css" />
	 <style>
	 	*{
        	padding:0;
        	margin:0;
        	list-style:none;
        }
        html,body{
        	width:100%;
        	height:105%;
        }
        .box{
        	background:url(${stax}/assets/images/sign/mouseback.png) no-repeat 100% 100%;
        	background-size:100% 95%;
        	height:95%;
        	padding-top:0.88rem;
        	position:relative;
        }
        /* 头部 */
        .titleBar{width:90%;padding:0% 5%;height:0.88rem;z-index:11;font-size:0.3rem;color:#fff;display:flex;align-items:center;text-align:center;background:#08B6F2;position:fixed;top:0;}
        .titleBar-text{width:100%;text-align:center;}
        .titleBar-back{color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height:44px;line-height:44px;padding-left:.4rem;position: absolute;left: 0;top:0;bottom:44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display:flex;align-items:center;}
		.titleBar-back .fa{font-size:16px;color:#fff;vertical-align: baseline;margin-right:5px;}
		.titleBar-text{height:44px;line-height:44px;vertical-align: middle;color:#fff;font-size:16px;text-align:center;}
		.titleBar-back img{width:0.15rem;}
		
		.sign{position:absolute;text-align:center;margin:0 auto;width:100%;top:30%;}
		.sign img{width:2.3rem;height:.82rem;}
		/* 签到 */
		.qiandao{position:absolute;top:34%;height:5.32rem;width:100%;}
		.qiandao ul{display:flex;flex-wrap:wrap;width:80%;margin:.2rem auto;padding-bottom: .2rem;height: 100%;}
		.qiandao ul li{font-size:.32rem;width:20%;padding:.1rem 0rem;margin-left:.2rem;background:url(${stax}/assets/images/sign/border1.png) no-repeat center center;background-size:100% 100%;text-align:center;line-height:0.78rem;margin-top:.15rem;color:#ff0000;position:relative;}
		.qiandao .pm16{padding:0 0;line-height:1;background:url(${stax}/assets/images/sign/border-1.png) no-repeat 100% 100%;background-size:100% 100%;}
		.qiandao .qiandao_true{background:"url(${stax}/assets/images/sign/border2.png) no-repeat 100% 100%  !important";background-size:"100% 100% !important";color:"#7b7b7b !important";}
		
		.rule{width:100%;text-align:center;position:absolute;top:148%;}
		.rule img{width:2.36rem;height:.54rem;}
		
		.pull-up , .zhezhao , .err-div{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.4);z-index:33333;}
		.zhezhao .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;}
		.zhezhao .zhezhao-tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.zhezhao-tishi p{padding:16% 0%;}	/* 弹出框美化 */
		
		/* 弹出框美化 */
		.pull-up , .zhezhao,.rules , .err-div{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.4);z-index:33333;}
		/* .weui-dialog {
			overflow: visible;
			position:absolute;
		} */
		
		.rules .cont{padding-top: .2rem;width:80%;background:#fff;margin:auto;margin-top:3.4rem;height:50%;border-radius:0.2rem;padding-bottom:0.6rem;}
		.pull-up .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;padding-bottom:0.6rem;}
		.zhezhao .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;}
		.err-div .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;padding-bottom:0.5rem;}
		.rules h4{font-size:.44rem;width:90%;text-align:center;margin: auto;}
		.rules .rules-tishi{font-size:0.36rem;width:90%;text-align:left;padding:0% 5%;height:80%;overflow:scroll;margin-bottom: .2rem;}
		.button1{:margin-top:.2rem;display:flex;align-items:center;justify-content:space-around;text-align:center;padding-bottom:0rem;}
		.rules .cancel1{width:2.5rem;height:0.8rem;line-height:0.8rem;border-radius:0.1rem;text-align:center;font-size:0.36rem;background:#CE3633;color:#fff;margin:auto;padding-bottom:0;}
		
		.pull-up .tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.zhezhao .zhezhao-tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.err-div .err-tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.tishi p{padding:16% 0%;}
		.tishi p span{color:#CE3633;}
		.err-tishi p{padding:16% 0%;}
		.zhezhao-tishi p{padding:16% 16%;}
		.confirm1{width:2.5rem;height:0.8rem;line-height:0.8rem;border-radius:0.1rem;text-align:center;font-size:0.36rem;background:#CE3633;color:#fff;margin:auto;}
		.button{display:flex;align-items:center;justify-content:space-around;text-align:center;padding-bottom:0.4rem;}
		.confirm2 , .cancel{font-size:0.3rem;width:2.4rem;padding:5% 0%;color:#fff;height:0.2rem;line-height:0.2rem;border-radius:0.1rem;}
		.confirm2{background:#CE3936;}
		.cancel{background:#A0A0A0;}
		
		
		.cont1{text-align:center;position: absolute;top: 107%;width:100%;}
		.cont1 img{width:50%;}
		.cont2{text-align:center;position: absolute;top: 118%;width:100%;}
		.cont2 img{width:92%;}
		.data{position:absolute;font-size:10px;bottom:-.4rem;left:.2rem;text-align:center;}
	 </style>
</head>
<body>
	<div class="box">
		<div class="titleBar" >
    		<div class="titleBar-back" onclick="goHome()" style="display:block;">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
			<div class="titleBar-text am-text-truncate">新年签到</div>
		</div>
		<div class="sign">
			<img src="${stax}/assets/images/sign/signin.png" id="clickBtn"/>
		</div>
		<div class="qiandao">
			<ul>
			</ul>
			<div class="cont1">
			<img src="${stax}/assets/images/sign/content.png"/>
			</div>
			<div class="cont2">
				<img src="${stax}/assets/images/sign/youhui.png" />
			</div>
				<div class="rule">
			<img src="${stax}/assets/images/sign/rule.png" id="rule" onclick="ruleBtn()"/>
		</div>
		</div>
		
	
	<!-- 活动规则 -->
	<div class="rules" style="display:none;">
		<div class="cont">
			<h4>新春签到享好礼活动规则</h4>
			<div class="rules-tishi">
				<p>1、活动时间：2020年1月25日-2020年2月8日</p>
				<p>2、活动对象：天津惠注册用户</p>
				<p>3、活动内容：活动期间，累计签到10天支付0.01元（支付的金额实时退回到支付账户）可获得【新春礼包】。</p>
				<p>4、获得的礼包可在“专享活动”中使用，也可以点击活动页面【新春礼包】直接跳转使用，每人每件商品仅可购买一次。</p>
				<p>5、获得的【新春礼包】中的优惠购资格请务必在2月29日前使用，过期则资格作废。</p>
				<p>6、活动声明： 活动过程中，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。 </p>
				<p>7、本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。</p>
			</div>
			<div class="button1">
				<div class="cancel1">确定</div>
			</div>
		</div>
	</div>
	
	 <div class="js_dialog" id="iosDialog1" style="opacity: 1;display:none;">
		<div class="weui-mask"></div>
		<div class="weui-dialog" style="max-width:335px;">
			<i class="weui-icon-cancel" id="c-login-close"></i>
			<div class="weui-dialog__bd c-f-s-16" style="color: #333; padding-top: 1.7em;">
				请绑定手机号码
				<div class="weui-cells weui-cells_form">

					<div class="weui-cell">
						<div class="weui-cell__bd">
							<input id="phone" class="weui-input" type="tel" maxlength="11"
								pattern="[0-9]*" placeholder="请输入您的手机号码">
						</div>
					</div>
					<div class="weui-cell weui-cell_vcode">
						<div class="weui-cell__bd" style="line-height: 1;">
							<input class="weui-input" type="number" pattern="[0-9]*"
								id="ccode" oninput='checkLength(this,4);' maxlength="4"
								placeholder="请输入验证码">
						</div>
						<div class="weui-cell__ft">
							<button id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button> 
							<!-- <input id="bpcodebtn" type="button" disabled="true" class="weui-vcode-btn" value="获取验证码"/> -->
						</div>
					</div>
				</div>
			</div>
			<div class="weui-dialog__ft c-btn-noline">
				<a href="javascript:;"
					class="weui-dialog__btn weui-dialog__btn_primary c-c-b2"
					style="line-height:0.8rem; height:0.8rem; flex: none;font-size:0.3rem;margin:5% auto" onclick="dialogbtn();">绑定</a>
			</div>
		</div>
	</div>
	
	<!--错误提示框  -->
	<div class="err-div" style="display:none;">
		<div class="cont">
			<i class="weui-icon-cancel" style="color: #fff; font-size: 1.2rem;margin-bottom:0.1rem;position:absolute;top:3.8rem;font-size:0.6rem;right:0.5rem"></i>
			<div class="err-tishi">
				<p></p>
			</div>
			<div class="confirm1">确定</div>
		</div>
	</div>
		
		<!-- 确定支付 -->
	<div class="zhezhao" style="display:none;">
		<div class="cont">
			<div class="zhezhao-tishi">
				<p>支付0.01元即可获取新年优惠购资格呦</p>
			
			</div>
			<div class="button">
				<div class="cancel">取消</div>
				<div class="confirm2">确定</div>
			</div>
		</div>
	</div>
	</div>
</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
<script>

/***********************************************************加载页面信息***********************************************************/
	var jumpStatus = false;//已领取跳转商品列表 false不跳转 true跳转
	var toadySignStatus = false;//当日是否已签到  false未签到  true已签到
	var giftStatus = false;//是否有已支付未领取礼包 false没有 true有
	var signStatus = false;//签到次数是否达到要求  false未达到 true已达到
	var siuid = "${siuid}";
	if(siuid) localStorage.setItem("siuid", siuid);     

	$(function(){
		var log = new Log("/recordlog.gif");
		log.write(localStorage.getItem("bankuid"), "cjqiandao", "index");
		signRecord();//加载用户信息
		
		
		$("#clickBtn").click(function(){
			clickBtn();
		});
	});
	
	$(".err-div i , .err-div .confirm1").on("click",function(){
		$(".err-div").hide();
	});
/***********************************************************获取用户的签到信息***********************************************************/
	function signRecord(){
		$.ajax({
			type : "POST",
			url : "${ctx}/sign/signrecord.json",
			data : "siuid=" + encodeURIComponent(localStorage.getItem("siuid"))+"&r="+Math.random(),
			success : function(resp) {
				signStatus = resp.signStatus;
				giftStatus = resp.giftStatus;
				jumpStatus = resp.jumpStatus;
				toadySignStatus = resp.toadySignStatus;
				if(resp.days&&resp.days!=""){
					console.log(resp)
					$(".qiandao ul").html("");
					var li ='';
					for(var i=0; i<resp.days.length; i++){
						if(resp.days[i].result=="F"){
							li ='<li class="qiandao_true" style="background:url(${stax}/assets/images/sign/border2.png) no-repeat center center;background-size:83% 83%;color:#7b7b7b"><span>'+resp.days[i].title+'</span><span class="data">'+resp.days[i].day+'</span></li>';
						}else{
							li ='<li style="background:url(${stax}/assets/images/sign/border1.png) no-repeat 100% 100center center;background-size:80% 80%;">'+resp.days[i].title+'<span class="data">'+resp.days[i].day+'</span></li>';
						}
						$(".qiandao ul").append(li);
					}
				}
				if(signStatus){
					$(".qiandao ul").append('<li class="pm16" onclick="signGift();" style="background:url(${stax}/assets/images/sign/border-1.png) no-repeat center center ;background-size:80% 80%;color:#ffe08b"><p style="color:#ffe08b;margin-top: .25rem;">新春</p><p style="color:#ffe08b">礼包</p></li>');
				}else{
					$(".qiandao ul").append('<li class="pm16" style="background:url(${stax}/assets/images/year/border-2-1.png) no-repeat center center;background-size:90% 90%;color：#000000;font-size:.3rem;"><p  style="color:#8A5254;margin-top: .25rem;">新春</p><p style="color:#8A5254">礼包</p></li>');	
				}
				if(toadySignStatus){
					$("#clickBtn").attr("src","${stax}/assets/images/sign/signin1.png");
				}else{
					$("#clickBtn").attr("src","${stax}/assets/images/sign/signin.png");
				}
				if(giftStatus&&!jumpStatus){
					getSignGift();
				}
			},
			error : function(er) {
				loading.hide();
				console.log(er);
			}
		});
	}
	
/***********************************************************签到功能***********************************************************/
	function clickBtn(){
		if(!toadySignStatus){
			$.ajax({
				type : "POST",
				url : "${ctx}/sign/comesign.json",
				data : "siuid=" + encodeURIComponent(localStorage.getItem("siuid"))+"&bid="+localStorage.getItem("bankuid")+
				"&cd="+localStorage.getItem("cd")+"&tm="+localStorage.getItem("tm")+"&mc="+localStorage.getItem("mc")+"&r="+Math.random(),
				success : function(resp) {
					if(resp.msg&&resp.msg!=""){
						$(".err-tishi p").html(resp.msg);
						$(".err-div").show();
					}
					if(resp.status&&resp.status=="1"){
						signRecord();
					}
				},
				error : function(er) {
					loading.hide();
					console.log(er);
				}
			});
		}
	}
	
/***********************************************************礼包按钮***********************************************************/
	function signGift(){
		if(signStatus&&!jumpStatus){
			$(".zhezhao").show();
		}else if(jumpStatus){
			window.location.href = "${ctx}/huituan/index.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
		}
	}

	/* 支付确定与取消 */
	$(".cancel").click(function(){
		$(".zhezhao").hide();
	});

	$(".confirm2").click(function(){
		getSignGift();
		giftStatus = true;
	});
	
	function getSignGift(){
		if(giftStatus&&!jumpStatus){
			$.ajax({
				type : "POST",
				url : "${ctx}/sign/signgift.json",
				data : "siuid=" + encodeURIComponent(localStorage.getItem("siuid"))+"&bid="+localStorage.getItem("bankuid")+
				"&cd="+localStorage.getItem("cd")+"&tm="+localStorage.getItem("tm")+"&mc="+localStorage.getItem("mc")+"&r="+Math.random(),
				success : function(resp) {
					if(resp.msg&&resp.msg!=""){
						$(".err-tishi p").html(resp.msg);
						$(".err-div").show();
					}else if (resp.payUrl) {
 						oos = resp.payUrl;
 						MBS_DIRECT_PAY();
					}else if(resp.status&&resp.status=="1"){
						signRecord();
					}
				},
				error : function(er) {
					loading.hide();
					console.log(er);
				}
			});
		}
	}
	
	function MBS_PAYINFO(){
		return oos;
	}

	function MBS_DIRECT_PAY(){
		if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
			//苹果端
			window.location="mbspay://direct?"+MBS_PAYINFO();
		} else if (/(Android)/i.test(navigator.userAgent)) {
		    //安卓端
			mbspay.directpay(oos);
		} else {
		   //pc端
		   alert('请到app上购买！');
		};
	}
	
/***********************************************************活动规则***********************************************************/
	function ruleBtn(e){
			$(".rules").show();
			scroll=$(".rules").show();
			scroll=$(window).scrollTop(); 
			$("html").css({"overflow":"hidden","position":"fixed","top":"- "+scroll+"px"}) 

	}
	
	$(".cancel1").click(function(){
		$(".rules").hide();
		$("html").css({"overflow":"auto","position":"static"}); 
		$(window).scrollTop(scroll); 

	});
	
	
	/***********************************************************验证手机号***********************************************************/	
	/*验证手机号*/
	function checkPhone(num) {
		var phone = parseInt(num);
		var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
		if (!reg.test(phone)) {
			$(".tishi p").html("请输入正确的手机号");
			$(".pull-up").show();
			$("#phone").val("");
			return false;
		}
		return true;
	}
	
	/*验证手机号*/
	$(document).on("input propertychange", "#phone", function(e) {
		if (e.type === "input" || e.orignalEvent.propertyName === "value") {
			this.value = this.value.replace(/\D/gi, "");
			if (this.value.length == 11) {
				 if(checkPhone(this.value)){
				var phone = parseInt(this.value);
				var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
				if (reg.test(phone)) {
					$('#bpcodebtn').attr("disabled", false);
					$("#bpcodebtn").addClass("c-c-b");
				}
			} else {
				$('#bpcodebtn').attr("disabled", false);
				$("#bpcodebtn").removeClass("c-c-b");
			}
		}
		}
	});
	$(document).on("input propertychange", "#phone2", function(e) {
		if (e.type === "input" || e.orignalEvent.propertyName === "value") {
			this.value = this.value.replace(/\D/gi, "");
			if (this.value.length == 11) {
				var phone = parseInt(this.value);
				var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
				if (!reg.test(phone)) {
					$(".tishi p").html("请输入正确的手机号");
					$(".pull-up").show();
					$("#phone2").val("");
				}
			}
		}
	});
	 /*验证手机号*/
    function checkPhone(num){
        var phone = parseInt(num);
        var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
        if(!reg.test(phone)){
        	$(".tishi p").html("请输入正确的手机号");
			$(".pull-up").show();
			$("#phone2").val("");
            return false;
        }    
        return true;
    }
	 getCode();
	//发送短信
	var bClick = false;
	var timer;
	function getCode() {	
		/*验证码倒计时*/
		var oBtn = document.getElementById("bpcodebtn");
		oBtn.onclick = function() {
			if (bClick == false && checkPhone($("#phone").val())) {
				$('#phone').attr("disabled", true);
				bClick = true;
				$.ajax({
					type : "GET",
					url : "${ctx}/gatherwordvert/getcode.json",
					data : "phone="+$('#phone').val()+"&r="+ Math.random(),
					success : function(resp) {
						/* console.log(resp) */
						if (resp.msg != "") {
							$(".err-tishi p").html(resp.msg);
							$(".err-div").show();
							$("#iosDialog1").hide();
						}else {
							 $("#bpcodebtn").removeClass("c-c-b");
							 /* var s = 60;
							timer = setInterval(function() {
								s--;
									$("#bpcodebtn").css("background","#959595"); 
				                   $("#bpcodebtn").attr("disabled",true);
				                   oBtn.value = s+"秒后重发";

								if (s == 0) {
									initTimer();
									oBtn.value = "获取验证码";
									$("#bpcodebtn").css("background","#CE3633"); 
				                   	$("#bpcodebtn").attr("disabled",false);
								}
							}, 1000);  */
							getCode1()
						}
					},
					error : function(er) {
						$('#phone').attr("disabled", false);
						$('#bpcodebtn').attr("disabled", false);
						console.log(er);
					}
				});
			}
		};
	}
	var tim;
    var oBtn = document.getElementById("bpcodebtn");
    function getCode1(){
    	clearInterval(timer);
    	/*验证码倒计时*/
         
			 s = 60;
              timer = setInterval(function tim(){  
                   s--;
                   $("#bpcodebtn").css("background","#959595"); 
                   $("#bpcodebtn").attr("disabled",true);
                   $("#phone").attr("disabled",true);       /*  ***********************************电话框不能填写***************************/
                 //  console.log(s)
                   oBtn.innerHtml = s+"秒后重发";
                   if(s == 0){
                		oBtn.innerHtml = "获取验证码";
	                   	$("#bpcodebtn").css("background","#CE3633"); 
	                   	$("#bpcodebtn").attr("disabled",false);
	                   	$("#phone").attr("disabled",false); 
	                   	clearInterval(timer);
	                   	initTimer1();
                   }
               },1000);
			
        };
    
	
	function initTimer() {
		bClick = false;
		$('#phone').attr("disabled", false);
		clearInterval(timer);
		$('#bpcodebtn').html("获取验证码").addClass("c-c-b");
	}
	function initTimer1(){
		bClick = false;
		$('#phone').attr("disabled", false);
		$('#bpcodebtn').html("获取验证码").addClass("c-c-b");	
	}
	/**绑定手机**/
	function register() {
		var phone = $('#phone').val();
		var ccode = $('#ccode').val();
		if (!checkPhone(phone))
			return;
		if (!ccode) {
			$(".tishi p").html("请输入验证码");
			$(".pull-up").show();
		}else{
			console.log(localStorage.getItem("cd"));
			$.ajax({
				type : "GET",
				url : "${ctx}/gatherwordvert/register.json",
				data : "phone="+phone+"&code="+ccode +"&bid="+localStorage.getItem("bankuid")+"&bankId="+encodeURIComponent("${bankId}")+"&acid="+encodeURIComponent("${acid}")
				+"&cd="+localStorage.getItem("cd")+"&tm="+localStorage.getItem("tm")+"&mc="+localStorage.getItem("mc")+"&r="+Math.random(),
				success : function(resp) {
					$("#iosDialog1").hide();
					if (resp.msg && resp.msg != "") {
						$(".err-tishi p").html(resp.msg);
						$(".err-div").show();
						 initTimer1(); 
					}
					if (resp.userId&&resp.userId!="") {
						localStorage.setItem("userId", resp.userId);  
						getbuyerinfos();
					}
				},
				error : function(er) {
					console.log(er);
				}
			});
		}
		
		
	}
	
/***********************************************************返回***********************************************************/
	function goHome(){
		window.location.href = "${ctx}/tjhui/tjhuiindex.do";
	}
	
	$(".pull-up i , .confirm1").on("click",function(){
		$(".pull-up").hide();
	});
	$(".err-div i , .err-div .confirm1").on("click",function(){
		$(".err-div").hide();
	});
	
	function Log(url){
	  this.url = url;
	  this.img = new Image(1,1);
	  this.write = function(uid, moduleName, actionName){
		  this.img.src =this.url+"?moduleName="+encodeURIComponent(moduleName)+"&action="+encodeURIComponent(actionName)+"&uid="+uid;
	  }
	}
	
</script>
</html>