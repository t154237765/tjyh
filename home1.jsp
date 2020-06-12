<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <!-- 识别客户端 -->
   <script type="text/javascript">
    	var hfl = "${hflag}";
    	if(hfl && hfl.indexOf("CCBWebView") > -1){
    		
    	}/* else{alert('请您使用建行手机银行客户端，体验精彩纷呈的“天津惠”');
            location.href="${ctx}/jsp/120.jsp";
        } */
    </script>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>天津首页</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/animate.min.css"/>
    <style type="text/css">
    	.weui-media-box{padding:10px 15px;}
    	.swiper-container {width: 100%;height: 6.7rem;}
		.swiper1{background: url(${stax}/assets/images/sw_jyb.jpg) no-repeat 50% top;background-size: contain;}
		.swiper2{background: url(${stax}/assets/images/sw_sg.jpg) no-repeat 50% top;background-size: contain;}
 		.swiper3{background: url(${stax}/assets/images/swiper13.jpg) no-repeat 50% top;background-size: contain;}
		.swiper4{background: url(${stax}/assets/images/swiper15.jpg) no-repeat 50% top;background-size: contain;} 
		.swiper5{background: url(${stax}/assets/images/daliantupian.jpg) no-repeat 50% top;background-size: contain;}
/* 		.swiper6{background: url(${stax}/assets/images/swiper6.jpg) no-repeat 50% top;background-size: contain;} */
 		.swiper7{background: url(${stax}/assets/images/swiper16.jpg) no-repeat 50% top;background-size: contain;}
/* 		.swiper8{background: url(${stax}/assets/images/swiper8.jpg) no-repeat 50% top;background-size: contain;} */
/* 		.swiper9{background: url(${stax}/assets/images/fangjia.jpg) no-repeat 50% top;background-size: contain;} */
/* 		.swiper10{background: url(${stax}/assets/images/shici2.jpg) no-repeat 50% top;background-size: contain;} */
 		.swiper11{background: url(${stax}/assets/images/swiper17.jpg) no-repeat 50% top;background-size: contain;}
 		.swiper12{background: url(${stax}/assets/images/banner.jpg) no-repeat 50% top;background-size: contain;}
		.swiper21{background: url(${stax}/assets/images/credit-card.jpg) no-repeat 50% top;background-size: contain;}
		.swiper13{background: url(${stax}/assets/images/banner.jpg) no-repeat 50% top;background-size: contain;}
