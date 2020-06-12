<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>商品详情</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no, email=no" />
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css" />
<link rel="stylesheet" href="${stax}/assets/css/common.css" />
<style type="text/css">
.c-imagetag {
	right: 0;
	left: auto;
	width: 2.4rem;
	background: none;
}

.c-imagetag img {
	width: 1.8rem;
	height: 1.8rem;
}

.picTxtList .c-list-left-div {
	width: 14rem;
}

.c-leftimg-rightall .weui-media-box__bd {
	margin-top: -10px;
}

.c-leftimg-rightall .weui-media-box__title {
	white-space: normal;
}

.weui-media-box {
	padding-left: 20px;
	padding-right: 30px;
	padding-bottom: 0
}

.c-leftimg-rightall .c-b-1 {
	border: 1px solid #eee;
}

.page__bd {
	font-size: 14px;
}

.weui-form-preview__hd:after {
	border: 0;
}

.c-prev-area {
	color: #666;
	font-size: 16px;
	text-align: left;
}

.weui-form-preview__bd {
	padding-top: 0;
	padding-bottom: 20px;
}

button.weui-form-preview__btn,.weui-form-preview__btn_default {
	font-size: 16px;
}

#form .weui-cell {
	align-items: flex-start;
}

.weui-form-preview__btn_primary {
	color: #01abde;
}

.weui-cell_vcode:before,.weui-cell_vcode:after {
	border-top: 1px solid #d9d9d9;
}

.weui-cell_vcode {
	line-height: 2.3
}

#c-add-adress .weui-cells {
	margin-top: 0;
}

#c-set-area {
	font-size: 22px;
	float: right;
	color: #aaa;
}

.c-direction:before {
	border: 0
}

.c-leftimg-rightall .c-esp-desc {
	width: 7.5rem;
}

.weui-navbar__item p {
	color: #fff;
}

.weui-cell:before {
	border-top: 0;
}

.fa-check-circle-o {
	color: #ccc;
}

#c-add-adress .c-c-b {
	color: #1abfff;
}

#c-change {
	font-size: 12px;
	text-align: left;
	padding-left: 15px;
	vertical-align: middle;
	line-height: 1rem;
	height: 1rem;
}

#xianjin .c-leftimg-rightall .weui-media-box__desc {
	width: 9rem;
}

#xianjin .c-leftimg-rightall .c-c-r {
	font-size: .8rem
}

#xianjin .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd
	{
	width: auto;
	height: auto;
}

#xianjin .page__hd {
	background: #fff;
	padding: .5rem 1rem;
	font-size: .7rem;
}

#xianjin .fa-check-circle,.fa-circle-o {
	position: absolute;
	right: 1.3rem;
	top: 2rem;
	font-size: 18px;
	color: #fc6973;
}

#xianjin .weui-media-box {
	padding: .6rem .6rem;
	padding-left: 1rem;
}

.spinner {
	width: 1.2rem;
	height: 1rem;
	font-size: 1rem;
	line-height: 1rem;
	vertical-align: middle;
	background: #ddd;
	margin-right: 3px;
	text-align: center;
	color: #666
}

#spinner {
	font-size: 14px;
}

#xianjin .price {
	position: absolute;
	left: 1rem;
	top: .9rem;
	font-size: 1rem;
	color: #fc6973;
}

#xianjin .price-big {
	font-size: 1.3rem;
}

#xianjin .coupon-detail {
	position: absolute;
	left: 6rem;
	top: 1rem;
	font-size: 1rem;
	color: #fff;
	line-height: .7rem;
}

#xianjin .coupon-detail p.coupon-detail-big {
	font-size: .7rem;
	margin-bottom: 5px;
}

#xianjin .coupon-detail p {
	color: #fff;
	text-align: left;
	font-size: .6rem;
}

#payMoney,#daizhif {
	font-size: .6rem
}

#payMoney {
	font-size: .7rem;
}

.c-leftimg-rightall .weui-media-box__desc {
	width: auto;
}

.weui-form-preview__btn_primary .fa-check-circle-o {
	color: #01abde;
}

