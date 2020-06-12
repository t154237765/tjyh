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
<title>党建</title>
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
<link rel="stylesheet" href="${stax}/assets/css/partyBuilding/index.css">
<link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css">
<style>
.box {
	width: 100%;
	height: 30.42rem;
	background: url(${stax}/assets/images/partyBuilding/pbBack.jpg) no-repeat
		100% 100%;
	background-size: 100% 100%;
}

.container {
	width:6.3rem;
	height:4.95rem;
	margin: auto;
	margin-top: 0.3rem;
	text-align: center;
	background:#FFE3C0;
	border:0.15rem solid #fff;
	border-radius:0.5rem;
	
}
.cont .topic{
	width:95%;
}
.cont {
	width:6.3rem;
	min-height:3.95rem;
	margin: auto;
	margin-top: 0.3rem;
	text-align: center;
	background:#FFE3C0;
	border:0.15rem solid #fff;
	border-radius:0.5rem;
	position:relative;
	padding:2% 0%;
	display:none;
}

.cont .num div  , .container .answer{
	width: 2.91rem;
	height:0.75rem;
	line-height: 0.75rem;
	margin: auto;
	background: url(${stax}/assets/images/partyBuilding/pbStart.png) no-repeat 100%
		100%;
	background-size: 100% 100%;
	margin-top: 0.3rem;
	font-size: 0.36rem;
	color: #6A402C;
}
.container .answer img{
	width:100%;
}
.cont .start2 div{
	bottom:1.5rem;
	left:0;
	right:0;
	margin:auto;
}
.start img{
	width:3.32rem;
	margin-top:0.5rem;
}

.prize .title,.banner .title {
	font-family:"FZHei-B01S";
	width: 2.56rem;
	text-align: center;
	height:0.69rem;
	line-height:0.69rem;
	font-size: 0.36rem;
	color: #AE111C;
	background:#FFE3C0;
	border-radius:0.5rem;
	margin:auto;
}
.prizeList li{
	display:flex;
	align-items:center;
	justify-content:center;
	
}

.banner .title {
	margin-top: 0.3rem;
}

.swiper-button-prev {
	background-image: url(${stax}/assets/images/partyBuilding/btnLeft.png);
}

.swiper-button-next {
	background-image: url(${stax}/assets/images/partyBuilding/btnRight.png);
}

.weui-dialog {
	width: 82%;
	max-width: 100%;
	overflow: visible;
}

</style>
</head>
<body>
	
	<div class="box">
		<div class="top">
			<div class="explain">
				<img src="${stax}/assets/images/partyBuilding/pbRule.png" />
			</div>
			<div class="record">
				<img src="${stax}/assets/images/partyBuilding/pbPrize.png" />
			</div>
		</div>
		<!-- 未答题 -->
		<div class="container">
			<div class="start">
				<div>
					<img src="${stax}/assets/images/partyBuilding/pbSign.png" />
				</div>
			</div>
			<div class="answer">
				开始答题
			</div>
<%-- 			<p class="num">
				今日还剩：<span>${num}</span>次
			</p> --%>
		</div>

		<!-- 进行答题 -->
		<div class="cont">
			<div class="countdown" id="time"></div>
			<div class="start2">
								<p class="topic">手机银行可以替别我二高危儿岗位二工位而过温柔个人各位而高危儿个为</p>
								<!-- 单选 -->
								<ol>
									<li><label><input type="radio" name="radio" value="" /> <span>为能嗡给我二高危儿</span></label></li>		
									<li><label><input type="radio" name="radio" value="" /> <span>为能嗡给我二高危儿</span></label></li>		
									<li><label><input type="radio" name="radio" value="" /> <span>为能嗡给我二高危儿</span></label></li>		
									<li><label><input type="radio" name="radio" value="" /> <span>为能嗡给我二高危儿</span></label></li>		
															
								</ol>

								<!-- 多选啊 -->
