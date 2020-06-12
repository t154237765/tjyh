<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>


<!DOCTYPE html>
<html>
<head>
    <!-- 识别客户端 -->
    <script type="text/javascript">
    	/* var hfl = "${hflag}";
    	if(hfl && hfl.indexOf("CCBWebView") > -1){
    		
    	}else{
            alert('您必须使用手机建行客户端才能访问本页面');
            location.href="${ctx}/jsp/404.jsp";
    	} */
    </script>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>天津首页</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/animate.min.css"/>
    <style type="text/css">
    	.swiper-container {width: 100%;height: 6.7rem;}
		.swiper1{background: url(${stax}/assets/images/swiper14.jpg) no-repeat 50% top;background-size: contain;}
		.swiper2{background: url(${stax}/assets/images/swiper12.jpg) no-repeat 50% top;background-size: contain;}
 		.swiper3{background: url(${stax}/assets/images/swiper13.jpg) no-repeat 50% top;background-size: contain;}
		.swiper4{background: url(${stax}/assets/images/swiper15.jpg) no-repeat 50% top;background-size: contain;} 
		.swiper5{background: url(${stax}/assets/images/daliantupian.jpg) no-repeat 50% top;background-size: contain;}
/* 		.swiper6{background: url(${stax}/assets/images/swiper6.jpg) no-repeat 50% top;background-size: contain;} */
 		.swiper7{background: url(${stax}/assets/images/swiper16.jpg) no-repeat 50% top;background-size: contain;}