.c-tags .weui-badge {
	margin-right: .8rem;
	min-width: 2rem;
}

.weui-form-preview {
	margin-bottom: 5px;
}

.c-tow-line .c-tow-line-r {
	position: initial;
}

#outer {
	padding-top: 44px;
	padding-bottom: 47px;
	overflow: auto;
	box-sizing: border-box;
	overflow: auto;
	position: relative;
}

#twoTab .weui-navbar {
	z-index: 992;
	position: fixed;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 46px;
}

#twoTab .weui-navbar-down {
	border-top: 0;
}

.c-tags .weui-badge {
	margin-bottom: 7px;
	background: #fff;
	border: 1px solid #ff4040;
}

.c-tags .c-badge-red {
	color: #ff4040;
}

.c-fivemin {
	color: #faa519;
	text-align: center;
	height: 2rem;
	width: 100%;
	border-top: 1px solid #eee;
	font-size: .6rem;
	position: fixed;
	bottom: 1.3rem;
	background: #fff;
}

@media screen and (min-width:321px) {
	.c-fivemin {
		bottom: 1.1rem;
	}
}

@media screen and (min-width:376px) {
	.c-fivemin {
		bottom: .9rem;
	}
}

.c-bottom-area {
	padding-bottom: 4rem;
}

.weui-panel__bd {
	background: #eee;
}

.c-bottom-area .weui-panel__bd {
	background: #fff;
}
/* 所在地区 */
.weui-navbar__item.weui-bar__item_on {
	background-color: #09b6f2;
	color: #fff;
}

.weui-cells_form .weui-cell__ft {
	height: 1rem;
}

#chooseErea input {
	font-size: 17px;
	width: 100%;
}

.c-myinfo .weui-cell__hd {
	width: 4.5rem;
}

.weui-picker-modal .picker-items {
	font-size: .8rem;
}

.c-buynow {
	position: absolute;
	bottom: 0;
	left: 37%;
	width: 4rem;
	height: 4rem;
	display: inline-block;
	z-index: 989;
}

.weui-dialog {
	background: #fff;
}

/*登陆弹出框*/
.weui-dialog .weui-dialog__btn_primary {
	background: #1abfff;
	width: 5rem;
	margin: 0 auto;
	height: 1.8rem;
	color: #fff;
	border-radius: 5px;
	margin-bottom: 1rem;
	line-height: 1.8rem;
	font-size: .8rem;
}

.weui-dialog .weui-dialog__btn_primary {
	background: #fff;
	border: 1px solid #0066b3;
	color: #0066b3;
	border-radius: 1rem;
}

#iosDialog1 .weui-cell {
	padding: 0;
}

#iosDialog1 .weui-cell__bd {
	background: #eee;
	padding: 5px 0 5px 5px;
	font-size: .7rem;
}

#iosDialog1 .weui-vcode-btn {
	border: 0;
	background: #aaa;
	color: #fff;
	font-size: .7rem;
	border-radius: 3px;
	height: 1.4rem;
	line-height: 1.4rem;
	font-size: .6rem;
}

#iosDialog1 .weui-cell_vcode {
	margin-top: 5px;
}

#iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after {
	border: 0
}

#iosDialog1 button.c-c-b {
	background: #0066b3;
}

.js_dialog input.weui-input {
	color: #333;
}

.buyNote {
	float: right;
	margin-right: 15px;
}

.weui-tab {
	height: auto;
}

.weui-dialog {
	overflow: visible;
}

#c-login-close,#c-login-close2,#c-zhifu-close{
	position: absolute;
	top: -1rem;
	right: -1rem;
	color: #fff;
}

#c-intro-wrapper {
	padding: 0 5px;
}

.weui-cells:before,.weui-cells:after {
	border: 0;
}
/* 弹出框美化 */
.weui-skin_android .weui-dialog__bd:first-child{text-align: center;}
.weui-skin_android .weui-dialog__ft{text-align: center;padding: 0 1.8em .7em 1.4em;}
.weui-skin_android .weui-dialog__btn:last-child{line-height: 1.5rem;width: 4rem;height: 1.5rem;}
.c-panel-image{margin:0 auto;}
</style>

