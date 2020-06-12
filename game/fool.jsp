<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>愚人节</title>
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
<link rel="stylesheet" href="${stax}/assets/css/fool/index.css">
<link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css">
<style>
.box {
	width: 100%;
	height:27.48rem;
	background: url(${stax}/assets/images/fool/background.jpg) no-repeat
		100% 100%;
	background-size: 100% 100%;
	padding-top:4.2rem;
}

.container {
	width: 85%;
	height: 2.58rem;
	margin: auto;
	background: url(${stax}/assets/images/fool/clown.png) no-repeat 100%
		100%;
	background-size: 100% 100%;
	margin-top: 0.3rem;
	text-align: center;
	padding-top: 2.5rem;
}

.cont {
	width:85%;
	margin: auto;
	background: url(${stax}/assets/images/fool/cont.png) no-repeat 100%
		100%;
	background-size:100% 100%;
	height:4rem;
	margin-top: 0.3rem;
	text-align: center;
	padding-top: 0.5rem;
	padding-bottom:0.5rem;
	position:relative;
}
.countdown{
	font-size:0.3rem;
	color:#8A342A;
	font-family:FZDaHei-B02S;
	width:0.7rem;
	height:0.8rem;
	border-radius:0.5rem;
	text-align:center;
	line-height:0.9rem;
	background:#fff;
	margin-left:4.8rem;
	background: url(${stax}/assets/images/fool/watch.png) no-repeat 100%
		100%;
	background-size:inherit;
	position:absolute;
	top:0.1rem;
}

.container .start div,.cont .sava {
	width: 2.68rem;
	height:0.94rem;
	line-height: 0.7rem;
	margin: auto;
	background: url(${stax}/assets/images/fool/start.png) no-repeat 100%
		100%;
	background-size: 100% 100%;

	font-size: 0.36rem;
	color: #8A342A;
	font-weight:bold;
}
.container .start div{
	margin-top:0.8rem;
}
.cont .start2 div{
	
	bottom:1.5rem;
	left:0;
	right:0;
	margin:auto;
}

.prize .title,.banner .title {
	position:relative;
	width: 2.56rem;
	text-align: center;
	height:0.75rem;
	line-height:0.75rem;
	font-size: 0.36rem;
	color: #fff;
	margin: auto;
	display:flex;
	align-items:center;
	font-weight:bold;
	background:#E04A25;
	border-radius:0.5rem;
	justify-content:center;
}
.prize .title img,.banner .title img{
	width:0.24rem;
}
.prize .title span,.banner .title span{
	margin-left:0.1rem;
	margin-right:0.1rem;
}
.banner .title {
	margin-top: 0.3rem;
	position:relative;
	z-index:111;
}
.swiper-container{
	margin-top:-0.35rem;
}

.swiper-button-prev {
	background-image: url(${stax}/assets/images/fool/btnLeft.png);
}

.swiper-button-next {
	background-image: url(${stax}/assets/images/fool/btnRight.png);
}
.prizeList li {
	position: relative;
	width:2rem;
	height:0.94rem;
	padding:0 0.2rem;
	background:url(${stax}/assets/images/fool/title.png) no-repeat 100% 100%;
	background-size:100% 100%;
	margin-bottom:0.3rem;
	display:flex;
	align-items:center;
	justify-content:center;
	
}
.banner .title{
	width:3.4rem;
}
.weui-dialog {
	width: 82%;
	max-width: 100%;
	overflow: visible;
}

</style>
</head>
<body>
	<c:if test="${isapp!=null}">
		<div class="titleBar">
					<div class="titleBar-back" onclick="toHome()">
						<img src="${stax}/assets/images/history.png" />&nbsp;返回
					</div>
			<div class="titleBar-text am-text-truncate">愚人节</div>
		</div>
	</c:if>
	
	<div class="box">
		
		<div class="slide renav">