<!-- 									<ol> -->
<!-- 										<li><label><input type="checkbox" value="" /> <span>为能嗡给我二高危儿</span></label></li> -->
<!-- 										<li><label><input type="checkbox" value="" /> <span>为能嗡给我二高危儿</span></label></li> -->
<!-- 										<li><label><input type="checkbox" value="" /> <span>为能嗡给我二高危儿</span></label></li> -->
<!-- 										<li><label><input type="checkbox" value="" /> <span>为能嗡给我二高危儿</span></label></li> -->
<!-- 										<li><label><input type="checkbox" value="" /> <span>为能嗡给我二高危儿</span></label></li> -->
<!-- 									</ol> -->
			</div>
			<div class="num">
				<div class="sava">提交答案</div>
				还有<span>${num}</span>道题
			</div>
		</div>
		<div class="prize">
			<div class="title">精美大奖</div>
			<ul class="prizeList">
				<li>
					<div class='img'>
						<img src="${stax}/assets/images/partyBuilding/pbList.png" />
						<p>50元京东e卡</p>
					</div>
					<div class="arrows2"></div>
					<div class="userCont">
						<p>“50元京东e卡”奖品信息可以到建行手机app-登录天津惠-个人中心-我的专享活动进行查看使用
							
						</p>
					</div>
				</li>
			</ul>
		</div>


		<div class="banner">
			<div class="title">如何领取奖品</div>

			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<p>登录建行手机银行，点击悦享生活</p>
						<img src="${stax}/assets/images/partyBuilding/banner1.jpg" />
						
					</div>
					<div class="swiper-slide">
						<p>进入悦享生活，点击天津惠</p>
						<img src="${stax}/assets/images/partyBuilding/banner2.jpg" />
						
					</div>
					<div class="swiper-slide">
						<p>进入天津惠，点击我的，选择我的活动<br>进行查看使用</p>
						<img src="${stax}/assets/images/partyBuilding/banner5.jpg" />
						
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
				<p>1、活动对象：本活动仅限建行“天津惠”平台用户。</p>
				<p>2、活动时间：2019年7月4日</p>
				<p>3、活动内容：</p>
				<p>（1）本次活动只限天津用户参与。</p>
				<p>（2）参与活动时，请务必保证注册天津惠手机号与注册建行手机银行号码保持一致，以保证奖品可以顺利领取使用，活动过程中无法修改手机号码。</p>
				<p>（3）每位用户均有一次抽奖的机会，答题成功可参加抽奖，答错、放弃答题或者中途退出则不能抽奖，未抽过奖的用户可以重复答题。</p>
				<p>（4）参与活动获得相关奖品可通过页面相关提示进入建行手机银行天津惠进行领取使用。</p>
				<p>（5）活动奖品将直接发送至用户的“天津惠账户”。</p>
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

		var mySwiper = new Swiper('.swiper-container', {
			prevButton : '.swiper-button-prev',
			nextButton : '.swiper-button-next',
		})

		/* 开始答题 */
		$(".container .answer").click(function() {
// 			console.log("开始答题");
			
			if (msg != "") {
				$(".hint1 .txt").html(msg)
				$(".hint1").show();
				return;
			}
			if (bwid && bwid != "") {
				//校验次数
				if (num <= 0) {
					$(".hint1 .txt").html("很遗憾，您的答题次数已上限，请下次再来~")
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
		$('.shopList ul').scroll(
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
					$('#phone').attr("disabled", true);
					$('#bpcodebtn').attr("disabled", true);
					bClick = true;
					$.ajax({
						type : "GET",
						url : "${ctx}/party/getcode.json",
						data : "phone=" + $('#phone').val() + "&od="
								+ encodeURIComponent(od) + "&cango=" + cango
								+ "&r=" + Math.random(),
						success : function(resp) {
							bClick = false;
							
							if (resp.msg && resp.msg != "") {
// 								console.log(resp.msg);
								$('#phone').attr("disabled", false);
								$('#bpcodebtn').attr("disabled", false);
								$(".hint1 .txt").html(resp.msg);
								$(".hint1").show();
								// 							$("#iosDialog1").hide();
							} else {
								$("#bpcodebtn").removeClass("c-c-b");
								$('#phone').attr("disabled", true);
								$('#bpcodebtn').attr("disabled", true);
								var s = 5;
								timer = setInterval(function() {
									s--;
									oBtn.innerHTML = s + "秒后重发";

									if (s == 0) {
										initTimer();
										$('#phone').attr("disabled", false);
										$('#bpcodebtn').attr("disabled", false);
									}
								}, 1000);
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

		function initTimer() {
			bClick = false;
			$('#phone').attr("disabled", false);
			clearInterval(timer);
			$('#bpcodebtn').html("获取验证码").addClass("c-c-b");
		}

		$(".c-c-b").on("click", function() {
			register();
		})

		/**绑定手机**/
		var isHa = false;
		function register() {
			// 		debugger;
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
					url : '${ctx}/party/register.json',
					type : 'post',
					data : 'phone=' + phone + '&code=' + ccode + '&od='
							+ encodeURIComponent(od) + '&r=' + Math.random(),
					success : function(resp) {
						isHa = false;
						if (resp.msg && resp.msg != "") {
// 							console.log(resp.msg+"=====");
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
		$(".tishi").click(function() {
			$(this).next().toggle();
		})

		//获取答题数据
		var awid = 0;
		var isHb = false;
		var timeLeft;
		function getques() {
			if (isHb)
				return;
			isHb = true;
// 			debugger;
			$.ajax({
				url : '${ctx}/party/getwomenques.json',
				type : 'get',
				data : 'bwid=' + encodeURIComponent(bwid) + '&r='
						+ Math.random(),
				success : function(resp) {
					isHb = false;
					console.log(resp);
					if (resp.msg && resp.msg != "") {
// 						console.log(resp.msg);
						$(".hint1 .txt").html(resp.msg)
						$(".hint1").show();
						return;
					}
// 					console.log("respawid=="+resp.awid);
					if (resp.num && resp.num != "") {
						num = resp.num;
						awid = resp.awid;
						$(".num span").html(num);
					}
					if (resp.dataMaps && resp.dataMaps != "") {
						addData(resp.dataMaps, resp.typ);
						$(".countdown").html(resp.timeLeft);
						timeLeft = resp.timeLeft
						countTime();
					}
				},error:function(e){
					isHb = false;
					console.log(e);
				}
			});
		}

		var curId = 0;
		//加载问题和选项
		function addData(quesList , typ) {
			$('.start2').empty();
			var da = "";
			if(typ == 1){
				da = '<p class="topic">(单选题)' + quesList[0].content + '</p>';
				if (quesList[0].id != curId) {
					curId = quesList[0].quesId;
				}
				da += '<ol>';
				var j = 0;
				for (var i = 0; i < quesList.length; i++) {
						da += '<li ><label><input type="radio" name="radio" value="'+ quesList[i].opts +'" id = "'+quesList[i].optsId+'"/> <span>'
								+ quesList[i].opts + '</span>' + '</label></li>';
					
				}
				da += '</ol>';
				$('.start2').append(da);
				
				$(".container").hide();
				$(".cont").show();
				$(".sava").off().on("click", function() {
					var opttext = $("input[name='radio']:checked").val();
					var optsid = $("input[name='radio']:checked").attr("id");
					savadata(opttext,optsid);
				})
			}else{
				
				da = '<p class="topic">(多选题)' + quesList[0].content + '</p>';
				if (quesList[0].id != curId) {
					curId = quesList[0].quesId;
				}
				da += '<ol>';
				var j = 0;
				for (var i = 0; i < quesList.length; i++) {
						da += '<li ><label><input type="checkbox" name="check" value="'+ quesList[i].opts +'" id = "'+quesList[i].optsId+'"/> <span>'
								+ quesList[i].opts + '</span>' + '</label></li>';
					
				}
				da += '</ol>';
				$('.start2').append(da);
				
				$(".container").hide();
				$(".cont").show();
				
				$(".sava").off().on("click", function() {
					var optsid = '';
					var opttext = '';
					$('input[name="check"]:checked').each(function(index, element) {
						opttext += $(this).val()+"|";
						optsid += $(this).attr("id")+",";
		            });
					
					savadata(opttext,optsid);
				})
			}
			

		}

		//倒计时设置
		var t;
		function countTime() {
			document.getElementById('time').innerHTML = timeLeft;
			t = setTimeout('countTime() ', 1000);

			if (timeLeft == 0) {
				window.clearTimeout(t);
				$(".container").show();
				$(".cont").hide();
				$(".hint1 .txt").html("很遗憾，您答题超时，不要灰心，再接再厉哟~");
				$(".hint1").show();
				$('.start2').empty();
				timeoutact();
			}
			timeLeft = timeLeft - 1;

		}
		
		function timeoutact() {
			$.ajax({
				url : '${ctx}/party/timeout.json',
				type : 'post',
				data : 'bwid=' + encodeURIComponent(bwid) + '&r='+ Math.random(),
				success : function(resp) {
					if (resp.num && resp.num != "") {
						num = resp.num;
						$(".num span").html(num);
					}
					console.log(resp);
				},error:function(e){
					console.log(e);
				}
			});
		}

		
		var sava =false;
		function savadata(opttext,optsid) {
			
			console.log(optsid);
			console.log(opttext);
			if(sava)return;
			sava = true;
			if(!opttext||!optsid){
				$(".hint1 .txt").html("请勾选答案!")
				$(".hint1").show();
				sava =false;
				return;
			}
// 			console.log("savadata awid----"+awid)
			
			$.ajax({
				url : '${ctx}/party/savaAnswer.json',
				type : 'post',
				data : 'bwid=' + encodeURIComponent(bwid) +
					'&awid=' + encodeURIComponent(awid) +
					'&quesId=' + encodeURIComponent(curId) +
					'&optsId=' + encodeURIComponent(optsid) +
					'&opts=' + opttext +
					'&r='+ Math.random(),
				success : function(resp) {
					console.log(resp);
					sava = false;
					$(".container").show();
					$(".cont").hide();
					window.clearTimeout(t);
					if (resp.num && resp.num != "") {
						num = resp.num;
						$(".num span").html(num);
					}
					if (resp.errmsg && resp.errmsg != "") {
						$(".hint1 .txt").html(resp.errmsg)
						$(".hint1").show();
						return;
					}
					if(resp.isAnswer &&resp.isAnswer=="0"){    //答题错误
						$(".hint1 .txt").html("很遗憾，答题失败，不要灰心，再接再厉哟~")
						$(".hint1").show();
						return;
					}
					
					if(resp.isAnswer &&resp.isAnswer=="1"){    //答题正确
						if(resp.msg){
							if(resp.status=="0"){
								$(".hint1 .txt").html(resp.msg)
								$(".hint1").show();
							}else{
								$(".hint2 .txt").html(resp.msg)
								$(".hint2").show();
							}							
						}else{
							getques();
						}
					}
					
					
				},error:function(e){
					sava = false;
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
				url : '${ctx}/party/findprize.json',
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
		
	    var indexUrl = localStorage.getItem("homeUrl");
	    
	    function toHome(){
	    	window.location.href = "${ctx}/tjhui"+indexUrl;
	    }
	    
	</script>
</body>
</html>