</head>
<body>

	<div class="container">
		<div class="titleBar" id="dingdan-title">
			<div class="titleBar-back" onclick="toHome()">
				<!-- <i class="fa fa-angle-left"></i>返回 -->
			</div>
			<div class="titleBar-text am-text-truncate">建设银行“天津惠”专属活动</div>
		</div>

		<div class="titleBar" id="xianjin-title" style="display: none;">
			<div class="titleBar-back">
				<!-- <i class="fa fa-angle-left" aria-hidden="true"></i>返回 -->
			</div>
			<div class="titleBar-text am-text-truncate">现金券</div>
		</div>


		<!-- 列表内容 -->
		<div class="c-content" style="padding-bottom: 60px" id="lieb">
			<div class="weui-panel__bd picTxtList c-m-b-10">
				<div class="weui-media-box weui-media-box_text" id="prodDiv">

				</div>
			</div>

			<div class="weui-panel__bd c-leftimg-rightall">
				<div id="datalistDiv"></div>
			</div>
		</div>

		<!-- 标签栏 -->
		<div class="weui-tab">
			<div class="weui-navbar weui-navbar-down">
				<img src="../assets/images/buynow.png" class="c-buynow"
					id="buyButton" />
				<!-- <div class="weui-navbar__item weui-bar__item_on">首页</div> -->
				<div class="weui-navbar__item" onclick="goPage('indexPage')">首页</div>
				<div class="weui-navbar__item" onclick="goPage('myInfo')">个人中心</div>
			</div>
		</div>


	</div>

	<!-- 登录框 -->
	<div class="js_dialog" id="iosDialog1"
		style="opacity: 1; display: none;">
		<div class="weui-mask"></div>
		<div class="weui-dialog">
			<i class="weui-icon-cancel" id="c-login-close"></i>
			<div class="weui-dialog__bd c-f-s-16"
				style="color: #333; padding-top: 1.7em;">

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
						<div class="weui-cell__ft" style="height: 1.5rem;">
							<button id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
						</div>
					</div>

				</div>
			</div>
			<div class="weui-dialog__ft c-btn-noline" style="padding-top: 10px;">
				<a href="javascript:;"
					class="weui-dialog__btn weui-dialog__btn_primary c-c-b2"
					style="line-height: 1.4rem; height: 1.4rem; flex: none;">绑定</a>
			</div>
		</div>
	</div>
	
		<!-- 支付框 -->
	<div class="js_dialog" id="iosDialogZF"
		style="opacity: 1; display: none;">
		<div class="weui-mask"></div>
		<div class="weui-dialog">
			<i class="weui-icon-cancel" id="c-zhifu-close"></i>
			<div class="weui-dialog__bd c-f-s-16"
				style="color: #333; padding-top: 1.7em;">
				请于3分钟之内完成支付，超时将自动取消订单
			</div>
			<div class="weui-dialog__ft c-btn-noline" id="gbuy">
				<a href="javascript:;"
					class="weui-dialog__btn_primary"
					style="line-height: 1.4rem; height: 1.4rem; flex: none;margin-top:15px;">去支付</a>
			</div>
		</div>
	</div>

	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/fastclick.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/jquery-weui.min.js"></script>
	<script src="${stax}/assets/js/common.js"></script>
	<script type="text/javascript">
		var bid = "${bid}";
		if (bid) {
			localStorage.setItem("bankuid", bid);
		}
		var userId ="${userId}";
		if(userId){
			localStorage.setItem("userId", userId);
		}
		var prodId ="${pid}";
		if(prodId){
			localStorage.setItem("prodId", prodId);
		}
		var bankId = "${bankId}";
		if(bankId){
			localStorage.setItem("bankId", bankId);
		}
		var homeUrl ="${indexUrl}";
		if(homeUrl){
			localStorage.setItem("homeUrl", homeUrl);
		}
		$(function() {
			$
					.ajax({
						type : "GET",
						url : "${ctx}/qrqmlogin/showDetail.json",
						data : "pid="+localStorage.getItem("prodId"),
						success : function(resp) {
							var pdiv = ' <p class="c-panel-image" style="width:90%;"><img src="'+resp.prodUrl.picUrlBig+'"></p>'
									+ '<div class="weui-flex c-goods-details" style="padding-bottom: 4px;background: #fff;">'
									+ '<div class="c-list-left-div">'
									+ '<h4 class="weui-media-box__title">'
									+ resp.huiTuanProduct.prodName
									+ '</h4>'
									+ '<p class="weui-media-box__desc"><span class="c-c-r c-f-s-18">￥'
									+ resp.huiTuanProduct.prodPrice
									+ '元</span>&nbsp;&nbsp;&nbsp;&nbsp;<span class="weui-media-box__desc" style="text-decoration: line-through;display: inline-block;margin-left: 10px">￥'
									+ resp.huiTuanProduct.oldPrice
									+ '元</span></p>'
									+ '<ul class="weui-media-box__info">'
									+ '<li class="weui-media-box__info__meta">已售：'
									+ resp.sellNum
									+ '件</li>'
									+ '</ul>'
									+ '</div></div><div class="weui-flex c-goods-details" style="padding-top:4px;margin-top:8px;background: #fff;">'
									+ '<div class="c-panel-image">'
									+ '<p>'
									+ resp.huiTuanProduct.descr
									+ '</p>'
									+ '</div></div>';
							$('#prodDiv').append(pdiv);

						},
						error : function(er) {
							loading.hide();
							console.log(er);
						}
					});

			//图片信息加载完毕，对用户是否登录进行检查
			$("#buyButton").click(
					function() {
						$.ajax({
							type : "GET",
							url : "${ctx}/qrqmlogin/checkUserLogin.json",
							data : "bid="
									+ encodeURIComponent(localStorage
											.getItem("bankuid")),
							success : function(resp) {
								var num = resp.num;
								if (num == "-1") {
									window.location.href = "${ctx}/appnote";
								}
								if (num == "0") {
									$("#iosDialog1").show();
								}
								if (num == "1") {
									localStorage.setItem("userId", resp.uid);
									checkBuyNum();
								}

							},
							error : function(er) {
								loading.hide();
								console.log(er);
							}
						});
					});
		});

		$("#c-login-close,#c-login-close2").on("click", function() {
			$("#iosDialog1,#iosDialog2").hide();
		});
		$("#c-zhifu-close").click(function(){
			$("#iosDialogZF").hide();
		});
		$(".weui-dialog__btn").click(function() {
			register();
		});
		/*验证手机号*/
		function checkPhone(num) {
			var phone = parseInt(num);
			var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
			if (!reg.test(phone)) {
				weui.toast('请输入正确的手机号码', {
					duration : 1000,
					className : 'toast-warn',
					callback : function() {
						//document.querySelector("#phone").value = "";
					}
				});
				return false;
			}
			return true;
		}

		/*验证手机号*/
		$(document).on("input propertychange", "#phone", function(e) {
			if (e.type === "input" || e.orignalEvent.propertyName === "value") {
				this.value = this.value.replace(/\D/gi, "");
				if (this.value.length == 11) {
					if (checkPhone(this.value)) {
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
					var loading = weui.loading('正在加载...'); //loading
					$.ajax({
						type : "GET",
						url : "${ctx}/qrqmlogin/qrqmGetCode.json",
						data : "phone=" + $('#phone').val()+ "&bid="
						+ encodeURIComponent(localStorage.getItem("bankuid")) + "&r="
								+ Math.random(),
						success : function(resp) {
							loading.hide();
							loading.hide();
							if (resp.msg != "") {
								weui.alert(resp.msg);
								$("#iosDialog1").hide();
								initTimer();
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
							loading.hide();
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
			localStorage.setItem("phone", phone);
			var ccode = $('#ccode').val();
			if (!checkPhone(phone))
				return;
			if (!ccode) {
				weui.toast('请输入验证码', {
					duration : 1000,
					className : 'toast-warn',
					callback : function() {
					}
				});
				return;
			}
			var loading = weui.loading('正在加载...'); //loading
			$.ajax({
				type : "GET",
				url : "${ctx}/qrqmlogin/checkQRQMCode.json",
				data : "phone=" + phone + "&code=" + ccode + "&bid="
						+ encodeURIComponent(localStorage.getItem("bankuid"))+"&prodId="+localStorage.getItem("prodId")
						+ "&r=" + Math.random(),
				success : function(resp) {
					loading.hide();
					if (resp.msg != "") {
						weui.alert(resp.msg);
						$("#iosDialog1").hide();
						initTimer();
					}
					if (resp.uid) {
						localStorage.setItem("userId", resp.uid);
					}
				},
				error : function(er) {
					loading.hide();
					console.log(er);
				}
			});
		}

		function checkLength(obj, n) {
			//obj.value = obj.value.replace(/\D/g,'')
			if (obj.value.length > n) {
				obj.value = obj.value.substr(0, n);
			}
		}
		$("#gbuy").click(function(){
			$("#iosDialogZF").hide();
			goBuy();
		});
		
		//查看用户是否还有购买次数
		function checkBuyNum(){
			var loading = weui.loading('正在加载...'); //loading
			$.ajax({
				type : "POST",
				url : "${ctx}/qrqmlogin/checkBuyNum.json",
				data : "uid=" + encodeURIComponent(localStorage.getItem("userId"))+"&pid="+localStorage.getItem("prodId")
						+ "&r=" + Math.random(),
				success : function(resp) {
					loading.hide();
					if (resp.errMsg != "") {
						weui.alert(resp.errMsg);
					}
					if(resp.success){
						$("#iosDialogZF").show();
					}
				}
			});
		}
		var oos = "";
		//进行支付
		function goBuy() {
			var loading = weui.loading('正在加载...'); //loading
			$.ajax({
				type : "POST",
				url : "${ctx}/qrqmlogin/goBuy.json",
				data : "uid=" + encodeURIComponent(localStorage.getItem("userId"))+"&pid="+localStorage.getItem("prodId")
						+ "&r=" + Math.random(),
				success : function(resp) {
					loading.hide();
					if (resp.errMsg != "")
						weui.alert(resp.errMsg);
					else if (resp.payUrl) {
						oos = resp.payUrl;
// 						MBC_PAY();
						MBS_DIRECT_PAY();
					}
				},
				error : function(er) {
					loading.hide();
					console.log(er);
				}
			});
		}

		/***建行付款**/
// 		function MBC_PAY() {
// 			if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
// 				//苹果端
// 				window.location="/mbcpay.b2c";
// 			} else if (/(Android)/i.test(navigator.userAgent)) {
// 			   //安卓端
// 				window.mbcpay.b2c(oos);
// 			} else {
// 			  //pc端
// 			   alert('请到app上购买！');
// 			}; 
// 		}
// 		var oos = "";
// 		function MBC_PAYINFO() {
// 			return "{" + oos + "}";
// 		}

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




		/**按返回键**/
		/* function toHome(){
			$.ajax({
				type: "GET",
				url: "${ctx}/qrqmlogin/gotoDetailsPage.json",
				data: "bid="+encodeURIComponent(localStorage.getItem("bankuid")),
				success: function(resp){
					window.location.href ="${ctx}"+resp.indexUrl;
				}
			});
		}
		/**首页 和 个人中心**/
		function goPage(e){
			if(e == "myInfo"){
				var loading = weui.loading('正在加载...');	//loading
				gomycenter();
// 				window.location.href = '${ctx}/mycenter/personal.do' + (localStorage.getItem("userId") ? "?userId="+encodeURIComponent(localStorage.getItem("userId")) : "");
			}
			if(e == "indexPage"){
				var loading = weui.loading('正在加载...');	//loading
				window.location.href ="${ctx}/tjhui/tjhindex.do?user_id="+encodeURIComponent(localStorage.getItem("bankuid"))+"&hflag=CCBWebView";
			}
		}
	</script>
</body>
</html>