/* 		.swiper22{background: url(${stax}/assets/images/swiper8.jpg) no-repeat 50% top;background-size: contain;} */
        .swiper-container-horizontal>.swiper-pagination-bullets, .swiper-pagination-custom, .swiper-pagination-fraction{bottom: 10px;}
        .c-index-hot{background: #fff;margin-top: 5px;}
        .c-index-hot h3 {font-size: .7rem;padding:4px 7px;padding-left: 15px;position: relative;}
        .hbc{background: url(${stax}/assets/images/inbh.jpg) no-repeat;background-size:100% 100%;}
        .hbc .c-remenhd{margin-right: 2px;}
        .c-remenhd {width: 20px;height: 20px;display: inline-block;vertical-align: sub;}
        .c-index-hot .weui-flex{border-top:1px solid #eee;border-bottom:1px solid #eee;padding: padding:15px;}
        .c-index-hot .weui-flex:nth-child(2){border-bottom:0;}
        .c-index-hot .weui-media-box__hd img{width: 3.2rem;}
        .weui-flex .weui-flex__item:nth-child(odd){border-right:1px solid #eee;}
        a.weui-media-box:active{background: #fff;}
        .weui-navbar__item{background:#eee;color:#666;}
        .weui-navbar-down,.weui-navbar__item.weui-bar__item_on{background: #0066b3;color:#fff;}
        .weui-navbar__item.weui-bar__item_on{color:#fff;}
        #local-special .weui-flex__item{border:0;width:4.9rem;}
        #local-special .weui-flex{padding:15px;}
        .weui-media-box_appmsg .weui-media-box__hd{margin-right:0;}
        #local-special .weui-media-box__hd img{border-radius:0;height:2.8rem;width:2.8rem;margin: 0 auto;}
        .weui-media-box__desc{font-size: 12px;color:#666;}
        #local-special a.weui-media-box{padding:0;}
        #local-special .weui-media-box__bd{margin-right: 4px;background:#fff;border-radius: 10px;padding: 4px;text-align: center;}
        .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        /*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#0066b3;}
        .js_dialog input.weui-input{color:#333;}
        .buyNote{float: right;margin-right: 15px;}
        .weui-tab{height:auto;}
        .weui-dialog{overflow: visible;}
        .c-login-close{position: absolute;top: -1rem;right: -1rem;color: #fff;}
        #c-intro-wrapper{padding: 0 5px;}
        .weui-cells:before,.weui-cells:after{border: 0;}
        .titleBar-text {width: 100%;padding-left: 0;}
        #wrapper{overflow:auto;/* winphone8和android4+ */
-webkit-overflow-scrolling: touch; /* ios5+ */}
#local-special .weui-media-box_appmsg h4{font-size: .7rem;}
	.winnotice{}
	.winnotice h3{width:4.4rem;border-right:1px solid #eee;display:inline-block;}
	.winnotice span{color:#45c9b4;font-size: 12px;width: 203px;display: inline-block;vertical-align: middle;margin-left: -5px;}
	@media screen and (max-width : 321px)  {
        .winnotice span{font-size: 12px;}
    }
	@media screen and (min-width : 359px)  {
        .winnotice span{width: 228px;}
    }
	@media screen and (min-width : 374px)  {
        .winnotice span{width: 238px;}
    }
    
    #limit-sale .buyNote{background: #fff;color:#ff0000;float:none;padding:2px 2px;border-radius: 3px;font-size: .6rem;margin-left:.6rem;margin-right:.1rem;}
    #limit-sale .weui-media-box_appmsg h4{font-size:.6rem;text-align: center;}
    #limit-sale .weui-media-box__hd{text-align: center;margin:0 auto;}
    #limit-sale .weui-media-box__hd img{width: 3rem;margin:0 auto;}
    #limit-sale .weui-flex .weui-flex__item:nth-child(odd){border-right: 0;}
    #limit-sale .weui-flex .weui-flex__item:nth-child(1),#limit-sale .weui-flex .weui-flex__item:nth-child(2){border-right: 1px solid #eee;}
	#limit-sale .weui-media-box__desc{font-size: .7rem;color: red;}
	#limit-sale .weui-media-box__desc span{font-size: .6rem;color: #999;text-decoration: line-through;}
	#limit-sale .weui-media-box{padding: 13px;padding-top:5px;}
	#iosDialog3 .weui-cell__bd{max-height: 8rem;font-size: .6rem;}
	#iosDialog3 .weui-dialog__bd{padding:0 1em .8em;}
	#iosDialog3 .weui-media-box__hd,#iosDialog3 .weui-media-box__hd img{text-align: center;margin:0 auto;}
	.lijgm{border:1px solid #09b6f2;border-radius:50px;height: 1.6rem;line-height: 1.6rem;vertical-align: middle;color: #09b6f2;margin-top:15px;}
	#limit-sale{color: #fff;}
	.jlks{color: #333;font-size: 12px;position: absolute;right: 1.1rem;top: .1rem;}
	.countdown{color:#fff;position: absolute;right: .4rem;bottom:.3rem;font-size: .6rem;}
	.countdown a{color: #fff;background: #482106;border-radius:3px;padding:0px 2px;margin-right:0px;}
	@media screen and (min-width : 374px)  {
        .winnotice span{width: 238px;}
        #limit-sale .buyNote{margin-left: .7rem;}
    }
	@media screen and (min-width : 383px)  {
        .winnotice span{width: 243px;}
        #limit-sale .buyNote{margin-left: .7rem;}
    }

	@media screen and (min-width : 413px)  {
        .winnotice span{width: 262px;}
        #limit-sale .buyNote{margin-left: .9rem;}
    }
    .restalert,.ginfoalert{width: 70%;height:40%;background: #fff;position: absolute;top: 20%;left: 10%;z-index: 1000;border-radius: 5px;padding:1rem 1rem;}
.c-close2 {width:1.2rem;height:1.2rem;background: url(${stax}/assets/images/bottom-close2.png) no-repeat;position: absolute;right: -18px;top:-30px;background-size:contain;z-index: 1000}
.restalert .text1,.ginfoalert .text1 {font-size: .7rem;overflow-y: auto;height: 100%}
.zhezhao {position: absolute;top: 0;left: 0;bottom: 0;right: 0;background: #000;opacity: .5;z-index: 999;}
#ginfo{position: absolute;z-index: 989;margin-left:12.6rem;margin-top: -.5rem;}
#ginfo img{width:2.8rem;height:3.2rem;}
.c-index-hot .weui-flex__item{width:6rem;}
#toast-holdon .weui-toast{height: 2.6rem;min-height: initial;}
#toast-holdon .weui-toast p{height: 2.5rem;line-height: 2.6rem;vertical-align: middle;}
.mygoldbean{font-size:.7rem;text-align:center;border-bottom: 1px solid #eee;}
.mygoldbean h3,.mygoldbean img{display:inline-block;}
.mygoldbean img{width:1.3rem;height:1rem;}
.goldbean{vertical-align:sub;}
.c-fr{float:right;}
.c-oldprice {
    text-decoration: line-through;
    color: #aaa;
    margin-left: 10px;
}
#willopen .weui-media-box__hd img{    border-radius: 0;
    height: 2.8rem;
    width: 2.8rem;
    margin: 0 auto;}
    #local-special .weui-media-box__bd{margin-right:0;border-radius:0px;padding-top: 15px;padding-bottom: 15px;border-bottom: 1px solid #eee;border-right: 1px solid #eee;}
    #local-special .weui-flex{padding:0px;}
    .c-f-s-16{font-size:.7rem;}
    .c-oldprice{margin-left:0;}
    #local-special .weui-media-box__bd{padding: .5rem;}
    .pri{text-align:center;}
    #willopen a.weui-media-box{padding:5px 0;}
    .c-l-h-n{line-height:1.2;}
    #willopen .weui-media-box_appmsg .weui-media-box__bd{text-align:center;}
    .weui-media-box_appmsg h4{font-size:.7rem;}
    #willopen .c-oldprice{line-height: .8;}
    .weui-icon-info-circle{font-size:15px;color:#ffa914;}
    [class*=" weui-icon-"]:before, [class^=weui-icon-]:before{margin-left:0;margin-top:-12px;}
    .c-card-erea{background:url(${stax}/assets/images/credit-card.jpg) no-repeat;background-size:100%;height:6rem;}
    #mySwiper1 .swiper-pagination-bullet{display:none;}
    .swiper22 img{
    	width:100%;
    	height:100%;
    }
    .date{width:100%;position:absolute;top:1.2rem;text-align:center;color:#BB2A09;font-weight:bold;font-size:0.64rem;letter-spacing:0.05rem;}
    .text{width:100%;position:absolute;top:2.15rem;text-align:center;color:#EE5B1A;font-weight:bold;letter-spacing:0.1rem;line-height:2rem;}
    input[type="checkbox"]{width:0.7rem;height:0.7rem;border:0.05rem solid #B5B5B5;border-radius:0.1rem;margin-right:0.1rem;}
    
    #reg{width:100%;height:100%;position:fixed;z-index:10000;display:none;}
    .titleBar-text{padding-left: 0;width: 100%;}
    .rule{width:92%;height:92%;background:#fff;margin-top:44px;padding:4%;overflow:scroll;}
    .rule p{font-size:0.6rem;text-indent:2em;}
</style>
</head>
<body>
	<div class="zhezhao" style="display: none;"></div>
	<div class="restalert" style="display: none;">
    	<div class="c-close2"></div>
        <div class="text1">
<!--         <p style="font-size:.8rem;text-align:center;margin-bottom:10px;">劳动节期间放假通知</p> -->
尊敬的顾客朋友：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好！<br />
&nbsp;&nbsp;&nbsp;&nbsp;因系统升级，8月11日凌晨3:00-6:30，“天津惠”平台暂停相关支付交易，由此带来的不便，我们深表歉意。感谢您关注建行“天津惠”平台！<br />

        </div>
    </div>
	<div class="titleBar">
			<div class="titleBar-text am-text-truncate">天津惠</div>
	</div>
	<div class="container" style="overflow-x: hidden;" id="wrapper">
		<div id="dataArea">
			<div class="c-content" style="padding-bottom: 20px;">
				<!-- Slider main container -->
				<div class="swiper-container" id="mySwiper">
					<!-- Additional required wrapper -->
					<div class="swiper-wrapper" id="lbtimg">
						<!-- Slides -->
<!--  						<div class="swiper-slide swiper11"></div> -->
<!-- 						<div class="swiper-slide swiper10"></div> -->
						<div class="swiper-slide swiper1"></div>
						<div class="swiper-slide swiper2"></div>
					</div>
					<!-- If we need pagination -->
					<div class="swiper-pagination"></div>
				</div>
				
				<div class="c-index-hot mygoldbean">
					<div id="ginfo"><img src="${stax}/assets/images/indoor.png"></div>
					<img class="goldbean" src="${stax}/assets/images/goldbean.jpg" /> <span id="user_ingot_num">0</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<img class="heart" src="${stax}/assets/images/heart.png" style="vertical-align: sub"/> <span id="user_vitality_num">0</span>
					<i class="weui-icon-info-circle"></i>
				</div>
				
				<div class="winnotice c-index-hot" style="margin-top:0;border-top: 1px solid #eee;border-bottom: 1px solid #eee;display:none;">
					<h3>
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/laba.jpg">中奖公告
					</h3>
					<!-- <span class="am-text-truncate bounceInRight animated" id="winner"></span> -->
				</div>
					
				<div class="c-index-hot" style="position: relative;margin-top:0;">
					
					<h3>
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/index-hot.jpg">热门活动
						<span class="c-fr" style="display: none;">更多</span>
					</h3>
					<div class="weui-flex">
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg" id="c-a1">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">半价抢购</h4>
									<p class="weui-media-box__desc">Apple系列产品</p>
								</div>
								<div class="weui-media-box__hd">
									<img class="weui-media-box__thumb" src="${stax}/assets/images/index-12.png" alt="">
								</div>
							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg" id="c-a2">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">诗词大会</h4>
									<p class="weui-media-box__desc">知识储备换大奖</p>
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
									<h4 class="weui-media-box__title">兑奖专区</h4>
									<p class="weui-media-box__desc">兑奖专区 优惠多多</p>
								</div>
								<div class="weui-media-box__hd">
									<img class="weui-media-box__thumb" src="${stax}/assets/images/index-3.jpg" alt="">
								</div>
							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg"  id="c-a4">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">支行活动</h4>
									<p class="weui-media-box__desc">支行活动福利多</p>
								</div>
								<div class="weui-media-box__hd">
									<img class="weui-media-box__thumb" src="${stax}/assets/images/index-4.jpg" alt="">
								</div>
							</a>
						</div>
					</div>


					
				</div>

				
				<div class="c-index-hot" id="limit-sale" style="opacity: 1;">
					<h3 class="hbc">
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/kaiqiang.png">限时抢购
						<span class="c-c-b buyNote">10点开抢</span>
						<span class="countdown">
							<!-- <a class="a0" style="padding: 0px 3px;">00</a>-->
							<a class="aF" style="background: none;color: #333;font-size: 12px;padding: 0;margin:0;margin-left:-1px;">距离开始: </a>
							<a class="a1">00</a>
							<a style="background: none;margin-right: 0;color:#482106;padding: 0;">:</a>
							<a class="a2">00</a>
							<a style="background: none;margin-right: 0;color:#482106;padding: 0;">:</a>
							<a class="a3">00</a>
						</span>
					</h3>
					<div class="weui-flex" id="lsdiv">
						
					</div>
 				</div>

				<div class="c-index-hot" id="willopen" style="margin-top:0">
					<div id="seckillArea" class="weui-flex">
					</div>

				</div>
				<div class="c-index-hot" id="xinyongka">
					
					<h3 class="">
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/index-local2.jpg"><span>信用卡专区</span>
					</h3>
					<div class="swiper-container" id="mySwiper1">
					<!-- Additional required wrapper -->
					<div class="swiper-wrapper">
						<div class="swiper-slide swiper21"></div>
						<div class="swiper-slide swiper22">
							<img src="${stax}/assets/images/kdj.jpg"/>
						</div>
					</div>
					<div class="swiper-pagination"></div>
				</div>

				</div>
				<div class="c-index-hot" id="local-special">
					
					<h3 class="hbc">
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/index-local.jpg"><span style="color:#fff">本地特惠</span>
						<span class="c-fr" style="display: none;">更多</span>
					</h3>

				</div>
				<div id="c-block-bottom" style="width:100%;height:2rem;"></div>
				

			</div><!--end c-content-->
			
		</div><!--end dataArea-->
	</div>
	<!-- end container -->
	<div class="js_dialog" id="iosDialog1" style="opacity: 1; display: none;">
			<div class="weui-mask"></div>
			<div class="weui-dialog">
				<i class="weui-icon-cancel c-login-close" id="c-login-close"></i>
				<div class="weui-dialog__bd c-f-s-16" style="padding-top: 1.1em;color:#333;">

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
								<input class="weui-input" type="text" style="ime-mode:disabled;" onpaste="return false;" pattern="[0-9]*" id="ccode"
									oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码" onkeypress="keyPress()">
							</div>
							<div class="weui-cell__ft">
								<button id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
							</div>
						</div>
						<div class="weui-cell weui-cell_vcode" style="font-size:0.5rem">					
							<input type="checkbox" id="checked" checked="checked" />我已阅读并同意
							<a class="register" href="#" style="text-decoration:underline;color:#1752C9;font-size:0.5rem;letter-spacing:0.05rem;">《注册必读》</a>
						</div>

					</div>
				</div>
				<div class="weui-dialog__ft">
					<a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b" id="btn">确定</a>
				</div>
			</div>
		</div>
<!-- 		领取津元宝 -->
		<div class="js_dialog" id="iosDialog4" style="opacity: 1; display: none;">
			<div class="weui-mask"></div>
			<div class="weui-dialog">
				<i class="weui-icon-cancel c-login-close" id="c-login-close1"></i>
				<div class="weui-dialog__bd c-f-s-16 goinfos" style="padding-top:3em;color:#333;padding-bottom:2em;">
					成功领取1锭津元宝
				</div>
				<div class="weui-dialog__ft">
					<a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b" id="goingoinfo1">点击查看</a>
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
							<div class="weui-cell__bd" style="max-height: 13rem; overflow-y: auto;text-align: left;">
								&nbsp;&nbsp;&nbsp;&nbsp;1.正品承诺：动品网出售的大部分商品已获得品牌商或总代授权，进货渠道正规，所出售的产品均为正品行货，承诺假一罚二。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								2.平民价格：动品网在产品定价上以让利顾客为主，更为合理的价格就能让顾客享受到专业体育器材的品质；再加上网站定期会推出 厂家让利活动，所以不再议价。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								3.产品色差：所有产品均为实物拍摄，我们的照片尽可能的与实物颜色保持一致，货品图片颜色大小因拍摄或计算机屏幕设定产生差异会 略有不同，以实际货品颜色大小为准。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								4.收货提醒：动品网使用第三方快递公司发货。您在收到产品包裹时务必当着第三方快递送货员的面拆包验货，确保货品完好。如果发现货品压损，可以直接拒收，
									然后联系客服中心（010-64663105或者010-56245509）为您重新换发您订购的产品。
									如没有进行检查货品，事后货品如损坏，动品网将无法赔付。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								5.关于缺货：动品网所上架的商品在销售过程中可能出现短期缺货的情况，而没有及时下架，造成您的订单中产品缺货的，动品网会及时告知，您可以根据自己的情况进行退款，取消订单或者换货。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								6.订单取消：所有订单在客服确认后三天没有付款的订单系统将会自动取消。在使用动品网券下单后，取消订单将导致动品网券失效，则无法返还。<br/></div>
						</div>
					</div>
				</div>
				<div class="weui-dialog__ft">
					<a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-6">关闭</a>
				</div>
			</div>
		</div>

		<div id="toast-holdon" style="display: none;">
	        <div class="weui-mask_transparent"></div>
	        <div class="weui-toast">
	            <p class="weui-toast__content">即将上线 敬请期待</p>
	        </div>
    	</div>
		<!--<div class="js_dialog" id="iosDialog3" style="opacity: 1;display: none;">
			<div class="weui-mask"></div>
			<div class="weui-dialog" style="padding-top: 1rem;">
				<i class="weui-icon-cancel c-login-close" id="c-login-close"></i>
				<div class="weui-dialog__bd c-f-s-16">
					<div class="weui-media-box__hd">
						<img class="weui-media-box__thumb" src="" alt="">
					</div>
					<input id="lsid" style="display: none;" value=""/>
					<p style="font-size: .7rem;color: #333;margin-bottom:5px;" id="lsname"></p>
					<p style="font-size: .7rem;color: red;">￥ <span id="lsmoney"></span>
						<span style="font-size: .6rem;color: #999;text-decoration: line-through;">￥<span id="lsomoney"></span></span>
					</p>
					<div class="lijgm">立即购买</div>
					<div style="color: red; display: none; text-align: center; font-size: .5rem;" id="msgdiv"></div>
					<div class="weui-cells weui-cells_form">
						<div class="weui-cell" id="c-intro-wrapper">
							<div class="weui-cell__bd" style="overflow-y: auto;text-align: left;">
								&nbsp;&nbsp;&nbsp;&nbsp;1.正品承诺：动品网出售的大部分商品已获得品牌商或总代授权，进货渠道正规，所出售的产品均为正品行货，承诺假一罚二。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								2.平民价格：动品网在产品定价上以让利顾客为主，更为合理的价格就能让顾客享受到专业体育器材的品质；再加上网站定期会推出 厂家让利活动，所以不再议价。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								3.产品色差：所有产品均为实物拍摄，我们的照片尽可能的与实物颜色保持一致，货品图片颜色大小因拍摄或计算机屏幕设定产生差异会 略有不同，以实际货品颜色大小为准。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								4.收货提醒：动品网使用第三方快递公司发货。您在收到产品包裹时务必当着第三方快递送货员的面拆包验货，确保货品完好。如果发现货品压损，可以直接拒收，
									然后联系客服中心（010-64663105或者010-56245509）为您重新换发您订购的产品。如没有进行检查货品，事后货品如损坏，动品网将无法赔付。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								5.关于缺货：动品网所上架的商品在销售过程中可能出现短期缺货的情况，而没有及时下架，造成您的订单中产品缺货的，动品网会及时告知，您可以根据自己的情况进行退款，取消订单或者换货。<br/>&nbsp;&nbsp;&nbsp;&nbsp;

								6.订单取消：所有订单在客服确认后三天没有付款的订单系统将会自动取消。在使用动品网券下单后，取消订单将导致动品网券失效，则无法返还。<br/></div>
						</div>
					</div>
				</div>
			</div>
 		</div> -->

		<div class="weui-tab">
			<div class="weui-navbar weui-navbar-down">
				<div class="weui-navbar__item weui-bar__item_on">首页</div>
				<div class="weui-navbar__item" onclick="goPage('personal')">个人中心</div>
			</div>
		</div>
		
				
		<!-- 注册必读 -->
		<div id="reg">
			<div class="titleBar">
	             <div class="titleBar-back">
	                 <i class="fa fa-angle-left" aria-hidden="true"></i>返回
	             </div>
	            <div class="titleBar-text am-text-truncate">注册必读</div>
	        </div>
	        <div class="rule">
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
	        	<p style="margin-bottom:1rem;">“天津惠”平台的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-23400200。</p>
	        	
	        </div>
		</div>
		
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/amazeui.swiper.min.js"></script>
	<script src="${stax}/assets/js/iscroll.js"></script>
	<script src="${stax}/assets/js/iscrollAssist.js"></script>
	<script src="${stax}/assets/js/fastclick.js"></script>
	<script src="${stax}/assets/js/common.js"></script>
	<script type="text/javascript">
	
	var ronglians = "15801420801,15711077673,18410422633"
		+",13240191681,13520607390,13810080187,15010197763,13641365154,13520590906,18515975396,13120305775";
var bankers = "";
var whitenums = ronglians+bankers;
		
		/*var prizeHtml = new Array();
		//中奖公告
		var dalist = ${prizeList};
		if (dalist.length > 0) {
			for (var i = 0; i < dalist.length; i++) {
				prizeHtml.push(dalist[i].phone + "在" + dalist[i].aname + "获得" + dalist[i].name);
			}
		}*/
		
		//入门好礼
		$("#ginfo").on("click",function(){
			goPage("sg");

		});
		
		
 	//localStorage.clear();

	var bankid = "${bankid}";
    var bankuid = "${bankuid}";
	
    $(function(){
//     	根据内容改变字体大小
		function changeSize(){
			var size = $(".text").text().length;
			if(size > 8){
				$(".text").css("font-size","0.6rem")
			}else{
				$(".text").css("font-size","1.2rem")
			}
		}	
    	
    	/*if (prizeHtml.length > 0){
		    var i = 0;
	    	
			$(".winnotice").append('<span class="am-text-truncate fadeInUp animated" id="winner">'+prizeHtml[i]+'</span>');
			var timer = setInterval(function(){
				$("#winner").remove();
				i++;
				if(i===prizeHtml.length) i = 0;
				
				$(".winnotice").append('<span class="am-text-truncate fadeInUp animated" id="winner">'+prizeHtml[i]+'</span>');
			},3000);
	    }else{
	    	$(".winnotice").append('<span class="am-text-truncate fadeInUp animated" id="winner">&nbsp;&nbsp;暂无人中奖</span>');
	    }*/

	    $(document).ready(function() {
	        /*替换click*/
	        FastClick.attach(document.body); 
	    });
	  
	  //增加轮播图
	 	addLBT();
	    function addLBT(){
	    	$.ajax({
	    		url:'${ctx}/lbt/lbtinfos.json',
	    		type:'post',
	    		data:'r='+Math.random(),
	    		success:function(resp){
	    			var images = resp.list;
	    			
	    			
	    		
	    			if(images.length > 0){
	    				
	    				for(var i = 0; i < images.length; i++){
	    					var size = images[i].holidayDescr.length;
	    					
	    					var img = '<div class="swiper-slide swiper12" onclick="lqjyb(\''+images[i].lbtpid+'\')">'+
		    					'<p class="date">'+images[i].holidayName+'</p>'+
								'<p class="text">'+images[i].holidayDescr+'</p>'+
								'<img src="${stax}/assets/images/button.png" style="width:4rem;position:absolute;left:6rem;top:4.3rem;"/>'+
	    						'</div>';
	    					 $("#mySwiper .swiper-wrapper").prepend(img); 
//	 	    				控制字体显示大小
	    					if(images[i].holidayDescr.length > 8){
	    						$(".text").eq(i).css("font-size","0.6rem");
	    					}else{
	    						$(".text").eq(i).css("font-size","1.2rem");
	    					}
		    				
	    				}

	    		
	    			};
	    			
	    		}
	    	
	    	});
	    };
	    
	    var isClear = false;
	    if (localStorage.getItem("bankuid")){
	    	//判断是否用新的建行用户登录
	    	if(localStorage.getItem("bankuid") != bankuid){
	    		localStorage.removeItem("userId");
	    	}else{
		    	//isClear = findmsg(localStorage.getItem("userid"),localStorage.getItem("bankuid"));
		    	$.ajax({
					type:"POST",
					url:"${ctx}/tjhui/findmsg.json?ud="+encodeURIComponent(localStorage.getItem("userId"))+"&bd="+localStorage.getItem("bankuid")+"&r="+Math.random(),
					success:function(req){
						isClear = req.msg;
						if(isClear==true){
							localStorage.removeItem("userId");
						
						}
						resetUser();
					},
					error:function(er){
						
					}
				});
	    	}
	    	
	    }    	
	    
    	if(bankid && !isClear){
    		localStorage.setItem("bankId", bankid);
    	}
    	if(bankuid && !isClear){
    		localStorage.setItem("bankuid", bankuid);    		    		
    	}

    	$(".weui-icon-info-circle").on("click",function(){
    		weui.alert(
    				'<div style="text-align:left;text-indent:15px">“天津惠”平台货币“津元宝”<img class="goldbean" src="${stax}/assets/images/goldbean.jpg" style="width:26px;height:20px;display:inline-block">，可通过入门红包、诗词大会过关抽奖、本地特惠购买商品后抽奖、建行手机银行摇一摇抽奖等方式获取，用于兑奖专区兑奖、本地特惠抵扣现金使用。<br/><br/></div><div style="text-align:left;text-indent:15px">客户在“天津惠”平台每发起一次支付交易，无论支付交易是否成功，都会消耗一点<img class="goldbean" src="${stax}/assets/images/heart.png" style="width:26px;height:20px;display:inline-block">，<img class="goldbean" src="${stax}/assets/images/heart.jpg" style="width:26px;height:20px;display:inline-block">每天24点自动恢复为满值18点。</div>'
    				);
    	})

        /*弹出框1  绑定手机*/
        $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
        	if($("#checked").prop("checked") == true){
	    		register();
	    	}
        	
        });

        /*弹出框2  购物须知*/
        $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });

        /*弹出框3 购买信息*/
//         $('#iosDialog3').on('click', '.weui-dialog__btn', function(){
//             $(this).parents('.js_dialog').fadeOut(200);
//         });

        $(".c-close2").on("click",function(){
	        $(".zhezhao,.restalert,.ginfoalert").hide();
	    });
        
        /*底部tab切换*/
	    $('.weui-navbar__item').on('click', function () {
	        $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
	    });


        /*swiper轮播图*/
	    var mySwiper = new Swiper('.lunbotu', {
	    	preventClicks : true,//阻止默认事件（preventDefault），防止触摸时触发链接跳转。
	    	loop : true,//设置为true 则开启loop模式,让Swiper看起来是循环的.
			autoplay: 1000,//自动切换的时间间隔（单位ms），不设定该参数slide不会自动切换。
			effect : 'fade',	//slide的切换效果，默认为"slide"（位移切换）。
			pagination : '.swiper-pagination'
			
		});
        function lunbotu(){
        	var mySwiper = new Swiper('.swiper-container', {
    	    	preventClicks : true,//阻止默认事件（preventDefault），防止触摸时触发链接跳转。
    	    	loop : true,//设置为true 则开启loop模式,让Swiper看起来是循环的.
    			autoplay: 1000,//自动切换的时间间隔（单位ms），不设定该参数slide不会自动切换。
    			effect : 'fade',	//slide的切换效果，默认为"slide"（位移切换）。
    			pagination : '.swiper-pagination',	//分页器容器的css选择器。
    			preventLinksPropagation : false,	//阻止click冒泡。拖动Swiper时阻止click事件。
    			slideToClickedSlide:true,		//设置为true则点击slide会过渡到这个slide。
    			autoplayDisableOnInteraction : false,	//用户操作swiper之后，是否禁止autoplay。默认为true：停止。
    			paginationClickable :true,   //设置为true时，分页器会控制Swiper切换,默认：false。
    			observer:true,//修改swiper自己或子元素时，自动初始化swiper
     	        observeParents:true,//修改swiper的父元素时，自动初始化swiper
     	        onSlideChangeEnd: function(swiper){ 
     	          swiper.update(); //swiper更新
     	        } 
    		});
        }
 
       	var mySwiper = new Swiper('.swiper-container', {
   	    	preventClicks : true,//阻止默认事件（preventDefault），防止触摸时触发链接跳转。
   			autoplay:5000,//自动切换的时间间隔（单位ms），不设定该参数slide不会自动切换。
   			effect : 'fade',	//slide的切换效果，默认为"slide"（位移切换）。
   			pagination : '.swiper-pagination',	//分页器容器的css选择器。
   			preventLinksPropagation : false,	//阻止click冒泡。拖动Swiper时阻止click事件。
   			slideToClickedSlide:true,		//设置为true则点击slide会过渡到这个slide。
   			autoplayDisableOnInteraction : false,	//用户操作swiper之后，是否禁止autoplay。默认为true：停止。
   			paginationClickable :true,   //设置为true时，分页器会控制Swiper切换,默认：false。
   			observer:true,//修改swiper自己或子元素时，自动初始化swiper
   	        observeParents:true,//修改swiper的父元素时，自动初始化swiper
   	        onSlideChangeEnd: function(swiper){ 
   	          swiper.update(); //swiper更新
   	        } 
   		});
        
	  	//用浏览器存储
	  	var indexUrl = "${indexUrl}";
	  	if(indexUrl) localStorage.setItem("homeUrl", '${indexUrl}');
	  	
	  //信用卡专区
		$(".swiper21").on("click",function(){
			goPage("xyk");

		});
		$(".swiper22").on("click",function(){
			goPage("kdj");

		});
		//世界杯
		$(".swiper11").on("click",function(){
			goPage("wcup");

		});

	});
    
    
   function  resetUser(){
	  	if(localStorage.getItem("userId")){
	  		//重设user信息
	  		var loading = weui.loading('正在加载...');	//loading
	    	$.ajax({
				type: "GET",
				url: "${ctx}/tjhui/resetUser.json",
				data: "id="+encodeURIComponent(localStorage.getItem("userId"))+
					"&bankid="+localStorage.getItem("bankId")+"&bankuid="+bankuid+"&r="+Math.random(),
				success: function(resp){
					loading.hide();
					if(resp.user){
// 						console.log(resp.user);
						setUserLocal(resp.user);
						$('#user_ingot_num').html(resp.user.ingotnum);
						$('#user_vitality_num').html(resp.user.vitality);
					}else{
						localStorage.removeItem("userId");
						localStorage.removeItem("userPhone");
					}
				},
				error:function(er){
					loading.hide();
					console.log(er);
				}
	    	});
	  	}
   }
    

    
    /*toast-敬请期待*/
	function comingsoon() {
		var $toast = $('#toast-holdon');
		if ($toast.css('display') != 'none') return;
		$toast.fadeIn(100);
        setTimeout(function () {
            $toast.fadeOut(100);
        }, 1500);
	}
    
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
	            clearInterval(timer);
            	var loading = weui.loading('正在加载...');	//loading
            	$.ajax({
        			type: "GET",
        			url: "${ctx}/tjhui/getcode.json",
        			data: "phone="+$('#phone').val()+"&bid="+bankuid+"&whitenums="+whitenums+"&r="+Math.random(),
        			success: function(resp){
        				loading.hide();
        				if(resp.msg && resp.msg.length > 0){
        					weui.alert(resp.msg);
        					initTimer()
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
			url: "${ctx}/tjhui/register.json",
			data: "phone="+phone+"&code="+ccode+"&bankId="+encodeURIComponent(localStorage.getItem("bankId"))
					+"&bankuid="+localStorage.getItem("bankuid")+"&r="+Math.random(),
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
					$('#user_ingot_num').html(resp.user.ingotnum);
					$('#iosDialog1').fadeOut(200);
					if (resp.exists && resp.exists == "n") {
						goPage('sg');
					}
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
  		
  		if(!bankuid){
  			weui.alert('亲，请登录建行手机银行后参与活动');
		  	return;
  		}

  		if(flag == 'personal'){	//个人中心
			var loading = weui.loading('正在加载...');	//loading
  			window.location.href = '${ctx}/mycenter/personal.do' + (localStorage.getItem("userId") ? "?userId="+encodeURIComponent(localStorage.getItem("userId")) : "");
  			return;
  		}else if(!checkUser()) return;
  		
  		var loading = weui.loading('正在加载...');	//loading
  		//---------------------
  		
	  	if(!checkLocal(false, flag)){
	  		loading.hide();
	  		weui.alert('抱歉，本活动为天津建行客户专享活动');
		  	return;
	  	}

		loading.hide();
		var uid = localStorage.getItem("userId");
  		if(flag == 'sg'){	//入门好礼
  	    	window.location.href = "${ctx}/sg/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
			+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
  		}else if(flag == 'ez'){	//兑奖专区
  	    	window.location.href = "${ctx}/exchange/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
  	  			+"&userId="+encodeURIComponent(uid) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
  		}else if(flag == 'ping'){	//拼团
  	    	window.location.href = "${ctx}/pintuan/index.do";
  		}else if(flag == 'poem'){	//诗词
  	    	window.location.href = "${ctx}/poem/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
			+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
  		}else if(flag == 'rb'){	//半价抢购
  	    	window.location.href = "${ctx}/rushbuy/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
  			+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
		}else if(flag == 'jyb'){	//津元宝使用指南
			window.location.href = "${ctx}/tjhui/jybguide.do";
		}else if(flag =='zh'){  //支行活动
			window.location.href = "${ctx}/huituan/index.do";
		}else if(flag =='xyk'){  //信用卡
			window.location.href = "${ctx}/jsp/creditcard/index.jsp";
		}else if(flag == 'kdj'){ // 肯德基
			window.location.href = "https://wap.ccb.cn/cmccb/servlet/ccbNewClient?TXCODE=Y3251S&DcCp_Avy_ID=YHHD2018040318131&shareType=03&ChanReqType=DISCOUNT_P&from=singlemessage"
  		}else if(flag == 'wcup'){ // 世界杯
			window.location.href = "${ctx}/wcup/index.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
  		}else{
  			comingsoon();
  		}
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
  	
    function checkLength(obj,n){
        //obj.value = obj.value.replace(/\D/g,'')
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }
    
    function checkLocal(nophone, acode){
    	//2017.8.9 增加判断
	  	var addr = '${addr}';
	  	var cango = false;
	  	if(addr){
	  		if(addr.indexOf('天津') > -1){
	  			cango = true;
	  		}
	  	}
	  	
	  	var up = localStorage.getItem("userPhone");
	  	
	  	if(!cango && !nophone){	//再次判断电话号码
	  		$.ajax({
				type: "GET",
				url: "${ctx}/tjhui/checkActivity.json",
				data: "phone="+encodeURIComponent(up)+"&acode="+acode+"&userId="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
				async: false,
				success: function(resp){
					if(resp.errMsg && resp.errMsg != ""){
// 						weui.alert(resp.errMsg);
					} else {
						cango = true;
					}
				},
				error:function(er){
					//loading.hide();
					//console.log(er);
				}
	    	});
	  	}
		
		return cango;
  	}
    
    window.onload=function(){
    	
    	getSOProds();
    	getSKProds();
        
        $(function(){
        	
		//热门活动
    	$("#c-a1").on("click",function(){
    		goPage("rb"); 		
    	});
    	$("#c-a2").on("click",function(){
    		goPage('poem');
    	});
		$("#c-a3").on("click",function(){
    		goPage('ez');
    	});
		$("#c-a4").on("click",function(){
			goPage('zh');
			
    	});

	  	$(".c-login-close").on("click",function(){
	  		$("#iosDialog1").hide();
// 	  		$("#iosDialog3").hide();
	  	});

	  	$(".swiper1").on("click",function(){
	  		goPage('jyb');
	  	});
	  	$(".swiper2").on("click",function(){
	  		goPage('sg');
	  	});
	  	
	  	$(".swiper10").on("click",function(){
	  		goPage('poem');
	  	});
	  	
	  	
        });
	};
	
	function getSKProds() {
		$.ajax({
            type: "GET",
            url: "${ctx}/seckill/getGoodsInfo.json",
            data: "r="+Math.random(),
            success: function(resp){
            	if (resp.skStartTime && resp.nowTime) {
            		startCountDown(resp.nowTime, resp.skStartTime);
            	}
            	if(resp.skgoods && resp.skgoods.length > 0){
            		fillSKPrd(resp.skgoods);
            	}
            },
            error:function(er){
                
            }
        });
	}
	
	//填充限时抢购商品列表
    function fillSKPrd(data) {
    	var pdiv = '';
    	for(var i=0; i<data.length; i++){
    		var pimg = data[i].picUrl ? data[i].picUrl : "${stax}/assets/images/2-0-goods2.jpg";
    		var id = encodeURIComponent(data[i].id);
    		
    		pdiv += '<div class="weui-flex__item" style="border-right: 1px solid #eee;">';
    		pdiv += '<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap-sk" iddata="';
    		pdiv += id;
    		pdiv += '1" medata="100.00"><div class="weui-media-box__bd"><h4 class="weui-media-box__title am-text-truncate">';
    		pdiv += data[i].prodName;
    		pdiv += '</h4><div class="weui-media-box__hd"><img class="weui-media-box__thumb" src="${stax}/';
    		pdiv += pimg;
    		pdiv += '" alt=""></div><p class="pri c-f-s-16"><span class="c-c-r">¥';
    		pdiv += data[i].prodPrice;
    		pdiv += '</span><br/><span class="c-f-s-12 c-oldprice">¥';
    		pdiv += data[i].oldPrice;
    		pdiv += '</span></p></div></a></div>';
    	}
    	$('#seckillArea').append(pdiv);
    	$(".c-bdth-tap-sk").on("click",function(){
    		tosk($(this));
    	});
	}
	
	function getSOProds() {
		$.ajax({
            type: "GET",
            url: "${ctx}/soffer/getProdInfo.json",
            data: "r="+Math.random(),
            success: function(resp){
            	if(resp.prdList && resp.prdList.length > 0){
            		fillSOPrd(resp.prdList);
            	}
            },
            error:function(er){
                
            }
        });
	}
	
	//填充商品列表
    function fillSOPrd(data) {
    	var pdiv = '';
    	var row = 0;
    	for(var i=0; i<data.length; i++){
    		var pimg = data[i].picUrl ? data[i].picUrl : "${stax}/assets/images/2-0-goods2.jpg";
    		if (i % 3 == 0) {
    			row += 1;
    			if (row > 1) {
    				pdiv += '<div class="weui-flex" style="padding-top: 0; border: 0">';
    			} else {
    				pdiv += '<div class="weui-flex">';
    			}    			
    		}
    		pdiv += '<div class="weui-flex__item">' + 
			'<a href="javascript:toso('+data[i].id+');" class="weui-media-box weui-media-box_appmsg c-bdth-tap so-item" data-pid="'+data[i].id+'">' + 
			'<div class="weui-media-box__bd">' + 
				'<div class="weui-media-box__hd">' + 
					'<img class="weui-media-box__thumb" src="${stax}/'+pimg+'" alt="">' + 
				'</div>' + 
				'<h4 class="weui-media-box__title am-text-truncate">'+data[i].prodName+'</h4>' + 
				'<p class="pri c-f-s-16"><span class="c-c-r c-l-h-n">¥'+data[i].prodPrice+'</span><br><span class="c-f-s-12 c-oldprice c-l-h-n">¥'+data[i].oldPrice+'</span></p>' + 
				/* '<p class="weui-media-box__desc am-text-truncate">已售：'+data[i].saled+'份</p>' +  */				
			'</div></a></div>';
			if (i % 3 == 2) {
				pdiv += '</div>';
			}
    	}
    	$('#local-special').append(pdiv);
	}
	
	function toso(pid) {
		
  		if(!bankuid){
  			//loading.hide();
  			weui.alert('亲，请登录建行手机银行后参与活动');
		  	return;
  		}
		
		if(!checkUser()) return;
  		//---------------------
  		
	  	if(!checkLocal(false, "so")){
	  		weui.alert('抱歉，本活动为天津建行客户专享活动');
	  		return;
	  	}
  		

  		
  		var loading = weui.loading('正在加载...');	//loading
  		
  		$.ajax({
			type: "POST",
			url: "${ctx}/soffer/checkprod.json",
			data: "pid="+pid+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + 
			"&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))+"&r="+Math.random(),
			success: function(resp){
				if(resp.errMsg && resp.errMsg != ""){
					loading.hide();
					weui.alert(resp.errMsg);
				}
				else
			  		window.location.href = "${ctx}/soffer/pdetail.do?pid="+pid+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
	}
	
	function tosk(el) {
		
  		if(!bankuid){
  			//loading.hide();
  			weui.alert('亲，请登录建行手机银行后参与活动');
		  	return;
  		}
		
		
		if(!checkUser()) return;
  		//---------------------
	  	if(!checkLocal(false, "sk")){
	  		weui.alert('抱歉，本活动为天津建行客户专享活动');
	  		return;
	  	}
  		

  		
  		var loading = weui.loading('正在加载...');	//loading
  		
  		$.ajax({
			type: "POST",
			url: "${ctx}/seckill/checkGoods.json",
			data: "pid="+el.attr('iddata')+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + 
			"&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))+"&r="+Math.random(),
			success: function(resp){
				if(resp.errMsg && resp.errMsg != ""){
					loading.hide();
					weui.alert(resp.errMsg);
				}
				else
			  		window.location.href = "${ctx}/seckill/pdetail.do?pid="+el.attr('iddata')+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
	}
	
	function keyPress() {    
        var keyCode = event.keyCode;    
        if ((keyCode >= 48 && keyCode <= 57))    
       {    
            event.returnValue = true;    
        } else {    
              event.returnValue = false;    
       }    
    }
	
	function startCountDown(nowTime, startTime) {
		oDate = new Date(nowTime);//进入页面时的时间
		
		var dt = startTime.split(' ');
		if(dt.length > 0){
			var date = dt[0].split('-');
			if(date && date.length == 3)
		    	oDate.setFullYear(date[0],parseInt(date[1]) - 1,date[2]);
		}
		if(dt.length > 1){
			var time = dt[1].split(':');
			if(time && time.length == 3)
		    	oDate.setHours(time[0],time[1],time[2]);
		}
		
		if(startTime && startTime != ''){
		    timers = setInterval(countDown,1000);
	    }
	}

    function checkTime(i){ //将0-9的数字前面加上0，例1变为01 
		if(i<10) {i = "0" + i;} 
     	return i; 
    } 

    function checkDay(i){
        if(!i){return '';}else{i = i + "天";}
        return i;
    }

    function checkDay0(i){
        if(!i){i = 0;}
        return i;
    }

    function countDown(){
        var now=new Date();
    	if(oDate.getTime()<now.getTime()){
    		clearInterval(timers);
    		return;
    	}
        var s=parseInt((oDate.getTime()-now.getTime())/1000);
        
        var d=parseInt(s/86400);

        s%=86400;
        
        var h=parseInt(s/3600);
        s%=3600;
        
        var m=parseInt(s/60);
        s%=60;
        
        document.querySelector(".a1").innerHTML=checkTime(h)//+':'+checkTime(m)+':'+checkTime(s);
        document.querySelector(".a2").innerHTML=checkTime(m)
        document.querySelector(".a3").innerHTML=checkTime(s)
        
    }
    var timers = null;
    var oDate = null;
    
    function lqjyb(e){
    	if(!bankuid){
  			weui.alert('亲，请登录建行手机银行后参与活动');
		  	return;
  		}
    	if(!checkUser()) return;
    	
    	$.ajax({
    		url:'${ctx}/lbt/getprize.do',
    		type:'post',
    		data:'uid='+encodeURIComponent(localStorage.getItem("userId"))+"&lbtpid="+e+"&r="+Math.random(),
    		success:function(resp){
    			$("#iosDialog4").show();
   				$(".goinfos").text(resp.msg);
    			if(resp.success){
    				$(".weui-dialog__ft").show();
    			}else{
    				$(".weui-dialog__ft").hide();
    			}
   				
    		}
    	});
    	
    }
    
    $("#c-login-close1").click(function(){
    
    	$("#iosDialog4").css("display","none");
    });
    
    $("#goingoinfo1").click(function(){
    	window.location.href = "${ctx}/mycenter/myingot.do?userId=" + encodeURIComponent(localStorage.getItem("userId"));
    });
    $("#goingoinfo2").click(function(){
    	window.location.href = "${ctx}/mycenter/myingot.do?userId=" + encodeURIComponent(localStorage.getItem("userId"));
    });
    
    //注册必读；

    if($("#checked").prop("checked") == true){
    	$("#btn").css("color","#0066b3");
    }else{
    	$("#btn").css("color","#666");
    }
    
    $("#checked").click(function(){
    	if($("#checked").prop("checked") == true){
        	$("#btn").css("color","#0066b3");
        }else{
        	$("#btn").css("color","#666");
        }
    })
    $(".register").click(function(){
    	$("#reg").css("display","block");
    })
    $(".titleBar-back").click(function(){
    	$("#reg").css("display","none");
    })
    
    
</script>
</body>
</html>