<!-- 			<ul> -->
<!-- 				<li>用户17695100024获得饿了么年卡</li> -->
<!-- 				<li>用户17695100024获得饿了么年卡</li> -->
<!-- 				<li>用户17695100024获得饿了么年卡</li> -->
<!-- 				<li>用户17695100024获得饿了么年卡</li> -->
<!-- 				<li>用户17695100024获得饿了么年卡</li> -->
<!-- 			</ul> -->
		</div>
	
		<!-- 未答题 -->
		<div class="container">
			<div class="start">
				<div>开始答题</div>
			</div>
			<p class="num">
				今日还剩：<span>${num}</span>次
			</p>
		</div>

		<!-- 进行答题 -->
		<div class="cont" style="display: none;">
			<div class="countdown" id="time"></div>
			<p class="sum">
<!-- 			<span>1</span>/<span>3</span> -->
			</p>
			<div class="start2">
<!-- 				<p class="topic">手机银行可以替别我二高危儿岗位二工位而过温柔个人各位而高危儿个为</p> -->
<!-- 				<ol> -->
<!-- 					<li><input type="radio" name="radio" value="" /> <span>对</span></li> -->
<!-- 					<li><input type="radio" name="radio" value="" /> <span>错</span></li>							 -->
<!-- 				</ol> -->
								
			</div>
			<div class="sub">
				<div class="sava">提交答案</div>
				*全部答对，即可参与抽奖
			</div>
		</div>
		<div class="top">
			<div class="explain">
				<img src="${stax}/assets/images/fool/rule.png" />
			</div>
			<div class="record">
				<img src="${stax}/assets/images/fool/prize.png" />
			</div>
		</div>
		<div class="prize">
			<div class="title">
				<img src="${stax}/assets/images/fool/star.png" />
				<span>精美大奖</span>
				<img src="${stax}/assets/images/fool/star.png" />
			</div>
			<div class="question1">
				<img src="${stax}/assets/images/fool/question.png" />
				<div class="userCont Cont1">
					<p>“津元宝”是建行手机银行“天津惠”平台的通用货币，您可通过参加丰富多彩的活动，赚取“津元宝”，换取缤纷好礼！
						<div class="arrows"></div>
					</p>
				</div>
			</div>
			<div class="question2">
				<img src="${stax}/assets/images/fool/question.png" />
				<div class="userCont Cont2">
					<p>请登录建行手机APP，点击悦享生活-天津惠-专享活动，支付0.01元领取奖品。奖品券码将以短信的形式发送，也可以在个人中心-我的专享活动中查看。
						<div class="arrows"></div>
					</p>
				</div>
			</div>
			<div class="question3">
				<img src="${stax}/assets/images/fool/question.png" />
				<div class="userCont Cont3">
					<p>请登录建行手机APP，点击悦享生活-天津惠-专享活动，支付0.01元领取奖品。奖品券码将以短信的形式发送，也可以在个人中心-我的专享活动中查看。
						<div class="arrows2"></div>
					</p>
				</div>
			</div>
			<div class="question4">
				<img src="${stax}/assets/images/fool/question.png" />
				<div class="userCont Cont4">
					<p>请登录建行手机APP，点击悦享生活-天津惠-专享活动，支付0.01元领取奖品。奖品券码将以短信的形式发送，也可以在个人中心-我的专享活动中查看。
						<div class="arrows2"></div>
					</p>
				</div>
			</div>
			<ul class="prizeList">
				
				<li>
					<p>爱奇艺VIP黄金会员年卡</p>
				</li>
					
				<li>
					<p>猫眼电影50元兑换券</p>
				</li>
				<li>
					<p>曹操专车20元代金券</p>
				</li>
				<li>
					<p>津元宝</p>
				</li>
			</ul>
		</div>


		<div class="banner" style="margin-top:1rem;">
			<div class="title">
				<img src="${stax}/assets/images/fool/star.png" />
				<span>如何领取奖品</span>
				<img src="${stax}/assets/images/fool/star.png" />
			</div>

			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<p>1.登录建行手机银行，点击悦享生活</p>
						<img src="${stax}/assets/images/fool/banner1.jpg" />
						
					</div>
					<div class="swiper-slide">
						<p>2.进入悦享生活，点击天津惠</p>
						<img src="${stax}/assets/images/fool/banner2.jpg" />
						
					</div>
					<div class="swiper-slide">
						<p>3.选择专享活动，即可领取相关奖品</p>
						<img src="${stax}/assets/images/fool/banner3.jpg" />
						
					</div>
				</div>
				<div class="swiper-button-prev swiper_btn"></div>
				<div class="swiper-button-next swiper_btn"></div>
			</div>
		</div>
		<div class="downLoad">
			<p>更多精彩请到APP查看...</p>
			<div>点击下载</div>
		</div>
	</div>

	<!-- 活动介绍 -->
	<div class="active">
		<div class="activeCont">
			<p class="activeTitle"
				style="color: #333; font-size: 0.36rem; text-align: center; margin: 2% 0%;">活动说明</p>
			<i class="weui-icon-cancel c-login-close"></i>
			<div class="txt">
				<p>1、活动时间：2019年3月28日至2019年4月2日</p>
				<p>2、活动内容：</p>
				<p>（1）本次活动只限天津用户参与。</p>
				<p>（2）参与活动时，请务必保证注册天津惠手机号与注册建行手机银行号码保持一致，以保证奖品可以顺利领取使用，活动过程中无法修改手机号码。</p>
				<p>（3）每位用户每日可参与两次答题，如全部答对可以参与抽奖，如果有一题答错，则闯关终止。</p>
				<p>（4）参与活动获得相关奖品可通过页面相关提示进入建行手机银行天津惠进行领取使用。</p>
				<p>（5）活动奖品领取时间截至2019年4月15日23：59：59，逾期按作废处理。</p>
				<p>（6）奖品数量有限，先到先得。</p>
				<p>4、活动声明： 活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。</p>
				<p>5、本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。</p>
				<p>6、本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。</p>
			</div>
			<div class="activeBtn">我知道了</div>
		</div>
	</div>

	<!-- 中奖列表-->
	<div class="shop">
		<div class="prizeCont">
			<p class="prizeTitle"
				style="color: #333; font-size: 0.36rem; text-align: center; margin: 2% 0%;">中奖纪录</p>
			<i class="weui-icon-cancel c-login-close"></i>
			<div class="shopList">
				<div>
					<p class="left">中奖时间</p>
					<p class="right">中将奖品</p>
				</div>
				<ul class = "myprize">
