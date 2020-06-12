<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" type="text/css" href="${ctx}/jsp/weixin/assets/css/index.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/jsp/weixin/assets/css/swiper.min.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/jsp/weixin/assets/lib/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="${ctx}/jsp/weixin/assets/css/weui.min.css"/>
		<title></title>
		<script src="${ctx}/jsp/weixin/assets/js/jquery.min.js"></script>
		<script src="${ctx}/jsp/weixin/assets/js/swiper.min.js"></script>
		<script src="${ctx}/jsp/weixin/assets/js/rem.js"></script>
		<script src="${stax}/assets/js/weui.min.js"></script>
		
	</head>

	<body>
		<div class="header"></div>
		<div class="middle1">
			<div class="gain">
				点击获取随机津元宝
			</div>
			<p>了解津元宝</p>
			<div class="get" id="getBtn">领取</div>
		</div>
		<div class="middle2">
			<div class="gain">
				精美好礼任性兑
			</div>
			<p>通过使用津元宝即可兑换已下奖品</p>
			<div class="content">
				<ul style="display:none;">
					<li>
						<div class="l">10</div>
						<div class="m">+0.1元=</div>
						<div class="r">
							<span><label>￥</label>10</span>
							<span>好利来</span>
						</div>
					</li>
					<li>
						<div class="l">10</div>
						<div class="m">+0.1元=</div>
						<div class="r">
							<span><label>￥</label>10</span>
							<span>好利来</span>
						</div>
					</li>
					<li>
						<div class="l">10</div>
						<div class="m">+0.1元=</div>
						<div class="r">
							<span><label>￥</label>10</span>
							<span>好利来</span>
						</div>
					</li>
					<li>
						<div class="l">10</div>
						<div class="m">+0.1元=</div>
						<div class="r">
							<span><label>￥</label>10</span>
							<span>好利来</span>
						</div>
					</li>
					<li>
						<div class="l">10</div>
						<div class="m">+0.1元=</div>
						<div class="r">
							<span><label>￥</label>10</span>
							<span>好利来</span>
						</div>
					</li>
				</ul>
			</div>
			<p>好礼不止于此，更多精彩请到app查看…</p>
			<div class="btn" id="download">点击下载</div>
		</div>
		<div class="middle3">
			<div class="user">
				如何使用津元宝?
			</div>
			<p style="text-align:right;color:#3CC2FB;text-decoration:underline;">获取更多津元宝</p>
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide" style="width: 80%;">
						<img src="${ctx}/jsp/weixin/assets/images/lunbo1_03.jpg" />
						<p>1.登录建行手机银行，点击悦享生活</p>
					</div>
					<div class="swiper-slide" style="width: 80%;">
						<img src="${ctx}/jsp/weixin/assets/images/lunbo2_03.jpg" />
						<p>2.进入悦享生活后，点击天津惠</p>
					</div>
					<div class="swiper-slide" style="width: 80%;">
						<img src="${ctx}/jsp/weixin/assets/images/lunbo3_03.jpg" />
						<p>3.用户可在兑奖专区，本地特惠中使用津元宝</p>
					</div>
				</div>

			</div>
			<!-- 如果需要导航按钮 -->
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>
		</div>
		<div class="footer">
			<div class="rule">活动规则</div>
			<div class="text" style="overflow:scroll;">
				<div style="width:100%;height:6.3rem;overflow:scroll;">
					<p>1、活动对象：本活动仅限未注册过建行“天津惠”平台用户。</p>
					<p>2、活动时间：即日起至2018年10月31日至。</p>
					<p>3、活动内容：（1）未注册天津惠的客户，参与活动可随机获得10-20个“天津惠”平台专属奖品“津元宝”，每个“津元宝”价值一元。（2）“津元宝”，可用于“兑奖专区”和“本地特惠”中兑抵现金使用，用户所获得“津元宝”可在“个人中心”查看。</p>
					<p>4、活动声明： 活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。</p><br>
					<p>客服电话：022-58750200。</p>
				</div>
			</div>
		</div>
		<div class="login">
			<div class="reg">
				<i class="Hui-iconfont Hui-iconfont-close2"></i>
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
		<div class="pop-up2">
			<div class="box">
				<p>什么是津元宝？</p>
				<div class="text">津元宝是"天津惠"的通用货币，一锭津元宝等同于人民币1元</div>
				<button>我知道了</button>
				<label style="font-size:0.24rem;color:#666;text-align:center;">*使用方法详见活动下方</label>
			</div>
		</div>
		<div class="pop-up3">
			<div class="box">
				<p>如何获取更多津元宝？</p>
				<div class="text">您可以通过领取入门好礼大礼包、参与诗词大会抽经、购买本地特惠商品后抽奖等方式活动津元宝，数量有限先到先得，得到越多优惠越多。</div>
				<button>我知道了</button>

			</div>
		</div>
		
		<!-- 注册必读 -->
		<div id="reg">
			<div style="text-align:right;margin-right:5%;color:#fff;font-size:0.7rem;"><i class="Hui-iconfont Hui-iconfont-close2 close"></i></div>
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
		
		<script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
		<script src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
		<script type="text/javascript">
