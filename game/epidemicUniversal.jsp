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
<title>知识普及</title>
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
<link rel="stylesheet" href="${stax}/assets/css/answer/index.css">
<link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css">
<style>
		ul,ol{list-style: none;}
		html{height:100%;}
		body{min-height:100%;height:100%;font-size:.12rem;}
		.container1{width:100%;min-height:100%;height:100%;margin: 0 auto;text-align: center;background: url("${stax}/assets/images/answer/back.jpg");background-size: 100% 100%; position: fixed;top: 0;left: 0;}
	
	
		.model .title img{ width: 60%;position: absolute;top: 4%;left: 20%;}
		.model .tishi{position: absolute;top:30%;left:9%;border: 3px dashed #fff;width: 74%;padding:3%;border-radius: .5rem; height:40%;overflow: scroll;}
		.tishi h3{font-size: .5rem;text-align: left;line-height: .5rem;}
		.tishi p{font-size: .4rem;text-align:left;}
		.model .footer{position: absolute;bottom: 15%;}
		.model .footer img{width: 50%;}

		.pull-up , .zhezhao , .err-div{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.4);z-index:33333;}
		.pull-up .cont{width:80%;background:#fff;margin:auto;margin-top:50%;border-radius:0.2rem;padding-bottom:0.6rem;}
		.zhezhao .cont{width:80%;background:#fff;margin:auto;margin-top:50%;border-radius:0.2rem;}
		.err-div .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;padding-bottom:0.5rem;}
		.pull-up .tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.zhezhao .zhezhao-tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.err-div .err-tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.tishi p{padding:6% 0%;}
		.tishi p span{color:#CE3633;}
		.err-tishi p{padding:6% 0%;}
		.zhezhao-tishi p{padding:16% 0%;}
		.confirm1{width:2.5rem;height:0.8rem;line-height:0.8rem;border-radius:0.1rem;text-align:center;font-size:0.36rem;background:#CE3633;color:#fff;margin:auto;}
		.button{display:flex;align-items:center;justify-content:space-around;text-align:center;padding-bottom:0.4rem;}
		.confirm2 , .cancel{font-size:0.3rem;width:2.4rem;padding:5% 0%;color:#fff;height:0.2rem;line-height:0.2rem;border-radius:0.1rem;}
		.confirm2{background:#CE3936;}
		.cancel{background:#A0A0A0;}
.box {
	width: 100%;
	height: 19.42rem;
	background: url(${stax}/assets/images/answer/background.jpg) no-repeat
		100% 100%;
	background-size: 100% 100%;
}

.container {
	width: 95%;
	height: 2.58rem;
	margin: auto;
	background: url(${stax}/assets/images/answer/doctor.png) no-repeat 100%
		100%;
	background-size: 100% 100%;
	margin-top: 0.3rem;
	text-align: center;
	padding-top: 3rem;
}

.cont {
	width: 95%;
	margin: auto;
	background: url(${stax}/assets/images/girls/cont.png) no-repeat 100%
		100%;
	background-size:inherit;
	margin-top: 0.3rem;
	text-align: center;
	padding-top: 0.5rem;
	padding-bottom:1.2rem;
}

.container .start div,.cont .num div {
	width: 2.91rem;
	line-height: 0.75rem;
	margin: auto;
	background: url(${stax}/assets/images/answer/start.png) no-repeat 100%
		100%;
	background-size: 100% 100%;
	margin-top: 0.3rem;
	font-size: 0.36rem;
	color: #6A402C;
}
.cont .start2 div{
	
	bottom:1.5rem;
	left:0;
	right:0;
	margin:auto;
}

.prize .title,.banner .title {
	width: 2.56rem;
	text-align: center;
	height: .8rem;
	line-height: .8rem;
	background: url(${stax}/assets/images/answer/title.png) no-repeat 100%
		100%;
	background-size: 100% 100%;
	font-size: 0.36rem;
	color: #fff;
	font-weight: bold;
	text-shadow: 2px 2px 2px grey;
	margin: auto;
	margin-top:.5rem;
}

.banner .title {
	margin-top: 0.3rem;
}

.swiper-button-prev {
	background-image: url(${stax}/assets/images/girls/btnLeft.png);
}

.swiper-button-next {
	background-image: url(${stax}/assets/images/girls/btnRight.png);
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
			<div class="titleBar-text am-text-truncate">新冠疫情问答</div>
		</div>
	</c:if>
	
	<div class="box">
		<div class="top">
			<div class="explain">
				<img src="${stax}/assets/images/answer/explain.png" />
			</div>
			<div class="record">
				<img src="${stax}/assets/images/answer/record.png" />
			</div>
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
			<div class="start2">
<!-- 								<p class="topic">手机银行可以替别我二高危儿岗位二工位而过温柔个人各位而高危儿个为</p> -->
<!-- 								<ol> -->
<!-- 									<li><input type="radio" name="radio" value="" /> <span>为能嗡给我二高危儿</span> -->
<!-- 									</li> -->
<!-- 									<li><input type="radio" name="radio" value="" /> <span>违反能二网</span> -->
<!-- 									</li> -->
<!-- 									<li><input type="radio" name="radio" value="" /> <span>为能嗡给我二高危儿</span>									 -->
<!-- 								</ol> -->
								
			</div>
			<div class="num">
				<div class="sava">提交答案</div>
				今日还剩：<span>${num}</span>次
			</div>
		</div>
		<div class="prize">
			<div class="title">精美大奖</div>
			<ul class="prizeList">
				<li>
					<div class='img'>
						<img src="${stax}/assets/images/answer/img-1.png" />
					</div>
					<p>特等奖</p> <span>每日优鲜3折购</span>
					
				</li>

				<li>
					<div class='img'>
						<img src="${stax}/assets/images/answer/img-2.png" />
					</div>
					<p>一等奖</p> <span>中石化加油卡9折购</span>
					
				</li>
				<li>
					<div class='img'>
						<img src="${stax}/assets/images/answer/img-3.png" />
					</div>
					<p>二等奖</p> <span>话费半价购</span>
					
				</li>
				<li>
					<div class='img'>
						<img src="${stax}/assets/images/answer/img-4.png" />
					</div>
					<p>三等奖</p> <span>天津惠津元宝</span>
					
				</li>
			</ul>
		</div>


		
		<!-- <div class="downLoad">
			<p>更多精彩请到APP查看...</p>
			<div>点击下载</div>
		</div> -->
	</div>

	<!-- 结果页 -->
	<div class="container1" style="display:none">
		<div class="model">
			<div class="title">
				<img src="${stax}/assets/images/answer/yes.png">
			</div>
			<div class="tishi">
				
			</div>
			<div class="footer">
				<img src="${stax}/assets/images/answer/button.png" id="btn-play">
			</div>
		</div>

			<!-- 确定支付 -->
		<div class="zhezhao" style="display:none;">
			<div class="cont">
				<div class="zhezhao-tishi">
					<p>亲，您需要支付0.1元体验金，支付金额将及时退回至支付账户</p>
				</div>
				<div class="button">
					<div class="cancel">取消</div>
					<div class="confirm2">确定</div>
				</div>
			</div>
		</div>
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
				<p>2、活动时间：2019年3月1日至2019年3月8日</p>
				<p>3、活动内容：</p>
				<p>（1）本次活动只限天津用户参与。</p>
				<p>（2）参与活动时，请务必保证注册天津惠手机号与注册建行手机银行号码保持一致，以保证奖品可以顺利领取使用，活动过程中无法修改手机号码。</p>
				<p>（3）每位用户每天可答题四次，答题成功可参加抽奖一次，答错或者放弃答题不能抽奖。</p>
				<p>（4）参与活动获得相关奖品可通过页面相关提示进入建行手机银行天津惠进行领取使用。</p>
				<p>（5）活动奖品领取时间截至2019年3月15日23：59：59，逾期按作废处理。</p>
				<p>（6）奖品数量有限，先到先得。</p>
				<p>4、活动声明：
					活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。</p>
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
		var bwid = "${bwid}";
		//     var prList = "${prList}";
		var num = $
		{
			num
		};
		
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
		$(".container .start div").click(function() {
// 			console.log("开始答题");

			if(bwid == ""){
				//登录
				getCode();
				$("#iosDialog1").show();
				return;
			}
			
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
					$('#phone').attr("disabled", true);
					bClick = true;
					$.ajax({
						type : "GET",
						url : "${ctx}/tjhui/getcode.json",
						data: "phone="+$('#phone').val()+"&bid="+"${bid}"+"&r="+Math.random(),
						success : function(resp) {
							bClick = false;
							
							if (resp.msg && resp.msg != "") {
// 								console.log(resp.msg);
								$('#phone').attr("disabled", false);
								$(".hint1 .txt").html(resp.msg);
								$(".hint1").show();
								// 							$("#iosDialog1").hide();
							} else {
								$("#bpcodebtn").removeClass("c-c-b");
								$('#phone').attr("disabled", true);
								var s = 60;
								timer = setInterval(function() {
									s--;
									oBtn.innerHTML = s + "秒后重发";

									if (s == 0) {
										initTimer();
										$('#phone').attr("disabled", false);
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
					url : '${ctx}/tjhui/register.json',
					type : 'post',
					data : 'phone=' + phone + '&code=' + ccode +"&bankuid="+"${bid}"+"&bankId="+encodeURIComponent("${bankId}")
							+"&cd="+"${cd}"+"&tm="+"${tm}"+"&mc="+"${mc}"+"&r="+Math.random(),
					success : function(resp) {
						isHa = false;
						if (resp.msg && resp.msg != "") {
// 							console.log(resp.msg+"=====");
							$(".hint1 .txt").html(resp.msg);
							$(".hint1").show();
							$('#ccode').val('');
							$('#phone').attr("disabled", true);

						}else if(resp.user){
							setUserLocal(resp.user);
							window.location.href="${ctx}/epidemic/index.do?uid="+resp.user.id
						} else {
							/* if (resp.bwid && resp.bwid != "") {
								bwid = resp.bwid;
								$('#phone').val('');
							}
							if (resp.num && resp.num != "") {
								num = resp.num;
								$(".num span").html(num);
							} */
							
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

		/*  
		$(".tishi").click(function() {
			$(this).next().toggle();
		})*/

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
				url : '${ctx}/epidemic/getques.json',
				type : 'post',
				data : 'bwid=' + encodeURIComponent(bwid) + '&r='
						+ Math.random(),
				success : function(resp) {
					isHb = false;
// 					console.log(resp);
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
						addData(resp.dataMaps);
						$(".countdown").html(resp.timeLeft);
						timeLeft = resp.timeLeft
						
					}
				},error:function(e){
					isHb = false;
					console.log(e);
				}
			});
		}

		var curId = 0;
		//加载问题和选项
		function addData(quesList) {
			$('.start2').empty();
			da = '<p class="topic">' + quesList[0].content + '</p>';
			if (quesList[0].id != curId) {
				curId = quesList[0].quesId;
			}
			da += '<ol>';
			var j = 0;
			for (var i = 0; i < quesList.length; i++) {
					da += '<li ><input type="radio" name="radio" value="'+ quesList[i].opts +'" id = "'+quesList[i].optsId+'"/> <span>'
							+ quesList[i].opts + '</span>' + '</li>';
				
			}
			da += '</ol>';
			$('.start2').append(da);
			
			$(".container").hide();
			$(".cont").show();
			
			$(".sava").on("click", function() {
// 				console.log(6666);
				var opttext = $("input[name='radio']:checked").val();
				var optsid = $("input[name='radio']:checked").attr("id");
				savadata(opttext,optsid);
			})

		}

		//倒计时设置
		/*var t;
		function countTime() {
			document.getElementById('time').innerHTML = timeLeft;
			t = setTimeout('countTime() ', 1000);

			if (timeLeft == 0) {
				window.clearTimeout(t);
				$(".container").show();
				$(".cont").hide();
				$(".hint1 .txt").html("很遗憾，您答题超时，要灰心，再接再厉哟~");
				$(".hint1").show();
				$('.start2').empty();
				
			}
			timeLeft = timeLeft - 1;

		}*/

		
		var sava =false;
		function savadata(opttext,optsid) {
			
// 			console.log(optsid);
// 			console.log(opttext);
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
				url : '${ctx}/epidemic/saveAnswer.json',
				type : 'post',
				data : 'bwid=' + encodeURIComponent(bwid) +
					'&awid=' + encodeURIComponent(awid) +
					'&quesId=' + encodeURIComponent(curId) +
					'&optsId=' + encodeURIComponent(optsid) +
					'&opts=' + opttext +
					'&r='+ Math.random(),
				success : function(resp) {
					sava = false;
					
					if (resp.num && resp.num != "") {
						num = resp.num;
						$(".num span").html(num);
					}
					
					if (resp.errmsg && resp.errmsg != "") {
						$(".hint1 .txt").html(resp.errmsg);
						$(".hint1").show();
						return;
					}
					
					if(resp.isAnswer &&resp.isAnswer=="0"){    //答题错误
						fact(resp.isAnswer,resp.mark)
						return;
					}else if(resp.isAnswer &&resp.isAnswer=="1"){  //答题正确
						fact(resp.isAnswer,resp.mark)
						return;
					}
					
				},error:function(e){
					sava = false;
					console.log(e);
				}
			});
		}
		
		function fact(s,m){
			if(s==1){
				$(".title img").attr('src','${stax}/assets/images/answer/yes.png');
				var li="<h3>事实是这样的：</h3><p>"+m+"</p >"
				$(".tishi").append(li)
				$(".container1").show();
			}else if(s==0){
				$(".title img").attr('src','${stax}/assets/images/answer/no.png');
				var li="<h3>事实是这样的：</h3><p>"+m+"</p >"
				$(".tishi").append(li)
				$(".container1").show();
			}
		}


	function reload(){
		window.location.reload();
	}
		/****************************************************************付款************************************************************************/
	var isLuckyDraw = false;//有没有抽奖,true已抽奖,false未抽奖
	var luckDrawAnswerId = "${luckDrawAnswerId}";
	$(function(){
		$(".cancel").click(function(){
			$(".zhezhao").hide();
			//$(".container1").hide();
		});
	
		$(".confirm2").click(function(){
			/* if(isLuckyDraw){
				goBuy()("");
				$(".zhezhao").hide();
				$(".container1").hide();
			}
			isLuckyDraw = false; */
			
			$(".zhezhao").hide();
			//$(".container1").hide();
			
			goBuy();
		});
		
		
		$("#btn-play").click(function(){
			$(".zhezhao").show();
		});
		
		
		if(luckDrawAnswerId && luckDrawAnswerId != ''){
			 play(luckDrawAnswerId);
		}
	})
	
	function play(awid){
		//加载效果
		var loading = weui.loading('正在加载...'); //loading
		$.ajax({
			type : "POST",
			url : "${ctx}/epidemic/play.json",
			data : "awid=" + encodeURIComponent(awid)+"&bwid=" + encodeURIComponent(bwid)+"&r="+Math.random(),
			success : function(resp) {
				loading.hide();
				if (resp.msg != ""){
					$(".hint1 .txt").html(resp.msg);
					$(".hint1").show();
				}
			},
			error : function(er) {
				loading.hide();
				console.log(er);
			}
		});
	}
	
	
	/***********************************************************去支付***********************************************************/
	var oos = "";
	//进行支付
	function goBuy() {
		var loading = weui.loading('正在加载...'); //loading
		$.ajax({
			type : "POST",
			url : "${ctx}/epidemic/goBuy.json",
			data : "awid=" + encodeURIComponent(awid)+"&bwid=" + encodeURIComponent(bwid)+"&r="+Math.random(),
			success : function(resp) {
				loading.hide();
				if (resp.msg != ""){
					$(".hint1 .txt").html(resp.msg);
					$(".hint1").show();
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
		
		//***********************************************************中奖记录查询*************************************************************
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
				url : '${ctx}/epidemic/findprize.json',
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
	    
	    function setUserLocal(user){
	    	//用浏览器存储
			localStorage.setItem("userId", user.id);
			localStorage.setItem("userPhone", user.phone);
			localStorage.setItem("ssdid", user.ssdid);
	    }
	    
	</script>
</body>
</html>