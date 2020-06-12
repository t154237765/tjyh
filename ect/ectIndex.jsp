<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>ETC</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css" />
    <link rel="stylesheet" href="${stax}/assets/css/swiper.min.css" />
  	<style type="text/css">
        *{
        	padding:0;
        	margin:0;
        	list-style:none;
        	font-family:"FZHei-B01S";
        }
        .box{width:100%;padding-top:6.15rem;height:12.18rem;background:url(../../assets/images/etc/etcBack.jpg) no-repeat 100% 100%;background-size:100% 100%;}	
		.on{color:#B12727;}
		/*登陆弹出框*/
		.swiper-pagination-bullet{width: 0.4rem;color:#fff;height: 0.4rem; display: inline-block;border-radius: 18%; text-align: center;line-height: 0.45rem;font-size:0.3rem;}
		.weui-loading_toast {font-size:20px;}
		/* 弹出框美化 */
		.weui-skin_android .weui-dialog__bd:first-child{text-align: center;}
		.weui-skin_android .weui-dialog__ft{text-align: center;padding: 0 1.8em .7em 1.4em;}
		.weui-skin_android .weui-dialog__btn:last-child{line-height: 1.5rem;width: 4rem;height: 1.5rem;}
		.c-panel-image{margin:0 auto;}
		.titleBar-back{color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height:44px;line-height:44px;padding-left:.4rem;position: absolute;left: 0;top:0;bottom:44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display:flex;align-items:center;}
		.titleBar-back .fa{font-size:16px;color:#fff;vertical-align: baseline;margin-right:5px;}
		.titleBar-text{height:44px;line-height:44px;vertical-align: middle;color:#fff;font-size:16px;text-align:center;}
		.titleBar-back img{width:0.15rem;}
		
		.giftBox{width:100%;text-align:center;}
		.giftBox img{width:2.78rem;}
		.ruleCont{width:6.6rem;height:6.74rem;background:url(../../assets/images/etc/etcRule.png) no-repeat 100% 100%;background-size:100% 100%;margin:auto;margin-top:0.7rem;}
		.ruleTitle{font-size:0.36rem;color:#fff;text-align:center;font-weight:bold;letter-spacing:0.05rem;padding-top:0.05rem;}
		.ruleTxt{width:90%;height:85%;background:#ccc;margin:auto;margin-top:0.3rem;overflow:scroll;-webkit-overflow-scrolling:touch;}
		.js_dialog{width:100%;}
		.login{width:6.6rem;height:5.2rem;background:#fff;border-radius:0.15rem;position:fixed;top:3.5rem;left:0;right:0;margin:auto;z-index:1111;}
		.weui-icon-cancel{font-size:0.6rem;color:#fff;position:absolute;right:0rem;top:-0.7rem;}
		.loginCont>p{font-size:0.36rem;color:#fff;text-align:center;width:100%;background:#187FF8;height:0.87rem;line-height:0.87rem;border-top-left-radius:0.15rem;border-top-right-radius:0.15rem;}
		.loginCont div{width:80%;display:flex;align-items:center;justify-content:space-between;margin:auto;margin-top:0.2rem;}
		#phone{width:100%;height:0.87rem;border-radius:0.1rem;border:1px solid #B5B5B5;font-size:0.3rem;color:#B5B5B5;margin-top:0.5rem;padding-left:0.1rem;}
		#ccode{width:55%;height:0.87rem;border-radius:0.1rem;border:1px solid #B5B5B5;font-size:0.3rem;color:#B5B5B5;padding-left:0.1rem;}
		#bpcodebtn{width:40%;height:0.87rem;line-height:0.87rem;background:#B5B5B5;font-size:0.3rem;color:#fff;text-align:center;border:0;border-radius:0.1rem;}
		.loginBtn{width:2.46rem !important;height:0.8rem;border-radius:0.1rem;text-align:center;line-height:0.8rem;background:#187FF8;color:#fff;font-size:0.3rem;margin:auto;margin-top:0.3rem !important;}
		.loginBtn p{text-align:center;margin:auto;}
		.c-c-b{background:#187FF8 !important;}
		.loginTxt{color:red;font-size:0.26rem;text-align:center;}
		.pull-up{width:100%;background:rgba(0,0,0,0.4);height:100%;position:fixed;top:0;}
		.tishi .award_p{font-size:0.36rem;text-align:center;margin-top:1rem;}
		.confirm1{width:2.4rem;height:0.87rem;text-align:center;margin:auto;margin-top:0.6rem;line-height:0.87rem;background:#187FF8;border-radius:0.1rem;color:#fff;font-size:0.36rem;}
		.zhezhao , .err-div{width:100%;background:rgba(0,0,0,0.4);height:100%;position:fixed;top:0;}
		.zhezhao-tishi{width:80%;margin:auto;margin-top:1rem;}
		.cont{width:6.6rem;height:4.5rem;background:#fff;border-radius:0.15rem;position:fixed;top:3.5rem;left:0;right:0;margin:auto;z-index:1111;}
		.zhezhao-tishi p{font-size:0.36rem;text-align:center;}
		.err-tishi p{margin-top:1rem;text-align:center;font-size:0.36rem;color:#fff;}
		.pull-up-txt{font-size:0.26rem;color:red;text-align:center;margin-top:0.2rem;}
		.cont .button{display:flex;align-items:center;justify-content:space-around;margin-top:0.8rem;}
		.cont .button .cancel{width:2.4rem;height:0.87rem;text-align:center;line-height:0.87rem;background:#DCDCDC;border-radius:0.1rem;color:#fff;font-size:0.36rem;}
		.cont .button .confirm2{width:2.4rem;height:0.87rem;text-align:center;line-height:0.87rem;background:#187FF8;border-radius:0.1rem;color:#fff;font-size:0.36rem;}
		.swiper-container{width:90%;height:75%;margin:auto;margin-top:0.1rem;}
		.swiper-slide{width:100%;}
		.listTop{width:90%;display:flex;align-items:center;justify-content:space-around;margin:auto;margin-top:0.3rem;}
		.listTop div{width:25%;text-align:center;font-size:0.3rem;color:#197ff8;}
		.swiper-slide ul{width:100%;}
		.swiper-slide li{width:100%;display:flex;align-items:center;justify-content:space-around;margin:auto;margin-top:0.2rem;}
		.swiper-slide li p{width:25%;text-align:center;font-size:0.24rem;}
		.pass{width:1.05rem;height:0.48rem;text-align:center;background:#1880F5;line-height:0.48rem;border-radius:0.1rem;color:#fff;}
		.unPass{width:1.05rem;height:0.48rem;text-align:center;background:#B5B5B5;line-height:0.48rem;border-radius:0.1rem;color:#fff;}
</style>

</head>
<body>
    
    <div class="box">
    	<div class="giftBox">
    		<img src="../../assets/images/etc/giftBox.png" />
    	</div>
    	<p style="color:#fff;text-align:center;font-size:0.3rem;">二维码每十分钟刷新一次</p>
    	<div class="ruleCont">
    		<p class="ruleTitle">审核列表</p>
    		<div class="listTop">
    			<div>用户信息</div>
    			<div>申请时间</div>
    			<div>奖品</div>
    			<div>操作</div>
    		</div>
    		<div class="swiper-container swiper-no-swiping">
    			<div class="swiper-wrapper">
    				<div class="swiper-slide">
    					<ul>
    						<li>
    							<p>176****9999</p>
    							<p>8/1&nbsp;12:00</p>
    							<p>50元话费</p>
    							<p class="pass">通过</p>
    						</li>
    						<li>
    							<p>176****9999</p>
    							<p>8/1&nbsp;12:00</p>
    							<p>50元话费</p>
    							<p class="unPass">不通过</p>
    						</li>
    						<li>
    							<p>176****9999</p>
    							<p>8/1&nbsp;12:00</p>
    							<p>50元话费</p>
    							<p class="unPass">不通过</p>
    						</li>
    						<li>
    							<p>176****9999</p>
    							<p>8/1&nbsp;12:00</p>
    							<p>50元话费</p>
    							<p class="unPass">不通过</p>
    						</li>
    						<li>
    							<p>176****9999</p>
    							<p>8/1&nbsp;12:00</p>
    							<p>50元话费</p>
    							<p class="unPass">不通过</p>
    						</li>
    						<li>
    							<p>176****9999</p>
    							<p>8/1&nbsp;12:00</p>
    							<p>50元话费</p>
    							<p class="unPass">不通过</p>
    						</li>
    					</ul>
    				</div>
    				<div class="swiper-slide">
    					<ul>
    						<li>
    							<p>176****9999</p>
    							<p>8/1&nbsp;12:00</p>
    							<p>50元话费</p>
    							<p class="pass">通过</p>
    						</li>
    						<li>
    							<p>176****9999</p>
    							<p>8/1&nbsp;12:00</p>
    							<p>50元话费</p>
    							<p class="unPass">不通过</p>
    						</li>
    					</ul>
    				</div>
    			</div>
    			<div class="swiper-pagination"></div>
    		</div>
    	</div>
    </div>
    
    <div class="js_dialog" style="display:none;">
    	<div class="weui-mask"></div>
    	<div class="login">
    		<i class="weui-icon-cancel"></i>
    		<div class="loginCont">
				<p>客户经理登录</p>  
				<div>
					<input id="phone" type="tel" maxlength="11" pattern="[0-9]*" placeholder="请输入您的手机号码">	
				</div>
				<div>
					<input type="number" pattern="[0-9]*" id="ccode" oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码">
					<button id="bpcodebtn" disabled="true">获取验证码</button>
				</div>
				<div class="loginBtn" onclick="dialogbtn();"><p>登录</p></div>
    		</div>
    		<p class="loginTxt" style="display:none;">此手机号码非客户经理手机号，请重新输入</p>
    	</div>
    </div>

	
	<!--获得奖品 -->
	<div class="pull-up" style="display:none;">
		<div class="cont">
			<i class="weui-icon-cancel" style="color: #fff; font-size: 1.2rem;margin-bottom:0.1rem;position:absolute;top:-0.7rem;font-size:0.6rem;right:0rem"></i>
			<div class="tishi">
				<p class="award_p">恭喜您获得红包！<br>奖品将存在您的客户经理确认后发放</p>
			</div>
			<div class="confirm1">确定</div>
			<p class="pull-up-txt">奖品将直接存入您的零钱</p>
		</div>
	</div>
	
	<!--错误提示框  -->
	<div class="err-div" style="display:none;">
		<div class="cont">
			<i class="weui-icon-cancel" style="color: #fff; font-size: 1.2rem;margin-bottom:0.1rem;position:absolute;top:-0.7rem;font-size:0.6rem;right:0rem"></i>
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
				<p>亲，您需要支付0.1-1元体验金支付金额将及时退回至支付账户</p>
			</div>
			<div class="button">
				<div class="cancel">取消</div>
				<div class="confirm2">确定</div>
			</div>
		</div>
	</div>
	
    
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/swiper.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
<script>
	
	var mySwiper = new Swiper('.swiper-container', {
		//autoplay: true,//可选选项，自动滑动
		freeMode : true,
	    lidesPerView : 'auto',
	    observer: true,//修改swiper自己或子元素时，自动初始化swiper
	    observeParents: true,//修改swiper的父元素时，自动初始化swiper
	    slideToClickedSlide: true,
	    pagination: {
	    	el: '.swiper-pagination',
	        clickable: true,
	        renderBullet: function (index, className) {
	            return '<span class="' + className + '">' + (index + 1) + '</span>';
	        }
	      },
	})
	$(".cancel").click(function(){
		$(".zhezhao").hide();
	});
	
	$(".confirm2").click(function(){
		goBuy();
	});
	
	/***********************************************************去支付***********************************************************/
	var oos = "";
	//进行支付
	function goBuy() {
		var loading = weui.loading('正在加载...'); //loading
		$.ajax({
			type : "POST",
			url : "${ctx}/gatherword/goBuy.json",
			data : "buyerId=" + encodeURIComponent(buyerId)+"&r="+Math.random(),
			success : function(resp) {
				loading.hide();
				if (resp.msg != ""){
					$(".err-tishi p").html(resp.msg);
					$(".err-div").show();
				}else if (resp.payUrl) {
					oos = resp.payUrl;
					MBS_DIRECT_PAY();
				}
			},
			error : function(er) {
				loading.hide();
				console.log(er);
			}
		});
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
	
	/***********************************************************用户注册***********************************************************/
	function checkLength(obj, n) {
		//obj.value = obj.value.replace(/\D/g,'')
		if (obj.value.length > n) {
			obj.value = obj.value.substr(0, n);
		}
	}
	
	$("#c-login-close").on("click",function(){
		$("#iosDialog1").hide();
	});
	$(".pull-up i , .confirm1").on("click",function(){
		$(".pull-up").hide();
	});
	$(".err-div i , .err-div .confirm1").on("click",function(){
		$(".err-div").hide();
	});
	
	function dialogbtn(){
		register();
	}

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
				var phone = parseInt(this.value);
				var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
				if (reg.test(phone)) {
					$('#bpcodebtn').attr("disabled", false);
					$("#bpcodebtn").addClass("c-c-b");
				}
			} else {
				$('#bpcodebtn').attr("disabled", true);
				$("#bpcodebtn").removeClass("c-c-b");
			}
		}
	});
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
					url : "${ctx}/bytaskgetphonecharge/dgsendcode.json",
					data : "phone="+$('#phone').val()+
						   "&bid="+localStorage.getItem("bid")+
						   "&r="+ Math.random(),
					success : function(resp) {
						if (resp.errMsg != "") {
							console.log(resp.errMsg);
							$(".err-tishi p").html(resp.errMsg);
							$(".err-div").show();
							$("#iosDialog1").hide();
						}else {
							$("#bpcodebtn").removeClass("c-c-b");
							var s = 60;
							timer = setInterval(function() {
								s--;
								oBtn.innerHTML = s + "秒后重发";

								if (s == 0) {
									initTimer();
								}
							}, 1000);
						}
					},
					error : function(er) {
						$('#phone').attr("disabled", false);
						console.log(er);
					}
				});
			}
		};
	}

	function initTimer() {
		bClick = false;
		$('#phone').attr("disabled", false);
		clearInterval(timer);
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
			$(".err-tishi p").html(resp.errMsg);
			$(".err-div").show();
			$("#iosDialog1").hide();
		}
	}
	function goHome(){
		window.location.href = "${ctx}/tjhui/tjhuiindex.do";
	}
	
</script>
</body>
</html>
