<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<%@ page import="com.ronglian.tjpt.system.util.IPInfoUtil"%>
<%
	String ip = IPInfoUtil.getIpAddr(request);
	String addr = IPInfoUtil.getAddrByTaobaoIp(ip);
%>


<!DOCTYPE html>
<html>
<head>
    <!-- 识别客户端 -->
    <script type="text/javascript">
    	var hflag = "${hflag}";
    	if(hflag && hflag.indexOf("CCBWebView") > -1){
    		
    	}else{
            alert('您必须使用手机建行客户端才能访问本页面');
            location.href="${ctx}/jsp/404.jsp";
    	}
    </script>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>惠滨城</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
    	.swiper-container {width: 100%;height: 7rem;}
		.swiper1{background: url(${stax}/assets/images/swiper1.jpg) no-repeat 50% top;background-size: contain;}
		.swiper2{background: url(${stax}/assets/images/swiper2.jpg) no-repeat 50% top;background-size: contain;}
		.swiper3{background: url(${stax}/assets/images/swiper3.jpg) no-repeat 50% top;background-size: contain;}
        .swiper-container-horizontal>.swiper-pagination-bullets, .swiper-pagination-custom, .swiper-pagination-fraction{bottom: 10px;}
        .c-index-hot{background: #fff;margin-top: 5px;}
        .c-index-hot h3 {font-size: .7rem;padding: 7px;padding-left: 15px;}
        .c-remenhd {width: 20px;height: 20px;display: inline-block;vertical-align: sub;}
        .c-index-hot .weui-flex{border-top:1px solid #eee;border-bottom:1px solid #eee;padding: padding:15px;}
        .c-index-hot .weui-flex:nth-child(2){border-bottom:0;}
        .c-index-hot .weui-media-box__hd img{width: 3.2rem;}
        .weui-flex .weui-flex__item:nth-child(odd){border-right:1px solid #eee;}
        a.weui-media-box:active{background: #fff;}
        .weui-navbar-down,.weui-navbar__item.weui-bar__item_on{background: #09b6f2;color:#fff;}
        .weui-navbar__item.weui-bar__item_on{color:#fcd497;}
        #local-special .weui-flex__item{border:0;}
        #local-special .weui-flex{padding:15px;}
        .weui-media-box_appmsg .weui-media-box__hd{margin-right:0;}
        #local-special .weui-media-box__hd img{border-radius:0;height:2.8rem;width:2.8rem;margin: 0 auto;}
        .weui-media-box__desc{font-size: 12px;}
        #local-special a.weui-media-box{padding:0;}
        #local-special .weui-media-box__bd{margin-right: 4px;background:#fef2f2;border-radius: 10px;padding: 4px;text-align: center;}
        .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        /*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#09b6f2;}
        .js_dialog input.weui-input{color:#333;}
        .buyNote{float: right;margin-right: 15px;}
        .weui-tab{height:auto;}
        .weui-dialog{overflow: visible;}
        #c-login-close{position: absolute;top: -1rem;right: -1rem;color: #fff;}
        #c-intro-wrapper{padding: 0 5px;}
        .weui-cells:before,.weui-cells:after{border: 0;}
    </style>
</head>
<body>
	<div class="titleBar">
			<!-- <div class="titleBar-back">
                <i class="fa fa-angle-left" aria-hidden="true"></i>
            </div> -->
			<div class="titleBar-text am-text-truncate">惠滨城</div>
<!-- 			<div class="titleBar-close" onclick="alert('shutdown');">关闭</div> -->
	</div>
	<div class="container" style="overflow-x: hidden;" id="wrapper">
		<div id="dataArea">
			<div class="c-content" style="padding-bottom: 60px;">
				<!-- Slider main container -->
				<div class="swiper-container" id="mySwiper">
					<!-- Additional required wrapper -->
					<div class="swiper-wrapper">
						<!-- Slides -->
						<div class="swiper-slide swiper1"></div>
						<div class="swiper-slide swiper2"></div>
						<div class="swiper-slide swiper3"></div>
					</div>
					<!-- If we need pagination -->
					<div class="swiper-pagination"></div>
				</div>
				<div class="c-index-hot">
					<h3>
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/index-hot.jpg">热门活动
					</h3>
					<div class="weui-flex">
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg" id="c-a1">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">邀请有礼</h4>
									<p class="weui-media-box__desc">邀请好友赚现金券</p>
								</div>
								<div class="weui-media-box__hd">
									<img class="weui-media-box__thumb" src="${stax}/assets/images/index-1.jpg" alt="">
								</div>
							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg" id="c-a2">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">乐享拼团</h4>
									<p class="weui-media-box__desc">最超值的购物体验</p>
								</div>
								<div class="weui-media-box__hd">
									<img class="weui-media-box__thumb" src="${stax}/assets/images/index-2.jpg" alt="">
								</div>
							</a>
						</div>
					</div>
					<div class="weui-flex">
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg" id="c-a3">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title" style="margin-right: 13px;">诗词PK</h4>
									<p class="weui-media-box__desc">知识储备换大奖</p>
								</div>
								<div class="weui-media-box__hd">
									<img class="weui-media-box__thumb" src="${stax}/assets/images/index-3.jpg" alt="">
								</div>
							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg"  id="c-a4">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">善融惠购</h4>
									<p class="weui-media-box__desc">电子券当钱花</p>
								</div>
								<div class="weui-media-box__hd">
									<img class="weui-media-box__thumb" src="${stax}/assets/images/index-4.jpg" alt="">
								</div>
							</a>
						</div>
					</div>
				</div>

				<div class="c-index-hot" id="local-special">
					<h3>
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/index-local.jpg">本地特惠
						<span class="c-c-b buyNote" id="c-b0">购物须知&gt;&gt;</span>
					</h3>
					<div class="weui-flex">
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="1" medata="100.00">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">50充值卡</h4>
									<p class="weui-media-box__desc">话费优惠多多多</p>
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-5.jpg" alt="">
									</div>
								</div>
							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="2" medata="10.00">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">10元淘红包</h4>
									<p class="weui-media-box__desc">越淘越优惠</p>
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-6.jpg" alt="">
									</div>
								</div>
							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="3" medata="10.00">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">50元好利来</h4>
									<p class="weui-media-box__desc">美味就在你身边</p>
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-7.jpg" alt="">
									</div>
								</div>

							</a>
						</div>
					</div>
					<div class="weui-flex" style="padding-top: 0; border: 0">
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="4" medata="20.00">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">优酷月卡</h4>
									<p class="weui-media-box__desc">这世界很酷</p>
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-8.jpg" alt="">
									</div>
								</div>

							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="5" medata="30.00">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">爱奇艺月卡</h4>
									<p class="weui-media-box__desc">悦享品质</p>
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-9.jpg" alt="">
									</div>
								</div>

							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="6" medata="10.00">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">50元必胜客</h4>
									<p class="weui-media-box__desc">美味披萨齐分享</p>
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-10.jpg" alt="">
									</div>
								</div>

							</a>
						</div>
					</div>
				</div>
				<div id="c-block-bottom" style="width:100%;height:2rem;"></div>
				

			</div><!--end c-content-->
			
		</div><!--end dataArea-->
	</div>
	<!-- end container -->
<div class="js_dialog" id="iosDialog1" style="opacity: 1; display: none;">
				<div class="weui-mask"></div>
				<div class="weui-dialog">
					<i class="weui-icon-cancel" id="c-login-close"></i>
					<div class="weui-dialog__bd c-f-s-16" style="color: #09b6f2; padding-top: 1.7em;">

						请绑定手机号码
						<div class="weui-cells weui-cells_form">

							<div class="weui-cell">
								<div class="weui-cell__bd">
									<input id="phone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*"
										placeholder="请输入您的手机号码">
								</div>
							</div>
							<div class="weui-cell weui-cell_vcode">
								<div class="weui-cell__bd">
									<input class="weui-input" type="number" pattern="[0-9]*" id="ccode"
										oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码">
								</div>
								<div class="weui-cell__ft">
									<button id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
								</div>
							</div>

						</div>
					</div>
					<div class="weui-dialog__ft">
						<a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确定</a>
					</div>
				</div>
			</div>

		<div class="js_dialog" id="iosDialog2" style="opacity: 1; display: none;">
			<div class="weui-mask"></div>
			<div class="weui-dialog">
				<div class="weui-dialog__bd c-c-b c-f-s-16">
					<span class="c-c-b">购物须知</span>
					<div class="weui-cells weui-cells_form">
						<div class="weui-cell" id="c-intro-wrapper">
							<div class="weui-cell__bd" style="max-height: 13rem; overflow-y: auto;">
								1.正品承诺：动品网出售的大部分商品已获得品牌商或总代授权，进货渠道正规，所出售的产品均为正品行货，承诺假一罚二。

								2.平民价格：动品网在产品定价上以让利顾客为主，更为合理的价格就能让顾客享受到专业体育器材的品质；再加上网站定期会推出 厂家让利活动，所以不再议价。

								3.产品色差：所有产品均为实物拍摄，我们的照片尽可能的与实物颜色保持一致，货品图片颜色大小因拍摄或计算机屏幕设定产生差异会 略有不同，以实际货品颜色大小为准。

								4.收货提醒：动品网使用第三方快递公司发货。您在收到产品包裹时务必当着第三方快递送货员的面拆包验货，确保货品完好。如果发现货品压损，可以直接拒收，然后联系客服中心（010-64663105或者010-56245509）为您重新换发您订购的产品。如没有进行检查货品，事后货品如损坏，动品网将无法赔付。

								5.关于缺货：动品网所上架的商品在销售过程中可能出现短期缺货的情况，而没有及时下架，造成您的订单中产品缺货的，动品网会及时告知，您可以根据自己的情况进行退款，取消订单或者换货。

								6.订单取消：所有订单在客服确认后三天没有付款的订单系统将会自动取消。在使用动品网券下单后，取消订单将导致动品网券失效，则无法返还。</div>
						</div>
					</div>
				</div>
				<div class="weui-dialog__ft">
					<a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-6">关闭</a>
				</div>
			</div>
		</div>

		<div class="js_dialog" id="iosDialog3" style="opacity: 1;display: none;">
			<div class="weui-mask"></div>
			<div class="weui-dialog">

				<div class="weui-flex">
					<div class="weui-flex__item">
						<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap"
							style="padding-bottom: 0">
							<div class="weui-media-box__bd">
								<div class="weui-media-box__hd" style="margin: 0 auto; width: 4rem; height: 4rem;">
									<img class="weui-media-box__thumb" src="${stax}/assets/images/index-9.jpg" alt="">
								</div>
								<h4 class="weui-media-box__title">爱奇艺会员</h4>
								<p class="weui-media-box__desc c-c-r">￥<span id="moneyspan">10.00</span></p>
							</div>

						</a>
					</div>
				</div>

				<div class="button-sp-area" style="margin: 0rem auto;">
					<input href="javascript:;" class="weui-btn weui-btn_plain-primary" style="line-height: 1.4" id="myphonediv"  type="tel" maxlength="11" pattern="[0-9]*" placeholder="请输入您的手机号码">
				</div>
				<div class="button-sp-area" style="margin: 0rem auto; padding-top: 0;">
					<a href="javascript:;" class="weui-btn weui-btn_plain-primary" style="line-height: 1.4"
						onclick="buyCoupon()">立即购买</a>
				</div>

				<div class="weui-dialog__bdc-f-s-16">
					<div class="weui-cells weui-cells_form">
						<div class="weui-cell" style="padding: 0 5px;">
							<div class="weui-cell__bd c-f-s-14" style="max-height: 6rem; overflow-y: auto; padding: 10px">
								1.正品承诺：动品网出售的大部分商品已获得品牌商或总代授权，进货渠道正规，所出售的产品均为正品行货，承诺假一罚二。

								2.平民价格：动品网在产品定价上以让利顾客为主，更为合理的价格就能让顾客享受到专业体育器材的品质；再加上网站定期会推出 厂家让利活动，所以不再议价。

								3.产品色差：所有产品均为实物拍摄，我们的照片尽可能的与实物颜色保持一致，货品图片颜色大小因拍摄或计算机屏幕设定产生差异会 略有不同，以实际货品颜色大小为准。

								4.收货提醒：动品网使用第三方快递公司发货。您在收到产品包裹时务必当着第三方快递送货员的面拆包验货，确保货品完好。如果发现货品压损，可以直接拒收，然后联系客服中心（010-64663105或者010-56245509）为您重新换发您订购的产品。如没有进行检查货品，事后货品如损坏，动品网将无法赔付。

								5.关于缺货：动品网所上架的商品在销售过程中可能出现短期缺货的情况，而没有及时下架，造成您的订单中产品缺货的，动品网会及时告知，您可以根据自己的情况进行退款，取消订单或者换货。

								6.订单取消：所有订单在客服确认后三天没有付款的订单系统将会自动取消。在使用动品网券下单后，取消订单将导致动品网券失效，则无法返还。</div>
						</div>
					</div>
				</div>

				<div class="weui-dialog__ft">
					<a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-6">取消</a>
				</div>
			</div>
		</div>

		<div class="weui-tab">
			<div class="weui-navbar weui-navbar-down">
				<div class="weui-navbar__item weui-bar__item_on">首页</div>
				<div class="weui-navbar__item" onclick="goPage('personal')">个人中心</div>
			</div>
		</div>
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/amazeui.swiper.min.js"></script>
	<script src="${stax}/assets/js/iscroll.js"></script>
	<script src="${stax}/assets/js/iscrollAssist.js"></script>
	<script src="${stax}/assets/js/common.js"></script>
	<script>
    
    var bankid = "${bankid}";
    var bankuid = "${bankuid}";


//     alert('${param.user_id}');
// 	localStorage.clear();
    $(function(){
    	
//     	if(!bankuid){
//     		weui.alert('尚未登录手机银行！跳转手机银行~');
//     		return;
//     	}else{
//     		getUserInfo();
//     	}
    	
    	if(!bankid){
//     		weui.alert('银行信息有误！');
//     		return;
    	}else{
//     		if(localStorage.getItem("bankId")){
//     			if(localStorage.getItem("bankId") != bankid){
//     				localStorage.clear();
//     			}
//     		}
    		//用浏览器存储
    		localStorage.setItem("bankId", bankid);
    	}
    	if(bankuid)
    		localStorage.setItem("bankuid", bankuid);

        /*弹出框1  绑定手机*/
        $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
        	register();
        });

        /*弹出框2  购物须知*/
        $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });

        /*弹出框3 购买信息*/
        $('#iosDialog3').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });

        
        /*底部tab切换*/
	    $('.weui-navbar__item').on('click', function () {
	        $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
	    });


        /*幻灯片*/
	    var mySwiper = new Swiper('.swiper-container', {
			autoplay: 2000,//可选选项，自动滑动
			pagination : '.swiper-pagination',
			paginationClickable :true
		});
        
	  	//用浏览器存储
	  	var indexUrl = "${indexUrl}";
	  	if(indexUrl) localStorage.setItem("indexUrl", '${indexUrl}');

	});
    
    //根据银行用户id获取系统用户信息
    /***function getUserInfo(){
    	var loading = weui.loading('正在加载...');	//loading
    	$.ajax({
			type: "GET",
			url: "${ctx}/getUserByBankuid.json",
			data: "bankuid="+bankuid+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.user){
					console.log(resp.user);
					setUserLocal(resp.user);
				}else{
					$('#iosDialog1').fadeIn(200);
					getCode();
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
    }*/
    
    function setUserLocal(user){
    	//用浏览器存储
		localStorage.setItem("userId", user.id);
		localStorage.setItem("userPhone", user.phone);
    }
    
	var bClick = false;
	var timer;
    function getCode(){
    	/*验证码倒计时*/
        var oBtn = document.getElementById("bpcodebtn");
        oBtn.onclick = function(){
            if(bClick == false && checkPhone($("#phone").val())){
		        $('#phone').attr("disabled",true);
	            bClick = true;
            	var loading = weui.loading('正在加载...');	//loading
            	$.ajax({
        			type: "GET",
        			url: "${ctx}/getcode.json",
        			data: "phone="+$('#phone').val()+"&r="+Math.random(),
        			success: function(resp){
        				loading.hide();
        				if(resp.msg && resp.msg.length > 0){
        					weui.alert(resp.msg);
        					$('#phone').attr("disabled",false);
        				}else{
        					$("#bpcodebtn").removeClass("c-c-b");
        					var s = 60;
        	                timer = setInterval(function(){
        	                    s--;
        	                    oBtn.innerHTML = s+"秒后重发";
        	                    
        	                    if(s == 0){
        	                    	initTimer();
        	                    } 
        	                },1000);
        				}
        			},
        			error:function(er){
        				loading.hide();
        				$('#phone').attr("disabled",false);
        				console.log(er);
        			}
            	});
            } 
        };
    }
    
    function initTimer(){
    	bClick = false;
    	$('#phone').attr("disabled",false);
        clearInterval(timer);
        $('#bpcodebtn').html("获取验证码").addClass("c-c-b");
    }
    
  	/*验证手机号*/
    function checkPhone(num){
    	var phone = parseInt(num);
	    var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
	    if(!reg.test(phone)){
	        weui.toast('请输入正确的手机号码', {
	            duration: 1000,
	            className: 'toast-warn',
	            callback: function(){
	                //document.querySelector("#phone").value = "";
	            }
	        });
	        return false;
	    }    
	    return true;
    }

    /*验证手机号*/
    $(document).on("input propertychange","#phone",function(e){
        if(e.type === "input" || e.orignalEvent.propertyName === "value"){         
            this.value=this.value.replace(/\D/gi,"");
            if(this.value.length == 11){
                if(checkPhone(this.value)){
                	$('#bpcodebtn').attr("disabled",false);
                	$("#bpcodebtn").addClass("c-c-b");
                }
            }else{
            	$('#bpcodebtn').attr("disabled",true);
            	$("#bpcodebtn").removeClass("c-c-b");
            }
        }
    });
  	
  	/**绑定手机**/
  	function register(){
  		
  		var phone = $('#phone').val();
  		var ccode = $('#ccode').val();
  		if(!checkPhone(phone))return;
  		if(!ccode){
  			weui.toast('请输入验证码', {
	            duration: 1000,
	            className: 'toast-warn',
	            callback: function(){
	            }
	        });
  			return;
  		}
  		var loading = weui.loading('正在加载...');	//loading
  		$.ajax({
			type: "GET",
			url: "${ctx}/register.json",
			data: "phone="+phone+"&code="+ccode+"&bankId="+localStorage.getItem("bankId")+"&bankuid="+localStorage.getItem("bankuid")+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.msg){
					$("#iosDialog1").hide();
					weui.alert(resp.msg,function(){
						$("#iosDialog1").show();
						$("#ccode").val("");
					});
					initTimer();
				}else if(resp.user){
					setUserLocal(resp.user);
					$('#iosDialog1').fadeOut(200);
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
  	}
  	
  	
  	
  	//参与活动
  	function goPage(flag){
  		
  		if(flag == 'personal'){	//个人中心
			var loading = weui.loading('正在加载...');	//loading
  			window.location.href = '${ctx}/userCenter/personal.do';
  			return;
  		}else if(!checkUser()) return;
  		
  		//2017.8.9 增加判断
	  	var addr = '<%=addr%>';
	  	var cango = false;
	  	if(addr){
	  		var prci = addr.split('-');
	  		if(prci.length >= 2){
	  			if('大连市' == prci[1]){
	  				cango = true;
	  			}
	  		}
	  	}
	  	
	  	if(!cango){
	  		weui.alert('抱歉，本活动为大连建行客户专享活动');
			if(!confirm('测试中放行')){
		  		return;
			}
	  	}
  		
		var loading = weui.loading('正在加载...');	//loading
  		if(flag == 'share'){	//邀请有礼
  	    	window.location.href = "${ctx}/invite/findShareCode.do?userId="+localStorage.getItem("userId");
  		}else if(flag == 'ping'){	//拼团
  	    	window.location.href = "${ctx}/pintuan/index.do";
  		}else if(flag == 'poem'){	//诗词
  	    	window.location.href = "${ctx}/poem/index.do?bankid="+localStorage.getItem("bankId")+"&userId="+localStorage.getItem("userId");
  		}else if(flag == 'shanrong'){	//惠购
  	    	window.location.href = "${ctx}/specialprod/index.do";
  		}
  	}
  	
  	var couponId = 0;
  	//购买优惠券
  	function showProd(obj){
  		if(!checkUser()) return;
//   		var phone = localStorage.getItem("userPhone");
//   		$('#iosDialog3 #myphonediv').html(phone);
//   		$('#iosDialog3 #moneyspan').html($(obj).attr('medata'));
//   		$('#iosDialog3 h4').html($(obj).find('h4').html());
//   		$('#iosDialog3 img').attr('src', $(obj).find('img').attr('src'));
//   		$('#iosDialog3').fadeIn(200);
//   		couponId = $(obj).attr('iddata');
		//7.13改为跳转页面
		var loading = weui.loading('正在加载...');	//loading
  		window.location.href = "${ctx}/coupon/buypage.do?id="+$(obj).attr('iddata');
  	}
  	
  	function checkUser(){
  		//修改为根据本系统userID判断是否需要登录
		if(!localStorage.getItem("userId")){
			$('#iosDialog1').fadeIn(200);
			getCode();
			return false;
		}
		return true;
  	}
  	
  	function buyCoupon(){
  		var userId = localStorage.getItem("userId");
  		var phone = $('#myphonediv').val();
  		var money = $('#moneyspan').text();
  		if(!checkPhone(phone)){
  			loading.hide();
  			return;
  		}
  		var loading = weui.loading('正在加载...');
  		$.ajax({
			type: "POST",
			url: "${ctx}/buyCoupon.json",
			data: "phone="+phone+"&userId="+userId+"&couponId="+couponId+"&money="+money+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.errMsg)
					weui.alert(resp.errMsg);
				else if(resp.orderInfo)
					weui.alert('跳转付款页面');
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
  	}
 
    function checkLength(obj,n){
        //obj.value = obj.value.replace(/\D/g,'')
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }
    window.onload=function(){

        
        if(!localStorage.ifLoadFirst){
        	setTimeout(function(){
        		iscrollObj = iscrollAssist.newVerScrollForPull(
		            $('#wrapper')
		        );
// 		        window.location.reload();
        	},1500);
        	localStorage.ifLoadFirst = '1';

        }else{
        	iscrollObj = iscrollAssist.newVerScrollForPull(
	            $('#wrapper')
	        )
        }
        

    	$("#c-a1").on("tap",function(){
    		goPage('share');
    	});
    	$("#c-a2").on("tap",function(){
    		goPage('ping');
    	});
		$("#c-a3").on("tap",function(){
    		goPage('poem');
    	});
		$("#c-a4").on("tap",function(){
    		goPage('shanrong');
    	});
		$("#c-b0").on("tap",function(){
    		$('#iosDialog2').fadeIn(200);
    	});

	  	$(".c-bdth-tap").on("tap",function(){
	  		if(!checkUser()) return;
	  		var loading = weui.loading('正在加载...');
	  		window.location.href = "${ctx}/coupon/buypage.do?id="+$(this).attr('iddata');
	  	})

	  	$("#c-login-close").on("click",function(){
	  		$("#iosDialog1").hide();
	  	})
	};
</script>
</body>
</html>