// 			window.onload=function(){
		        
// 		    };
	    
			$(function(){
				var mySwiper = new Swiper('.swiper-container', {
					autoplay: {
						delay: 5000, //5秒切换一次
						disableOnInteraction: false,
						
					},
					observer:true,
					observeParents:true,
					loop: true,
					// 如果需要前进后退按钮
					navigation: {
						nextEl: '.swiper-button-next',
						prevEl: '.swiper-button-prev',
					}
				});
				shareInit();
			});
			var od = "${od}";
			if(od){
				localStorage.setItem('od',od);	
			}
			var addr = "${addr}";
			var cango = false;
			if(addr){
		  		if(addr.indexOf('天津') > -1){
		  			cango = true;
		  		}
		  	}
		
			//点击领取按钮事件
			$("#getBtn").click(function(){
				$.ajax({
					url:'${ctx}/wei/checkisnewuser.json',
					data:'od='+encodeURIComponent(localStorage.getItem('od')),
					type:'post',
					success:function(resp){
						if(resp.msg != ""){
							$(".pop-up1 .text").text(resp.msg);
							$(".login").css("display","none");
							$(".pop-up1").show();
						}else{
							$(".login").show();
						}
					}
				});
			});
		
			
			$(".Hui-iconfont-close2 , .box button").click(function() {
				$(".pop-up1").css("display", "none");
				$(".pop-up2").css("display", "none");
				$(".pop-up3").css("display", "none");
				$("#bpcodebtn").attr("disabled", false);
				
			});
			$(".close , .login .Hui-iconfont-close2").click(function(){
				$("#reg").css("display", "none");
			});
			$(".login .Hui-iconfont-close2").click(function(){
			
				$(".login").css("display", "none");
			});
			$(".Hui-iconfont-close2").click(function(){
				
				clearInterval(timer);
				$("#bpcodebtn").html("获取验证码");
				$("#bpcodebtn").css("background", "#707070");
				$("#bpcodebtn").attr("disabled", false);
				
			});
			$(".middle1 p").click(function() {
				$(".pop-up2").css("display", "block")
			});
			$(".middle3 p").click(function() {
				$(".pop-up3").css("display", "block")
			});
			
			var timer;
			var oBtn = document.getElementById("bpcodebtn");
			/*验证手机号*/
			function checkPhone(num) {
				var phone = parseInt(num);
				var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
				if (!reg.test(phone)) {
					$(".pop-up1 .text").text("请输入正确的手机号码");
					$(".login").hide();
					$(".pop-up1").show();
					
					return false;
				}
				return true;
			}
			$(document).on("input propertychange", "#phone", function(e) {
				if (e.type === "input" || e.orignalEvent.propertyName === "value") {
					this.value = this.value.replace(/\D/gi, "");
					if (this.value.length == 11) {
						if (checkPhone(this.value)) {
							$("#bpcodebtn").attr("disabled", false);
							$("#bpcodebtn").css("background", "#0BB6F2");
							$("#bpcodebtn").on("click", function() {
								$("#bpcodebtn").attr("disabled", true);
								var phone = $("#phone").val();
								var loading = weui.loading('正在加载...');	//loading
								$.ajax({
									url:'${ctx}/wei/getcode.json',
									type:'post',
									data:'phone='+phone+"&cango="+cango+"&od="+encodeURIComponent(localStorage.getItem('od'))+"&r="+Math.random(),
									success:function(resp){
										loading.hide();
										if(resp.msg != ""){
											$(".pop-up1 .text").text(resp.msg);
											$(".login").hide();
											$(".pop-up1").show();
										}else{
											getCode();
										}
									}
								});
							});
						}
					}else{
						$("#bpcodebtn").css("background", "#707070");
						$("#bpcodebtn").attr("disabled", true);
					}
				}
			});

			function getCode() {
				clearInterval(timer);
				/*验证码倒计时*/
				if (checkPhone($("#phone").val())) {
					var s = 60;
					timer = setInterval(function() {
						s--;
						$("#bpcodebtn").css("background", "#959595");
						$("#bpcodebtn").attr("disabled", true);
						$("#bpcodebtn").html(s + "秒后重发");
						if (s == 0) {
							clearInterval(timer);
							$("#bpcodebtn").html("获取验证码");
							$("#bpcodebtn").css("background", "#0BB6F2");
							$("#bpcodebtn").attr("disabled", false);
							$("#phone").attr("disabled", false);
						}
					}, 1000);
				};
			}
			
			//点击下载
			$("#download").click(function(){
				window.location.href ="http://m.ccb.com/cn/mobilev3/home/include/download.html?from=singlemessage&isappinstalled=0";
			});
			
			var isHa = false;
			$("#loginBtn").click(function(){
				if(isHa) return;
				isHa = true;
				var phone = $("#phone").val();
				var code = $("#ccode").val();
				if(checkPhone(phone) && code != ""){
					$.ajax({
						url:'${ctx}/wei/checkCode.json',
						type:'post',
						data:'phone='+phone+'&code='+code+'&od='+encodeURIComponent(localStorage.getItem('od'))+'&r='+Math.random(),
						success:function(resp){
							isHa = false;
							$(".pop-up1 .text").text(resp.msg);
							$(".login").hide();
							$(".pop-up1").show();
						}
					});
				}else{
					isHa = false;
				}
			});
			
			//注册必读；
			if($("#checked").prop("checked") == true){
		    	$(".denglu").css("background","#18C0FE");
		    }else{
		    	$(".denglu").css("background","#707070");
		    	$("#loginBtn").attr("disabled", true);
		    }
			$("#checked").click(function(){
				if($("#checked").prop("checked") == true){
			    	$(".denglu").css("background","#18C0FE");
			    	$("#loginBtn").attr("disabled", false);
			    }else{
			    	$(".denglu").css("background","#707070");
			    	$("#loginBtn").attr("disabled", true);
			    }
		    });
			$('.login a').click(function(){
				$("#reg").show();
			});
			
			
			
			//************************ 分享 **********************************
			
			var ta =  "建行天津惠，开学总动员！";   //标题
			var de =  "注册送好礼，惠享不停购！"; //内容
			var imga = "http://tianjin.boyaunite.com/jsp/weixin/kaixueweixin.jpg"; //图片
		    
		    
			function shareInit() {
//		 		var loading = weui.loading('loading', {className : 'loading'}); //loading
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
							
//		 					wx.checkjsapi({
//		 					    jsapilist: [
//		 					        'ONMENUSHARETIMELINE',
//		 					        'ONMENUSHAREAPPMESSAGE',
//		 					        'ONMENUSHAREQQ',
//		 					        'ONMENUSHAREWEIBO',
//		 					        'HIDEMENUITEMS'
//		 					    ],
//		 					    success: function (RES) {
//		 					        alert(JSON.STRINGIFY(RES));
//		 					    }
//		 					})

							wx.hideAllNonBaseMenuItem({
								success : function() {
//		  							alert('已隐藏所有非基本菜单项');
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
							
//		 					loading.hide();

							 wx.onMenuShareAppMessage({
								title : ta, // 分享标题
								desc : de, // 分享描述
								link : "http://tianjin.boyaunite.com/wei/weiindex.do", // 分享链接
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
								link : "http://tianjin.boyaunite.com/wei/weiindex.do", // 分享链接
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
							
//		 					loading.hide();

							var v = "";
							for ( var x in res) {
								v += res[x];
							}
// 		 					alert("error:"+v);
							//					$('#testdiv').html(v);
						});
					},
					error:function(er){
// 						alert(222);
						alert(er);
					}
				});
			}
		</script>
	</body>

</html>