<!-- 					<li> -->
<!-- 						<p class="l">2018-03-05 23:00:00</p> -->
<!-- 						<p class="r">二等奖“话费半价购”</p> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<p class="l">2018-03-05 23:00:00</p> -->
<!-- 						<p class="r">二等奖“话费半价购”</p> -->
<!-- 					</li> -->
				</ul>
			</div>
			<div class="prizeBtn">我知道了</div>
		</div>
	</div>

	<!-- 登录 -->
	<div class="js_dialog" id="iosDialog1"
		style="opacity: 1; display: none;">
		<div class="weui-mask"></div>
		<div class="weui-dialog">
			<i class="weui-icon-cancel c-login-close" id="c-login-close"></i>
			<div class="weui-dialog__bd c-f-s-16"
				style="color: #333; padding-top: 1.4em; font-size: 0.36rem;">

				请绑定手机号码
				<div class="weui-cells weui-cells_form">

					<div class="weui-cell">
						<div class="weui-cell__bd">
							<input id="phone" class="weui-input" type="tel" maxlength="11"
								pattern="[0-9]*" placeholder="请输入您的手机号码">
						</div>
					</div>
					<div class="weui-cell weui-cell_vcode">
						<div class="weui-cell__bd">
							<input class="weui-input" type="text" pattern="[0-9]*"
								id="ccode" maxlength="4" placeholder="请输入验证码">
						</div>
						<div class="weui-cell__ft">
							<button id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
						</div>
					</div>

				</div>
			</div>
			<div class="weui-dialog__ft">
				<a href="javascript:;"
					class="weui-dialog__btn weui-dialog__btn_primary c-c-b">注册</a>
			</div>
		</div>
	</div>

	<!--提示框  -->
	<div class="hint1" style="display: none;">
		<div class="hintCont">
			<i class="weui-icon-cancel c-login-close"></i>
			<div class="txt">很遗憾，答题失败，不要灰心，再接再厉哟~</div>
			<div class="hintBtn">好的</div>
		</div>
	</div>

	<div class="hint2" style="display: none;">
		<div class="hintCont">
			<i class="weui-icon-cancel c-login-close"></i>
			<div class="txt">很遗憾，答题失败，不要灰心，再接再厉哟~</div>
			<div class="hintBtn">我知道了</div>
			<p>*使用方法详见活动下方</p>
		</div>
	</div>

	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/rem.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/amazeui.swiper.min.js"></script>
	
	<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
	<script src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
	
	
	<script>
		var msg = "${msg}";
		if (msg && msg != "") {
			$(".hint1 .txt").html(msg)
			$(".hint1").show();
		}
		var od = "${od}";
		var bwid = "${bwid}";
		//     var prList = "${prList}";
		var num = $
		{
			num
		};
		var isapp = "${isapp}";
		
		if (od == ""&&isapp=="") {
			msg = "请用微信打开链接！";
			weui.alert(msg);
		}

		var addr = "${addr}";
		var cango = false;
		if (addr) {
			if (addr.indexOf('天津') > -1) {
				cango = true;
			}
		}
		//加载中奖信息
		findUserPrize();
		if(isapp==""){
			shareInit();
		}
		
		var mySwiper = new Swiper('.swiper-container', {
			prevButton : '.swiper-button-prev',
			nextButton : '.swiper-button-next',
		})
		
		var $this = $(".renav"); 
		var scrollTimer; 
		$this.hover(function(){ 
			clearInterval(scrollTimer); 
		},function(){ 
			scrollTimer = setInterval(function(){ 
				scrollNews( $this ); 
			}, 2000 ); 
		}).trigger("mouseout"); 
		
		function scrollNews(obj){ 
		var $self = obj.find("ul:first"); 
		var lineHeight = $self.find("li:first").height(); 
		$self.animate({ "margin-top" : -lineHeight +"px" },600 , function(){ 
		$self.css({"margin-top":"0px"}).find("li:first").appendTo($self); 
		}) }
		

		/* 开始答题 */
		$(".container .start div").click(function() {
			
			if (msg != "") {
				$(".hint1 .txt").html(msg)
				$(".hint1").show();
				return;
			}
			if (bwid && bwid != "") {
				//校验次数
				if (num <= 0) {
					$(".hint1 .txt").html("很遗憾，您今日的答题次数已上限，请明天再来~")
					$(".hint1").show();
					return;
				}
				//加载答题数据
				//$(".cont").show();
				getques();
			} else {
				getCode();
				$("#iosDialog1").show();
			}

			/* 答题开始 */
			/* $(".container").hide();
			$(".cont").show(); */
		})

		/* 活动说明 */
		$(".explain img").click(function() {
			$(".active").show();
			$(".box").css("position", "fixed");
		});
		$(".c-login-close , .activeBtn").click(function() {
			$(".active").hide();
			$(".box").css("position", "");
		});

		/* 中奖记录 */
		$(".record img").click(function() {
			findMyPrize();
			$(".shop").show();
			$(".box").css("position", "fixed");
		});
		$(".c-login-close , .prizeBtn").click(function() {
			$(".shop").hide();
			$(".box").css("position", "");
		});

		/* 点击下载 */
		$(".downLoad div").click(function() {
			location.href = "http://m.ccb.com/cn/mobilev3/home/include/download.html?from=singlemessage&isappinstalled=0";
		});

		//滚动加载方法
		var timers;
		$('.shopList ul')
				.scroll(
						function() {
							//当时滚动条离底部60px时开始加载下一页的内容
							if (($(this)[0].scrollTop + $(this).height() + 60) >= $(this)[0].scrollHeight) {
								clearTimeout(timers);
								//这里还可以用 [ 延时执行 ] 来控制是否加载 （这样就解决了 当上页的条件满足时，一下子加载多次的问题啦）
								timers = setTimeout(function() {
									findMyPrize();
									//console.log("滚动刷新")

								}, 300);
							}
						});

		/*验证手机号*/
		function checkPhone(num) {
			var phone = parseInt(num);
			var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
			if (!reg.test(phone)) {
				$(".hint1 .txt").html("请输入正确的手机号");
				$(".hint1").show();
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

		//发送短信
		var bClick = false;
		var timer;
		function getCode() {
			/*验证码倒计时*/
			var oBtn = document.getElementById("bpcodebtn");
			oBtn.onclick = function() {
				if (bClick == false && checkPhone($("#phone").val())) {
					$('#bpcodebtn').attr("disabled", true);
					bClick = true;
					$.ajax({
						type : "GET",
						url : "${ctx}/foolsday/getcode.json",
						data : "phone=" + $('#phone').val() + "&od="
								+ encodeURIComponent(od) + "&cango=" + cango
								+ "&r=" + Math.random(),
						success : function(resp) {
							bClick = false;
							
							if (resp.msg && resp.msg != "") {
								$('#bpcodebtn').attr("disabled", false);
								$(".hint1 .txt").html(resp.msg);
								$(".hint1").show();
								// 							$("#iosDialog1").hide();
							} else {
								$("#bpcodebtn").removeClass("c-c-b");
								$('#bpcodebtn').attr("disabled", true);
								var s = 60;
								timer = setInterval(function() {
									s--;
									oBtn.innerHTML = s + "秒后重发";

									if (s == 0) {
										initTimer();
										$('#bpcodebtn').attr("disabled", false);
									}
								}, 1000);
							}
						},
						error : function(er) {
							$('#bpcodebtn').attr("disabled", false);
							console.log(er);
						}
					});
				}
			};
		}

		function initTimer() {
			bClick = false;
			$('#bpcodebtn').attr("disabled", false);
			clearInterval(timer);
			$('#bpcodebtn').html("获取验证码").addClass("c-c-b");
		}

		$(".c-c-b").on("click", function() {
			register();
		})

		/**绑定手机**/
		var isHa = false;
		function register() {
			if (isHa)
				return;
			isHa = true;
			var phone = $('#phone').val();
			var ccode = $('#ccode').val();
			if (!checkPhone(phone)) {
				isHa = false;
				return;
			}
			if (!ccode) {
				isHa = false;
				$(".hint1 .txt").html("请输入验证码");
				$(".hint1").show();
			} else {
				$.ajax({
					url : '${ctx}/foolsday/register.json',
					type : 'post',
					data : 'phone=' + phone + '&code=' + ccode + '&od='
							+ encodeURIComponent(od) + '&r=' + Math.random(),
					success : function(resp) {
						isHa = false;
						if (resp.msg && resp.msg != "") {
							$(".hint1 .txt").html(resp.msg);
							$(".hint1").show();
							$('#ccode').val('');
							$('#phone').attr("disabled", true);

						} else {
							if (resp.bwid && resp.bwid != "") {
								bwid = resp.bwid;
								$('#phone').val('');
							}
							if (resp.num && resp.num != "") {
								num = resp.num;
								$(".num span").html(num);
							}
						}
						$("#iosDialog1").hide();
						
						
					},error:function(e){
						isHa = false;
						console.log(e);
					}
				});
			}
		}
		$('#c-login-close').click(function() {
			$("#iosDialog1").hide();
		})

		$(".hintBtn , .c-login-close").click(function() {
			$(".hint1").hide();
			$(".hint2").hide();
		})

		/*  */
		$(".question1").click(function() {
			$(".Cont1").toggle();
		})
		$(".question2").click(function() {
			$(".Cont2").toggle();
		})
		$(".question3").click(function() {
			$(".Cont3").toggle();
		})
		$(".question4").click(function() {
			$(".Cont4").toggle();
		})

		
		var daList;
		//获取答题数据
		var awid = 0;
		var isHb = false;
		var timeLeft;
		function getques() {
			if (isHb)
				return;
			isHb = true;
			$.ajax({
				url : '${ctx}/foolsday/getwomenques.json',
				type : 'post',
				data : 'bwid=' + encodeURIComponent(bwid) + '&r='
						+ Math.random(),
				success : function(resp) {
					isHb = false;
					if (resp.msg && resp.msg != "") {
						$(".hint1 .txt").html(resp.msg)
						$(".hint1").show();
						return;
					}
					if (resp.num && resp.num != "") {
						num = resp.num;
						awid = resp.awid;
						$(".num span").html(num);
					}
					if (resp.dataMaps && resp.dataMaps != "") {
						addData(resp.dataMaps);
						daList=resp.dataMaps;
						$(".countdown").html(resp.timeLeft+"s");
						timeLeft = resp.timeLeft
						countTime();
					}
				},error:function(e){
					isHb = false;
					console.log(e);
				}
			});
		}

		
		var dataList = [];
		var index = 0;
		var curId = 0;
		var count = 0;
		//加载问题和选项
		function addData(quesList) {
			$('.start2').empty();
			da = '<p class="topic">' + quesList[index].content + '</p>';
			if (quesList[index].id != curId) {
				curId = quesList[index].id;
			}
			da += '<ol>';
			for (var i = 0; i < quesList.length; i++) {
				if(quesList[i].id == curId){
				da += '<li ><input type="radio" name="radio" value="'+ quesList[i].opts +'" id = "'+quesList[i].optsId+
				'" isAnswer="'+quesList[i].isAnswer+'" answerId= "'+quesList[i].answerId+'"quesId="'+quesList[i].quesId+'"/> <span>'
							+ quesList[i].opts + '</span>' + '</li>';
				index++;
				}
				
			}
			da += '</ol>';
			$('.start2').append(da);
			
			$(".container").hide();
			$(".cont").show();
			count++;
			$(".sum").html('<span>'+count+'</span>/<span>3</span></p>');
			
			


		}

		$(".sava").on("click", function() {
			var obj = new Object();
			var opttext = $("input[name='radio']:checked").val();
			var optsid = $("input[name='radio']:checked").attr("id");
			var  isAnswer = $("input[name='radio']:checked").attr("isAnswer");
			var  answerId = $("input[name='radio']:checked").attr("answerId");
			var  quesId = $("input[name='radio']:checked").attr("quesId");
			
			
			if(typeof(opttext) == "undefined"){
				weui.alert("请勾选答案！");
				return;
			}
			
			
			
			obj.quesId = encodeURIComponent(quesId);
			obj.opts = opttext;
			obj.optsId = encodeURIComponent(optsid);
			obj.isAnswer = isAnswer;
			obj.answerId = encodeURIComponent(answerId);
			dataList.push(obj);
			if(isAnswer=="1"&&daList.length!=index){
				addData(daList);
			}else if(isAnswer=="1"&&daList.length==index){
				savadata(dataList);
				console.log("savadata-------"+JSON.stringify(dataList));
				dataList = [];
			}else{
				savaerrdata(dataList);
				console.log("savaerrdata-------"+JSON.stringify(dataList))
				dataList = [];
			}
			
		})
		
		
		
		//倒计时设置
		var t;
		function countTime() {
			document.getElementById('time').innerHTML = timeLeft+"S";
			t = setTimeout('countTime() ', 1000);

			if (timeLeft == 0) {
				window.clearTimeout(t);
				dataList = [];
				$(".container").show();
				$(".cont").hide();
				$(".hint1 .txt").html("很遗憾，您答题超时，要灰心，再接再厉哟~");
				$(".hint1").show();
				$('.start2').empty();
				
			}
			timeLeft = timeLeft - 1;

		}

		
		var sava =false;
		function savadata(dataList) {
			if(sava)return;
			sava = true;
			if(dataList.length<1){
				$(".hint1 .txt").html("答题信息有误!")
				$(".hint1").show();
				sava =false;
				return;
			}
			
			$.ajax({
				url : '${ctx}/foolsday/savaAnswer.json',
				type : 'post',
				data : 'bwid=' + encodeURIComponent(bwid) +
					'&answers=' + JSON.stringify(dataList) +
					'&r='+ Math.random(),
				success : function(resp) {
					sava = false;
					$(".container").show();
					$(".cont").hide();
					window.clearTimeout(t);
					
					dataList = [];
					index = 0;
					curId = 0;
					count = 0;
					if (resp.num && resp.num != "") {
						num = resp.num;
						$(".num span").html(num);
					}
					if (resp.errmsg && resp.errmsg != "") {
						$(".hint1 .txt").html(resp.errmsg)
						$(".hint1").show();
						return;
					}else if(resp.status&&resp.msg){
						if(resp.status=="0"){
							$(".hint1 .txt").html(resp.msg)
							$(".hint1").show();
						}else{
							$(".hint2 .txt").html(resp.msg)
							$(".hint2").show();
						}							
					}
				
				
					
				},error:function(e){
					sava = false;
					console.log(e);
				}
			});
		}

		
		
		
		var savab =false;
		function savaerrdata(dataList) {
			if(savab)return;
			savab = true;
			if(dataList.length<1){
				$(".hint1 .txt").html("答题信息有误!")
				$(".hint1").show();
				savab =false;
				return;
			}
			
			$.ajax({
				url : '${ctx}/foolsday/savaAnswerError.json',
				type : 'post',
				data : 'bwid=' + encodeURIComponent(bwid) +
					'&answers=' + JSON.stringify(dataList) +
					'&r='+ Math.random(),
				success : function(resp) {
					savab = false;
					$(".container").show();
					$(".cont").hide();
					window.clearTimeout(t);
					
					dataList = [];
					index = 0;
					curId = 0;
					count = 0;
					
					if (resp.num && resp.num != "") {
						num = resp.num;
						$(".num span").html(num);
					}
					if (resp.errmsg && resp.errmsg != "") {
						$(".hint1 .txt").html(resp.errmsg)
						$(".hint1").show();
						return;
					}else{
						$(".hint1 .txt").html("呃呃，蟹蟹参与，请继续努力！")
						$(".hint1").show();
					}
	
				
					
				},error:function(e){
					savab = false;
					console.log(e);
				}
			});
		}		
		
		
		
		
		
		
		
		//中奖记录查询
		var isprize = false;
		var offset = 0;
		function findMyPrize(){
			if(isprize) return;
			isprize = true;
			if (msg != "") {
				$(".hint1 .txt").html(msg)
				$(".hint1").show();
				isprize = false;
				return;
			}
			$.ajax({
				url : '${ctx}/foolsday/findprize.json',
				type : 'post',
				data : 'bwid=' + encodeURIComponent(bwid) +
						'&offset=' +offset+
						'&r='+ Math.random(),
				success : function(resp) {
					isprize = false;
					if (resp.dataList && resp.dataList != "") {
						var d="";
						for(var i=0;i<resp.dataList.length;i++){
							d+='<li>'+
								'<p class="l">'+resp.dataList[i].createTime+'</p>'+
								'<p class="r">'+resp.dataList[i].name+'</p>'+
								'</li>';
							offset++;
						}
						$(".myprize").append(d);
					
					
					}
					
					
				},error:function(e){
					isprize = false;
					console.log(e);
				}
			});
			
		}
		
		
		
		function findUserPrize(){
			$.ajax({
				url : '${ctx}/foolsday/findUserPrize.json',
				type : 'get',
				success : function(resp) {
					isprize = false;
					if (resp.paList && resp.paList != "") {
						var d="<ul>";
						for(var i=0;i<resp.paList.length;i++){
							d+='<li>用户'+resp.paList[i].phone+'获得'+resp.paList[i].name+'</li>'													
						}
						d+='</ul>';
						$(".renav").append(d);
					}
					
				},error:function(e){
					isprize = false;
					console.log(e);
				}
			});
		}
		
		
		
		
		
		
		
	    var indexUrl = localStorage.getItem("homeUrl");
	    
	    function toHome(){
	    	window.location.href = "${ctx}/tjhui"+indexUrl;
	    }
	    
	    
	  //************************ 分享 **********************************
		
		var ta =  "【愚人节】逗你玩的冷知识大赛";   //标题
		var de =   "我真不是逗你玩 by 建行天津"; //内容
		var imga = "http://tianjin.boyaunite.com/assets/images/fool/yurenjie-mini.jpg"; //图片
	    
	    
		function shareInit() {
//	 		var loading = weui.loading('loading', {className : 'loading'}); //loading
			$.ajax({
				type : "POST",
				url : "${ctx}/wei/resendrelay.json",
				data : "in=1&turl=" + (window.location.href + '').split("&").join('%26'),
				success : function(resp) {
					wx.config({
						debug : false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
						appId : resp.appId, // 必填，公众号的唯一标识
						timestamp : resp.timestamp, // 必填，生成签名的时间戳
						nonceStr : resp.nonceStr, // 必填，生成签名的随机串
						signature : resp.signature,// 必填，签名，见附录1
						jsApiList : [ 'checkJsApi', 'onMenuShareTimeline',
								'onMenuShareAppMessage', 'onMenuShareQQ',
								'onMenuShareWeibo', 'hideMenuItems',
								'showMenuItems', 'hideAllNonBaseMenuItem',
								'showAllNonBaseMenuItem', 'translateVoice'//,'startRecord','stopRecord'
						// 	                'onRecordEnd','playVoice','pauseVoice','stopVoice','uploadVoice','downloadVoice','chooseImage','previewImage',
						// 	                'uploadImage','downloadImage','getNetworkType','openLocation','getLocation','hideOptionMenu','showOptionMenu',
						// 	                'closeWindow','scanQRCode','chooseWXPay','openProductSpecificView','addCard','chooseCard','openCard'
						]
					// 必填，需要使用的JS接口列表，所有JS接口列表见附录2
					});

					wx.ready(function() {
						/* wx.checkjsapi({
						    jsapilist: [
						        'ONMENUSHARETIMELINE',
						        'ONMENUSHAREAPPMESSAGE',
						        'ONMENUSHAREQQ',
						        'ONMENUSHAREWEIBO',
						        'HIDEMENUITEMS'
						    ],
						    success: function (RES) {
						        alert(JSON.STRINGIFY(RES));
						    }
						}); */

						wx.hideAllNonBaseMenuItem({
							success : function() {
	 							//alert('已隐藏所有非基本菜单项');
							}
						});
						 wx.showMenuItems({
							menuList : [
								'menuItem:share:appMessage', // 发送给朋友
								'menuItem:share:timeline' // 分享到朋友圈
							],
							success : function(res) {
								 //	alert('已显示“阅读模式”，“分享到朋友圈”，“复制链接”等按钮');
							},
							fail : function(res) {
								//	alert(JSON.stringify(res));
							}
						}); 
						
//	 					loading.hide();

						 wx.onMenuShareAppMessage({
							title : ta, // 分享标题
							desc : de, // 分享描述
							link : "http://tianjin.boyaunite.com/foolsday/index.do", // 分享链接
							imgUrl : imga, // 分享图标
							// 		    type: '', // 分享类型,music、video或link，不填默认为link
							// 		    dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
							success : function() {
								// 				        alert("分享成功");
							},
							cancel : function() {
								// 				        alert("取消分享");
							}
						});

						wx.onMenuShareTimeline({
							title : ta, // 分享标题
							desc : de, // 分享描述
							link : "http://tianjin.boyaunite.com/foolsday/index.do", // 分享链接
							imgUrl : imga, // 分享图标
							success : function() {
								//alert("分享成功");
							},
							cancel : function() {
								// alert("取消分享");
							}
						}); 
						
					});

					wx.error(function(res) {
						
//	 					loading.hide();

						var v = "";
						for ( var x in res) {
							v += res[x];
						}
						//alert(v);
						//					$('#testdiv').html(v);
					});
				}
			});
		}	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	    
	</script>
</body>
</html>