/* 		.swiper8{background: url(${stax}/assets/images/swiper8.jpg) no-repeat 50% top;background-size: contain;} */
        .swiper-container-horizontal>.swiper-pagination-bullets, .swiper-pagination-custom, .swiper-pagination-fraction{bottom: 10px;}
        .c-index-hot{background: #fff;margin-top: 10px;}
        .c-index-hot h3 {font-size: .7rem;padding: 7px;padding-left: 15px;position: relative;}
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
        #iosDialog1 button.c-c-b{background:#09b6f2;}
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
	.winnotice span{color:#45c9b4;font-size: 14px;width: 203px;display: inline-block;vertical-align: middle;margin-left: -5px;}
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
    .restalert,.ginfoalert{width: 70%;height:60%;background: #fff;position: absolute;top: 20%;left: 10%;z-index: 1000;border-radius: 5px;padding:1rem 1rem;}
.c-close2 {width:1.2rem;height:1.2rem;background: url(${stax}/assets/images/bottom-close2.png) no-repeat;position: absolute;right: -18px;top:-30px;background-size:contain;z-index: 1000}
.restalert .text1,.ginfoalert .text1 {font-size: .7rem;overflow-y: auto;height: 100%}
.zhezhao {position: absolute;top: 0;left: 0;bottom: 0;right: 0;background: #000;opacity: .5;z-index: 999;}
#ginfo{position: absolute;z-index: 989;margin-left:12.6rem;margin-top: -.8rem;}
#ginfo img{width:3.2rem;height:3.6rem;}
.c-index-hot .weui-flex__item{width:6rem;}
#toast-holdon .weui-toast{height: 2.6rem;min-height: initial;}
#toast-holdon .weui-toast p{height: 2.5rem;line-height: 2.6rem;vertical-align: middle;}
.mygoldbean{font-size:.7rem;text-align:center;}
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
    width: 4rem;
    margin: 0 auto;}
    #local-special .weui-media-box__bd{margin-right:0;border-radius:0px;padding-top: 15px;padding-bottom: 15px;border-bottom: 1px solid #eee;border-right: 1px solid #eee;}
    #local-special .weui-flex{padding:0px;}
    .c-f-s-16{font-size:.7rem;}
    .c-oldprice{margin-left:0;}
    #local-special .weui-media-box__bd{padding: .5rem;}
    .pri{text-align:center;}
    #willopen a.weui-media-box{padding:.6rem;width: 4rem;}
</style>
</head>
<body>
	<div class="zhezhao" style="display: none;"></div>
	<div class="restalert" style="display: none;">
    	<div class="c-close2"></div>
        <div class="text1">
        <p style="font-size:.8rem;text-align:center;margin-bottom:10px;">国庆节放假通知</p>
尊敬的顾客朋友：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好！<br />
&nbsp;&nbsp;&nbsp;&nbsp;2017年国庆节假期将至，公司全员放假时间为10月1日-9日。公司放假期间客服电话可正常拨打，客服负责记录问题，需技术人员处理问题上班后统一解决。<br />
&nbsp;&nbsp;&nbsp;&nbsp;拼团商品9月30日14点之前的订单可当日发出，14点以后付款的商品上班后按订单先后顺序安排发货，感谢您的理解。<br />
&nbsp;&nbsp;&nbsp;&nbsp;预祝各位国庆节假期愉快，期待大家持续关注我们的活动，你的参与就是对我们最大的支持！<br />
        </div>
    </div>
    <div class="ginfoalert" style="display: none;">
    	<div class="c-close2"></div>
        <div class="text1">
        <p style="font-size:.8rem;text-align:center;margin-bottom:10px;">惠滨城金豆、银豆使用规则</p>
1. 金豆、银豆均可通过约惠有礼、诗词PK等活动获取。<br />
2. 5颗、10颗、15颗金豆分别可兑换一张5元、10元、15元现金券。现金券可用于在拼团、本地特惠中购买商品时作为现金使用，一次限使用一张。现金券自兑换之日起有效期7天，请注意使用时间。<br />
3. 50颗、100颗、500颗银豆分别可兑换5元、10元、50元话费。话费在非充值高峰期到账时间为1到10分钟不等。如遇到月初月末高峰期会有延迟，详细到账时间请您自行拨打运营商电话或者登陆运营商官方网站查询。<br />
4. 金豆可在即将上线的＂金豆夺宝＂活动中作为夺宝兑换币使用，一经使用不予退回。<br />
5. 用户可在个人中心→我的奖品中查看获得金豆、银豆的记录。<br />
6. 用户可在个人中心→我的兑换中进行金豆、银豆的兑换及查看兑换记录。<br />
7. 用户所获得所有金豆及银豆均会在年末清零，请注意使用时间。<br />
        </div>
    </div>
	<div class="titleBar">
			<div class="titleBar-text am-text-truncate">惠滨城</div>
	</div>
	<div class="container" style="overflow-x: hidden;" id="wrapper">
		<div id="dataArea">
			<div class="c-content" style="padding-bottom: 20px;">
				<!-- Slider main container -->
				<div class="swiper-container" id="mySwiper">
					<!-- Additional required wrapper -->
					<div class="swiper-wrapper">
						<!-- Slides -->
						<div class="swiper-slide swiper1"></div>
						<div class="swiper-slide swiper7"></div>
						<div class="swiper-slide swiper2"></div>
						<div class="swiper-slide swiper4"></div> 
						<div class="swiper-slide swiper3"></div>
 						<div class="swiper-slide swiper5"></div> 
<!-- 						<div class="swiper-slide swiper6"></div> -->
<!-- 						<div class="swiper-slide swiper8"></div> -->
					</div>
					<!-- If we need pagination -->
					<div class="swiper-pagination"></div>
				</div>
				
				<div class="c-index-hot mygoldbean">
					<div id="ginfo"><img src="${stax}/assets/images/indoor.png"></div>
					<h3>我的</h3><img class="goldbean" src="${stax}/assets/images/goldbean.jpg" />: 122锭
				</div>
				
				<div class="winnotice c-index-hot" style="margin-top:0;border-top: 1px solid #eee;border-bottom: 1px solid #eee;">
					<h3>
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/laba.jpg">中奖公告
					</h3>
					<!-- <span class="am-text-truncate bounceInRight animated" id="winner"></span> -->
				</div>
					
				<div class="c-index-hot" style="position: relative;margin-top:0;">
					
					<h3>
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/index-hot.jpg">热门活动
						<span class="c-fr">更多</span>
					</h3>
					<div class="weui-flex">
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg" id="c-a1">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title">半价抢购</h4>
									<p class="weui-media-box__desc">IPhone8 Plus</p>
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
									<p class="weui-media-box__desc">只是储备换大奖</p>
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
									<h4 class="weui-media-box__title">拼团有礼</h4>
									<p class="weui-media-box__desc">最超值的购物体验</p>
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
					<div class="weui-flex">
<!-- 										直接修改页面信息 主要是iddata		 -->
						<div class="weui-flex__item" style="border-right: 1px solid #eee;">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="1" medata="100.00">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title am-text-truncate">爱奇艺月卡</h4>
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-9s.jpg" alt="">
									</div>
									<p class="pri c-f-s-16"><span class="c-c-r">￥5.50</span><br/><span class="c-f-s-12 c-oldprice">￥10.00</span></p>
								</div>
							</a>
						</div>
						<div class="weui-flex__item" style="border-right: 1px solid #eee;">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="2" medata="10.00">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title am-text-truncate">优酷月卡</h4>
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-8s.jpg" alt="">
									</div>
									<p class="pri c-f-s-16"><span class="c-c-r">￥5.50</span><br/><span class="c-f-s-12 c-oldprice">￥10.00</span></p>
								</div>
							</a>
						</div>
						<div class="weui-flex__item" style="border-right: 1px solid #eee;">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="3" medata="10.00">
								<div class="weui-media-box__bd">
									<h4 class="weui-media-box__title am-text-truncate">50元话费</h4>
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-5s.jpg" alt="">
									</div>
									<p class="pri c-f-s-16"><span class="c-c-r">￥5.50</span><br/><span class="c-f-s-12 c-oldprice">￥10.00</span></p>
								</div>

							</a>
						</div>
					</div>

				</div>

				<div class="c-index-hot" id="local-special">
					<h3>
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/index-local.jpg">本地特惠
						<span class="c-fr">更多</span>
						<span class="c-c-b buyNote" style="display: none;" id="c-b0">购物须知&gt;&gt;</span>
					</h3>
					<div class="weui-flex">
<!-- 										直接修改页面信息 主要是iddata		 -->
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="1" medata="100.00">
								<div class="weui-media-box__bd">
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-9.jpg" alt="">
									</div>
									<h4 class="weui-media-box__title am-text-truncate">优酷黄金会员</h4>
									<p class="pri c-f-s-16"><span class="c-c-r">￥5.50</span><br/><span class="c-f-s-12 c-oldprice">￥10.00</span></p>
									<!-- <p class="weui-media-box__desc am-text-truncate">已售：100份</p> -->
									
								</div>
							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="2" medata="10.00">
								<div class="weui-media-box__bd">
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-8.jpg" alt="">
									</div>
									<h4 class="weui-media-box__title am-text-truncate">百胜卡</h4>
									<p class="pri c-f-s-16"><span class="c-c-r">￥5.50</span><br/><span class="c-f-s-12 c-oldprice">￥10.00</span></p>
									<!-- <p class="weui-media-box__desc am-text-truncate">已售：100份</p> -->
								</div>
							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="3" medata="10.00">
								<div class="weui-media-box__bd">
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-5.jpg" alt="">
									</div>
									<h4 class="weui-media-box__title am-text-truncate">爱奇艺VIP黄金会员</h4>
									<p class="pri c-f-s-16"><span class="c-c-r">￥5.50</span><br/><span class="c-f-s-12 c-oldprice">￥10.00</span></p>
									<p class="weui-media-box__desc am-text-truncate">已售：100份</p>
								</div>

							</a>
						</div>
					</div>
					<div class="weui-flex" style="padding-top: 0; border: 0">
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="13" medata="20.00">
								<div class="weui-media-box__bd">
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-5-2.png" alt="">
									</div>
									<h4 class="weui-media-box__title am-text-truncate">20元话费充值卡</h4>
									<p class="pri c-f-s-16"><span class="c-c-r">￥5.50</span><br/><span class="c-f-s-12 c-oldprice">￥10.00</span></p>
									<p class="weui-media-box__desc am-text-truncate">已售：100份</p>
								</div>

							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="5" medata="30.00">
								<div class="weui-media-box__bd">
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-8.jpg" alt="">
									</div>
									<h4 class="weui-media-box__title am-text-truncate">15Q币</h4>
									<p class="pri c-f-s-16"><span class="c-c-r">￥5.50</span><br/><span class="c-f-s-12 c-oldprice">￥10.00</span></p>
									<p class="weui-media-box__desc am-text-truncate">已售：100份</p>
								</div>

							</a>
						</div>
						<div class="weui-flex__item">
							<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-bdth-tap" iddata="6" medata="50.00">
								<div class="weui-media-box__bd">
									<div class="weui-media-box__hd">
										<img class="weui-media-box__thumb" src="${stax}/assets/images/index-behg.png" alt="">
									</div>
									<h4 class="weui-media-box__title am-text-truncate">10元话费充值卡</h4>
									<p class="pri c-f-s-16"><span class="c-c-r">￥5.50</span><br/><span class="c-f-s-12 c-oldprice">￥10.00</span></p>
									<p class="weui-media-box__desc am-text-truncate">已售：100份</p>
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
				<i class="weui-icon-cancel c-login-close" id="c-login-close"></i>
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
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/amazeui.swiper.min.js"></script>
	<script src="${stax}/assets/js/iscroll.js"></script>
	<script src="${stax}/assets/js/iscrollAssist.js"></script>
	<script src="${stax}/assets/js/fastclick.js"></script>
	<script src="${stax}/assets/js/common.js"></script>
	<script src="${stax}/assets/js/jquery.cookie.js"></script>
	<script type="text/javascript">
	
		//白名单
		var ronglians = "13601312513,18601330691,13337869065,18201390602,15801420801,15711077673"
						+",13240191681,13520607390,13810080187,15010197763,13641365154";
		var bankers = ",13795169166,18641169299,13840916689,18640889300,13478672907,13889541720,13478662906";
		var whitenums = ronglians+bankers;
	
		//供暖白名单
		var gongnuan = "18641169299、13795169166、13942055755、13840916689、18640889300、‭18004115189‬、‭13387870321,13641365154,15010197763";
		
		var arr = new Array();
		//中奖公告
		var dalist = ${dataList};
		if(dalist.length > 0){
			for(var i=0; i<dalist.length; i++){
				var phone = dalist[i].phone;
				var ptype = dalist[i].ptype;//1-分享有礼 2-诗词pk 3-兑换 4-大转盘 5-银行赠送
				var ty = "诗词pk";
				if(ptype == '4') ty = "约惠有礼";
				if(ptype == '5') continue;
				if(ptype == '6') continue;
				arr.push(dalist[i].phone+"在"+ty+"获得"+dalist[i].name);
			}
		}

		$("#ginfo").on("click",function(){
			$(".zhezhao").show();
			$(".ginfoalert").show();
		});
		
		//限时抢购
		var slist = ${lsList};
		if(slist.length > 0){
			for(var i=0; i<slist.length; i++){
				var sn = slist[i].stockNum;
				var snstr = '仅剩:0份';
				if(parseInt(sn) > 0){
					snstr = '仅剩:'+sn+'份';
				}
				var price = slist[i].price+'';
				var oldPrice = slist[i].oldPrice+'';
				if(price.indexOf('.') < 0) price = price+'.0';
				if(oldPrice.indexOf('.') < 0) oldPrice = oldPrice+'.0';
				$('#lsdiv').append(
					'<div class="weui-flex__item">'+
						'<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-sale-tap" iddata="'+slist[i].id+'">'+
							'<div class="weui-media-box__bd">'+
								'<h4 class="weui-media-box__title am-text-truncate">'+slist[i].name+'</h4>'+
								'<div class="weui-media-box__hd">'+
									'<img class="weui-media-box__thumb" src="'+slist[i].picUrl+'" alt="">'+
								'</div>'+
								'<h4 class="weui-media-box__title am-text-truncate" style="color:#666">'+snstr+'</h4>'+
								'<p class="weui-media-box__desc am-text-truncate">￥'+price+'<span style="margin-left:5px;">￥'+oldPrice+'</span></p>'+
							'</div>'+
						'</a>'+
					'</div>');
			}
			
// 			var up = localStorage.getItem("userPhone");
// 		  	if(whitenums.indexOf(up) > -1){
// 		  	}
			$('#limit-sale').show();
		}
		

	
	/****处理返回空白 (vivo、乐视)***/
// 	var u = navigator.userAgent;
// 	if(u.indexOf('vivo') > -1 || u.indexOf('Le') > -1){
// 		var f = localStorage.getItem("dlflg");
// 		if(!f){
// 			localStorage.setItem("dlflg", "1");
// 			window.location.href = window.location.href;
// 		}else{
// 			localStorage.removeItem("dlflg");
// 		}
// 	}



//     alert('${param.user_id}');
// 	localStorage.clear();

	var bankid = "${bankid}";
    var bankuid = "${bankuid}";
	
    $(function(){
    	
	    if(arr.length > 0){
		    var i = 0;
	    	
			$(".winnotice").append('<span class="am-text-truncate fadeInUp animated" id="winner">'+arr[i]+'</span>');//13333333333在诗词PK中获得99金豆
			var timer = setInterval(function(){
				$("#winner").remove();
				//console.log(i);
				i++;
				if(i===arr.length) i = 0;
				
				$(".winnotice").append('<span class="am-text-truncate fadeInUp animated" id="winner">'+arr[i]+'</span>');
			},3000);
	    }else{
	    	$(".winnotice").append('<span class="am-text-truncate fadeInUp animated" id="winner">&nbsp;&nbsp;暂无人中奖</span>');
	    }


	    $(document).ready(function() {
	        /*替换click*/
	        FastClick.attach(document.body); 
	    });

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

    	/*toast-敬请期待*/
        var $toast = $('#toast-holdon');
        //$('.holdon').on('click', function(){
        $('#duobao').on('click', function(){
            if ($toast.css('display') != 'none') return;
           $toast.fadeIn(100);
            setTimeout(function () {
                $toast.fadeOut(100);
            }, 1500);
           
        });
  

        /*弹出框1  绑定手机*/
        $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
        	register();
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
	    })
        
        /*底部tab切换*/
	    $('.weui-navbar__item').on('click', function () {
	        $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
	    });


        /*swiper轮播图*/
	    var mySwiper = new Swiper('.swiper-container', {
	    	preventClicks : true,//阻止默认事件（preventDefault），防止触摸时触发链接跳转。
	    	loop : true,//设置为true 则开启loop模式,让Swiper看起来是循环的.
			autoplay: 3000,//自动切换的时间间隔（单位ms），不设定该参数slide不会自动切换。
			effect : 'fade',	//slide的切换效果，默认为"slide"（位移切换）。
			pagination : '.swiper-pagination',	//分页器容器的css选择器。
			preventLinksPropagation : false,	//阻止click冒泡。拖动Swiper时阻止click事件。
			slideToClickedSlide:true,		//设置为true则点击slide会过渡到这个slide。
			autoplayDisableOnInteraction : false,	//用户操作swiper之后，是否禁止autoplay。默认为true：停止。
			paginationClickable :true    //设置为true时，分页器会控制Swiper切换,默认：false。
			
		});
        
	  	//用浏览器存储
	  	var indexUrl = "${indexUrl}";
	  	if(indexUrl) localStorage.setItem("indexUrl", '${indexUrl}');
	  	
	  	if(localStorage.getItem("userId")){
	  		//重设user信息
	  		var loading = weui.loading('正在加载...');	//loading
	    	$.ajax({
				type: "GET",
				url: "${ctx}/getUserById.json",
				data: "id="+encodeURIComponent(localStorage.getItem("userId"))+
					"&bankid="+localStorage.getItem("bankId")+"&bankuid="+bankuid+"&r="+Math.random(),
				success: function(resp){
					loading.hide();
					if(resp.user){
// 						console.log(resp.user);
						setUserLocal(resp.user);
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
					$('#iosDialog1').fadeOut(200);
					
					if(slist.length > 0){
					  	if(whitenums.indexOf(user.phone) > -1){
							$('#limit-sale').show();
					  	}
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
  		
  		if(flag == 'personal'){	//个人中心
			var loading = weui.loading('正在加载...');	//loading
  			window.location.href = '${ctx}/userCenter/personal.do';
  			return;
  		}else if(!checkUser()) return;
  			
  		var loading = weui.loading('正在加载...');	//loading
  		
  		//供暖不限点击用户必须为大连手机号
  		if(flag == 'pmd'){	//跑马灯
  			if(!bankuid){
  	  			if(flag != 'shanrong'){
  			  		loading.hide();
  		  			weui.alert('亲，请登录建行手机银行后参与活动');
  				  	return;
  	  			}
  	  		} 			
  			window.location.href = "${ctx}/pao/index.do?";
  			return;
  		}
  		//---------------------
  		
	  	if(!checkLocal(false)){
	  		loading.hide();
	  		weui.alert('抱歉，本活动为大连建行客户专享活动');
		  	return;
	  	}
  		
  		if(!bankuid){
  			if(flag != 'shanrong'){
		  		loading.hide();
	  			weui.alert('亲，请登录建行手机银行后参与活动');
			  	return;
  			}
  		}

  		if(flag == 'share'){	//邀请有礼
  	    	window.location.href = "${ctx}/invite/findShareCode.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
  		}else if(flag == 'dzp'){	//约慧有礼
  	    	window.location.href = "${ctx}/dzp/index.do?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&bankid="+encodeURIComponent(localStorage.getItem("bankId"));
  		}else if(flag == 'ping'){	//拼团
  	    	window.location.href = "${ctx}/pintuan/index.do";
  		}else if(flag == 'poem'){	//诗词
  	    	window.location.href = "${ctx}/poem/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
  	    				+"&userId="+encodeURIComponent(localStorage.getItem("userId"));
  		}else if(flag == 'shanrong'){	//惠购
  	    	window.location.href = "${ctx}/specialprod/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"));
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
    
    function checkLocal(nophone){
    	//2017.8.9 增加判断
	  	var addr = '${addr}';
	  	var cango = false;
	  	if(addr){
	  		if(addr.indexOf('大连') > -1){
	  			cango = true;
	  		}
	  	}
	  	
	  	var up = localStorage.getItem("userPhone");
	  	if(whitenums.indexOf(up) > -1){
	  		cango = true;
	  	}
	  	
	  	if(!cango && !nophone){	//再次判断电话号码
	  		$.ajax({
				type: "GET",
				url: "${ctx}/getPhoneProvince.json",
				data: "phone="+up+"&r="+Math.random(),
				async: false,
				success: function(resp){
					if(resp.data){
						if(resp.data.indexOf('大连') > -1){
				  			cango = true;
				  		}
					}
				},
				error:function(er){
					loading.hide();
					console.log(er);
				}
	    	});
	  	}
		
		return cango;
  	}
    
    window.onload=function(){

   	    // 倒计时
	    //var oCd=document.querySelectorAll('.countdown');
	    
    	//未来时间
	    var oDate = new Date();//进入页面时的时间
//    	    var startTime = '2017-09-29 10:00:00';
   	    var startTime = '${startTime}';
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
// 	    oDate.setTime(1505471381697);

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
	        
	        document.querySelector(".a0").innerHTML=checkDay0(d)
	        document.querySelector(".a1").innerHTML=checkTime(h)//+':'+checkTime(m)+':'+checkTime(s);
	        document.querySelector(".a2").innerHTML=checkTime(m)
	        document.querySelector(".a3").innerHTML=checkTime(s)
	        
	    }
	    var timers = null;
	    if(startTime && startTime != ''){
// 		    countDown();
		    timers = setInterval(countDown,1000);
	    }
        
        /*if(!localStorage.ifLoadFirst){
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
        }*/
        
        $(function(){
        	
		//热门活动
    	$("#c-a1").on("click",function(){
   			goPage('dzp');
    	});
    	$("#c-a2").on("click",function(){
    		goPage('ping');
    	});
		$("#c-a3").on("click",function(){
    		goPage('poem');
    	});
		$("#c-a4").on("click",function(){
    		goPage('shanrong');
    	});		
        
        $("#c-a5").on('click',function(){
        	
        	//if(gongnuan.indexOf(localStorage.getItem("userPhone")) > -1){
	        	goPage('pmd');
	        /* }else{
	        	weui.toast("活动尚未开始，敬请期待!", {
			        duration: 1000,
			        className: 'toast-warn',
			        callback: function(){ 
			            return false; 
			        }
			   });
	        	
	        }  */
       });
        
		
		//购物须知
		$("#c-b0").on("click",function(){
    		$('#iosDialog2').fadeIn(200);
    	});
		//本地特惠
	  	$(".c-bdth-tap").on("click",function(){
	  		
	  		var cid = $(this).attr('iddata');
	  		if ('x' == cid) return;
	  		if(!checkUser()) return;
	  		//增加是否有券判断
	  		var loading = weui.loading('正在加载...');
	  		$.ajax({
				type: "POST",
				url: "${ctx}/coupon/checkstore.json",
				data: "id="+cid+"&r="+Math.random(),
				success: function(resp){
					if(resp.msg && resp.msg != ""){
						loading.hide();
						weui.alert(resp.msg);
					}
					else
				  		window.location.href = "${ctx}/coupon/buypage.do?id="+cid;
				},
				error:function(er){
					loading.hide();
					console.log(er);
				}
	    	});
	  	});
		
		//限时抢购
		$(".c-sale-tap").on("click",function(){
		  	//暂只开放白名单
			/* var up = localStorage.getItem("userPhone");
		  	if(whitenums.indexOf(up) > -1){
				
		  	}else{
		  		weui.alert('还没开始，每周五10点准时开抢，先到先得哟');
			  	return;
		  	} */
			
			if(!checkUser()) return;
	  		
	  		var loading = weui.loading('正在加载...');	//loading
		  	if(!checkLocal(false)){
		  		loading.hide();
		  		weui.alert('抱歉，本活动为大连建行客户专享活动');
			  	return;
		  	}
	  		
		  	if(!bankuid){
		  		loading.hide();
	  			weui.alert('亲，请登录建行手机银行后参与活动');
			  	return;
	  		}
			
			var lid = $(this).attr('iddata');
			$.ajax({
				type: "POST",
				url: "${ctx}/limitsale/checkstore.json",
				data: "userId="+encodeURIComponent(localStorage.getItem("userId"))+"&busId="+lid
						+"&bankId="+encodeURIComponent(localStorage.getItem("bankId"))+"&r="+Math.random(),
				success: function(resp){
					if(resp.msg && resp.msg != ""){
						loading.hide();
// 						$('.lijgm').hide();
// 						$('#msgdiv').show();
// 						$('#msgdiv').html(resp.msg+'<div>先到先得哟</div>');
						weui.alert(resp.msg);
					}else{
						/* $('.lijgm').show();
						$('#msgdiv').hide();
						$('#msgdiv').html(); */
						if(resp.ld){
							window.location.href = "${ctx}/limitsale/prodInfo.do?userId="
									+encodeURIComponent(localStorage.getItem("userId"))+"&ld="+encodeURIComponent(resp.ld);
						}
					}
					/* if(slist.length > 0){
						for(var i=0; i<slist.length; i++){
							if(lid == slist[i].id){
								var price = slist[i].price+'';
								var oldPrice = slist[i].oldPrice+'';
								if(price.indexOf('.') < 0) price = price+'.0';
								if(oldPrice.indexOf('.') < 0) oldPrice = oldPrice+'.0';
								$('#iosDialog3 #lsid').val(lid);
								$('#iosDialog3 #lsname').html(slist[i].name);
						  		$('#iosDialog3 #lsmoney').html(price);
						  		$('#iosDialog3 #lsomoney').html(oldPrice);
						  		$('#iosDialog3 img').attr('src', slist[i].picUrl);
								$('#iosDialog3').fadeIn(200);
								return;
							}
						}
					} */
				},
				error:function(er){
					loading.hide();
					console.log(er);
				}
	    	});
		});

	  	$(".c-login-close").on("click",function(){
	  		$("#iosDialog1").hide();
// 	  		$("#iosDialog3").hide();
	  	});

	  	$(".swiper1").on("click",function(){
	  		goPage('dzp');
	  	});
	  	$(".swiper2").on("click",function(){

	  	});
	  	$(".swiper3").on("click",function(){

	  	});
// 	  	$(".swiper4").on("click",function(){
// 	  		window.location = "http://sale.buy.ccb.com/channel/xdmp_zxxrsh_20170802/index.html?source_name=5&source_type=srpc_ztg&source_content=zhzt";
// 	  	});
 	  	$(".swiper5").on("click",function(){
	  		window.location = "http://dalian.boyaunite.com/jsp/tuan/tutorial.jsp";
 	  	});
// 	  	$(".swiper6").on("click",function(){
// 	  		window.location = "http://sale.buy.ccb.com/channel/srfx_170801/index.html?source_name=8&source_type=srpc_ztg&source_content=zhzt";
// 	  	});
// 	  	$(".swiper7").on("click",function(){
// 	  		window.location = "http://buy.ccb.com/products/pbl_1_1_1.jhtml?";
// 	  	});
// 	  	$(".swiper8").on("click",function(){
// 	  		window.location = "http://shop.ccb.com/";
// 	  	});
        });
	};
	
</script>
</body>
</html>
