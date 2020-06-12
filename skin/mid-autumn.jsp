<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>

<!DOCTYPE html>
<html>
<head>
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
    .container{background:#fff;width:100%;height:100%;}
    	.weui-media-box{padding:10px 15px;}
    	.swiper-container {width: 100%;height: 6.7rem;}
		.swiper1{background: url(${stax}/assets/images/sw_jyb.jpg) no-repeat 50% top;background-size: contain;}
		.swiper2{background: url(${stax}/assets/images/sw_sg.jpg) no-repeat 50% top;background-size: contain;}
 		.swiper3{background: url(${stax}/assets/images/yddimg.jpg) no-repeat 100% top;background-size: contain;}
		.swiper4{background: url(${stax}/assets/images/swiper4.jpg) no-repeat 50% top;background-size:100% 100%;}
		.swiper5{background: url(${stax}/assets/images/banner1.jpg) no-repeat 50% top;background-size: contain;}
/* 		.swiper6{background: url(${stax}/assets/images/swiper6.jpg) no-repeat 50% top;background-size: contain;} */
 		.swiper7{background: url(${stax}/assets/images/swiper16.jpg) no-repeat 50% top;background-size: contain;}
/* 		.swiper8{background: url(${stax}/assets/images/swiper8.jpg) no-repeat 50% top;background-size: contain;} */
/* 		.swiper9{background: url(${stax}/assets/images/fangjia.jpg) no-repeat 50% top;background-size: contain;} */
/* 		.swiper10{background: url(${stax}/assets/images/shici2.jpg) no-repeat 50% top;background-size: contain;} */
 		.swiper11{background: url(${stax}/assets/images/swiper17.jpg) no-repeat 50% top;background-size: contain;}
 		.swiper12{background: url(${stax}/assets/images/banner.jpg) no-repeat 50% top;background-size: contain;}
		.swiper13{background: url(${stax}/assets/images/banner.jpg) no-repeat 50% top;background-size: contain;}
/* 		.swiper22{background: url(${stax}/assets/images/swiper8.jpg) no-repeat 50% top;background-size: contain;} */
		.swiper23{background: url(${stax}/assets/images/swiper23.jpg) no-repeat 50% top;background-size: contain;}
		.swiper24{background: url(${stax}/assets/images/useBanner.jpg) no-repeat 50% top;background-size: contain;}
		.swiper25{background: url(${stax}/assets/images/qrqmtjh.jpg) no-repeat 50% top;background-size: contain;}
		.swiper26{background: url(${stax}/assets/images/bannerPintuan.jpg) no-repeat 50% top;background-size: contain;}
		.Newold{background: url(${stax}/assets/images/Newold.png) no-repeat 50% top;background-size: contain;}
		.gatherword{background: url(${stax}/assets/images/gatherword.png) no-repeat 50% top;background-size: contain;}
		.nvshenjie{background: url(${stax}/assets/images/nvshenjiebanner1.jpg) no-repeat 50% top;background-size: contain;}
		.jmf{background: url(${stax}/assets/images/jmfBanner.png) no-repeat 50% top;background-size: contain;display:flex;align-items:flex-end;justify-content:center;}
		.clickApply{width:4.8rem;margin-bottom:0.5rem;margin-left:-0.6rem;}
		.kuaidai{background: url(${stax}/assets/images/kuaidaibanner.jpg) no-repeat 50% top;background-size: contain;}
		/* .yzh{background: url(${stax}/assets/images/yzhbanner.jpg) no-repeat 50% top;background-size:100% 100%;} */ 
        .c-index-hot .weui-media-box__hd img{width: 3.2rem;}
        .c-index-hot h3 {font-size: .64rem;padding:10px 0px;text-align:start;}
        a.weui-media-box:active{background: #fff;}
        #local-special{width:88%;padding:0% 6%;}
        #local-special .weui-flex__item{border:0;width:30%;margin-bottom:0.2rem;border-radius:0.3rem;}
        #local-special .weui-flex__item{padding:0 0.1rem;}
        #local-special .weui-flex{padding:15px;width:100%;overflow:auto;align-items:center;justify-content:space-between;}
        .weui-media-box_appmsg .weui-media-box__hd{margin-right:0;}
        #local-special .weui-media-box__hd img{border-radius:0;height:2.8rem;width:2.8rem;margin: 0 auto;}
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
        .weui-tab{height:auto;}
        .weui-dialog{overflow: visible;}
        .c-login-close{position: absolute;top: -1rem;right: -1rem;color: #fff;}
        #c-intro-wrapper{padding: 0 5px;}
        .weui-cells:before,.weui-cells:after{border: 0;}
        .titleBar-text {width: 100%;padding-left: 0;}
        #wrapper{overflow:auto;/* winphone8和android4+ */
	-webkit-overflow-scrolling: touch; /* ios5+ */}
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
    #limit-sale .weui-media-box__hd{text-align: center;margin:0 auto;}
    #limit-sale .weui-media-box__hd img{width: 3rem;margin:0 auto;}
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
	.countdown{color:#fff;font-size: .6rem;}
	.countdown a{color: #fff;background: #482106;border-radius:3px;padding:2px 4px;margin-right:0px;}
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
    .restalert,.ginfoalert{width: 70%;height:35%;background: #fff;position:fixed;top:30%;left: 10%;z-index: 1000;border-radius: 5px;padding:1rem 1rem;}
	.c-close2 {width:1.2rem;height:1.2rem;background: url(${stax}/assets/images/bottom-close2.png) no-repeat;position: absolute;right:0;top:-1.5rem;background-size:contain;z-index: 1000}
	.restalert .text1,.ginfoalert .text1 {font-size: .7rem;overflow-y: auto;height: 100%}
	.zhezhao {position: fixed;top: 0;left: 0;bottom: 0;right: 0;background: #000;opacity: .5;z-index: 999;}
	#ginfo{position: absolute;z-index: 989;margin-left:12.6rem;margin-top: -.5rem;}
	#ginfo img{width:2.8rem;height:3.2rem;}
	#toast-holdon .weui-toast{height: 2.6rem;min-height: initial;}
	#toast-holdon .weui-toast p{height: 2.5rem;line-height: 2.6rem;vertical-align: middle;}
	.mygoldbean{font-size:.7rem;text-align:center;width:14.08rem;height:1.58rem;line-height:1.58rem;background:#F8F6F9;border-radius:0.2rem;margin:0.4rem auto;}
	.mygoldbean h3,.mygoldbean img{display:inline-block;}
	.mygoldbean img{width:1.1rem;height:1rem;vertical-align:text-top;}
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
    #local-special .weui-media-box__bd{margin-right:0;border-radius:0.3rem;padding-top: 15px;padding-bottom: 15px;border-bottom: 1px solid #eee;border-right: 1px solid #eee;}
    #local-special .weui-flex{padding:0px;}
    .c-f-s-16{font-size:.64rem;}
    .c-oldprice{margin-left:0;}
    #local-special .weui-media-box__bd{padding: .2rem;width:100;}
    #willopen a.weui-media-box{padding:5px 0;}
    .c-l-h-n{line-height:1.2;}
    #willopen .weui-media-box_appmsg .weui-media-box__bd{text-align:center;}
    .weui-media-box_appmsg h4{font-size:.7rem;}
    #willopen .c-oldprice{line-height: .8;}
    .weui-icon-info-circle{font-size:15px;color:#ffa914;}
    [class*=" weui-icon-"]:before, [class^=weui-icon-]:before{margin-left:0;margin-top:-12px;}
    .c-card-erea{background:url(${stax}/assets/images/credit-card.jpg) no-repeat;background-size:100%;height:6rem;}
    .date{width:100%;position:absolute;top:1.2rem;text-align:center;color:#BB2A09;font-size:0.68rem;letter-spacing:0.05rem;}
    .text{width:100%;position:absolute;top:2.15rem;text-align:center;color:#EE5B1A;letter-spacing:0.1rem;line-height:2rem;}
    input[type="checkbox"]{width:0.7rem;height:0.7rem;border:0.05rem solid #B5B5B5;border-radius:0.1rem;margin-right:0.1rem;}
    
    #reg{width:100%;height:100%;position:fixed;z-index:10000;display:none;}
    .titleBar-text{padding-left: 0;width: 100%;}
    .rule{width:92%;height:92%;background:#fff;margin-top:44px;padding:4%;overflow:scroll;}
    .rule p{font-size:0.6rem;text-indent:2em;}
   .int{width:100%;border-top:2px solid #F2F1F1;}
   .int img{height:6.7rem;width:100%;}
   
   
   .sign1 , .sign2 ,.sign3{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.5);z-index:1111;}	
	.sign1 .Scont{width:70%;height:10rem;background:#fff;border-radius:0.2rem;position:absolute;top:28%;margin:auto;right:0;left:0;padding:0% 5%;}
	.sign2 .Scont{width:70%;height:8.5rem;background:#fff;border-radius:0.2rem;position:absolute;top:28%;margin:auto;right:0;left:0;padding:0% 5%;}	
	.sign3 .Scont{width:70%;height:8rem;background:#fff;border-radius:0.2rem;position:absolute;top:28%;margin:auto;right:0;left:0;padding:0% 5%;}	
	.sign1 .Scont div{display:flex;align-items:center;justify-content:space-between;}
	#checked{width:0.6rem;height:0.6rem;}
	#c-login-close{position:absolute;top:25%;right:10%;font-size:1.2rem;color:#fff;}
	.Scont input{border:1px solid #676767;border-radius:0.1rem;width:100%;height:1.5rem;margin-bottom:0.4rem;font-size:0.6rem;color:#646464;padding-left:0.2rem;}
	.Sbtn1{width:35%;background:#666;text-align:center;height:1.5rem;line-height:1.5rem;font-size:0.6rem;color:#fff;border-radius:0.2rem;margin-bottom:0.4rem;}
	.Sbtn2{width:40%;margin:auto;text-align:center;height:1.5rem;border-radius:1.5rem;line-height:1.5rem;background:#0065B3;font-size:0.6rem;color:#fff;margin-left:32%;margin-top:0.3rem;}
    .sBtn{display:flex;align-items:center;justify-content:space-around;}
    .sBtn button{width:4.5rem;height:1.5rem;text-align:center;line-height:1.5rem;border-radius:1.5rem;color:#fff;margin-top:0.5rem;font-size:0.6rem;}
	#goingoinfo1{display:inline-block;background:#0066B3;border-radius:1rem;color:#fff;width:4rem;text-align:center;font-size:0.6rem;padding:2% 0%;}
	.jieqi .date{font-family:"fzhzgbjt";color:#E25B11;}
	.jieqi .text{font-family:"fzdhjt";color:#BB2A09;}
	
	.user{font-size:0.24rem;color:#fff;background:#70A1B6;padding:1%;width:3rem;border-radius:0.5rem;font-weight:bold;text-align:center;position:absolute;top:0.4rem;letter-spacing:0.1rem;right:1rem;}
	.user .userDiv{border-radius:0.5rem;font-size:0.24rem;}
	.user .userDiv p{font-size:0.5rem;color:#fff;}
	.userCont p{font-size:0.56rem;color:#fff;}
	.userCont{display:none;background:rgba(0,0,0,0.5);font-size:0.24rem;position:absolute;top:0.2rem;left:3rem;color:#fff;text-align:start;padding:2%;border-radius:0.2rem;z-index:11;margin-right:3.6rem;font-family:"方正黑体简体"}
	.arrows{width:0;height:0;border-top:6px solid transparent;border-bottom:6px solid transparent;border-left:6px solid hsla(0,0%,10%,0.5);position:absolute;top:0.5rem;right:-0.2rem;}
	.yurenjie label{display:block;width:2rem;height:2rem;border-radius:2rem;background:red;color:#000;font-size:0.64rem;text-align:center;line-height:2rem;}
	
	.nav{width:14.08rem;margin:auto;display:flex;align-items:center;justify-content:space-between;margin-bottom:0.5rem;}
	.nav div{text-align:center;}	
	.nav img{height:2.35rem;margin:auto;}
	.nav p{font-size:0.64rem;}
	.shopMall{width:14.08rem;margin:auto;display:flex;align-items:center;justify-content:space-between;margin-bottom:0.5rem;}
	.shopMall div{width:49%;}
	.shopMall div img{width:6.784rem;height:3.29rem;}
	#seckillArea{width:14.08rem;margin:auto;display:flex;align-items:center;justify-content:space-between;height:8.5rem;margin-bottom:0.5rem;}
	#seckillArea .weui-flex-left{width:40%;height:100%;background:url(${stax}/assets/images/skin/limitBack-1.png) no-repeat 100% 100%;background-size:100% 100%;border-radius:0.3rem;padding:0% 4%;text-align:center;}
	.weui-flex-left img{width:3.5rem;margin:auto;}
	.weui-flex-left .limit-list .limit-shop-name{font-size:0.64rem;font-weight:bold;color:#333}
	.weui-flex-left .limit-list .limit-shop-price{font-size:0.64rem;font-weight:bold;color:#C81623;}
	#seckillArea .weui-flex-right{width:48%;height:100%;}
	.weui-flex-right .limit-list{display:flex;align-items:center;justify-content:space-between;text-align:center;}
	.weui-flex-right .limit-list .limit-shop-name{font-size:0.64rem;font-weight:bold;color:#333;}
	.weui-flex-right .limit-list img{width:3rem;}
	.weui-flex-right .limit-list .limit-shop-price{font-size:0.64rem;font-weight:bold;color:#C81623;}
	#seckillArea .weui-flex-right .limit-list{width:96%;height:44%;border-radius:0.3rem;padding:2%;}
 	#seckillArea .weui-flex-right .limit-list:nth-child(1){margin-bottom:7%;background:url(${stax}/assets/images/skin/limitBack-3.png) no-repeat 100% 100%;background-size:100% 100%;}
 	#seckillArea .weui-flex-right .limit-list:nth-child(2){background:url(${stax}/assets/images/skin/limitBack-2.png) no-repeat 100% 100%;background-size:100% 100%;}
 	.weui-flex-left h3 p{font-size:0.64rem;font-weight:bold;color:#333;}
 	.weui-flex-left h3 span{font-size:0.56rem;font-weight:200;}
 	
 	.nav-tab{width:100%;height:2.1rem;position:fixed;bottom:0rem;background:#fff;padding:0% 0%;border-top:1px solid #EEE;}
 	.navbar{display:flex;align-items:center;justify-content:space-around;height:100%;}
 	.navbar-list{width:50%;text-align:center;}
 	.navbar-list:nth-child(1){border-right:1px solid #EEE;}
 	.navbar-list img{width:1.17rem;margin:auto;margin-top:0.2rem;}
 	.navbar-list:nth-child(1) p{color:#4392F3;}
 	.navbar-list p{font-size:0.512rem;color:#666;}
 	
 	/*  */
 	.jmfDetail{border:1px solid #fff;border-radius:0.5rem;position:absolute;bottom:0.3rem;right:0.4rem;padding:0% 1%;}
 	.jmfDetail p{font-size:0.512rem;color:#fff;}
 	
 	/* 中秋  */
 	#dataArea{width:100%;height:36.22rem;background:url(${stax}/assets/images/skin/mid-autumn.jpg) no-repeat 100% 100%;background-size:100% 100%;}
</style>
</head>
<body>
	<div class="zhezhao" style="display:none;"></div>
	<div class="restalert" style="display:none;">
    	<div class="c-close2"></div>
        <div class="text1">
         <p style="font-size:.8rem;text-align:center;margin-bottom:10px;">中秋节放假通知</p>
	 尊敬的客户：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好！<br />
&nbsp;&nbsp;&nbsp;&nbsp;中秋节假日期间，天津惠平台所有活动均正常开展。<br />
&nbsp;&nbsp;&nbsp;&nbsp;9月13日-9月15日期间，在线客服暂停服务，9月16日起恢复正常。祝您节日快乐！<br />
<!-- &nbsp;&nbsp;&nbsp;&nbsp;8月31日凌晨5:00至6:00，我行境内对公。对私业务停止所有服务，期间2小时后转账或24小时后转账至我行的交易将延迟至8月31日6:15入账。影响系统营业时段提供的所有服务，包括网关支付、快捷支付、。转账、代发代扣、超网及网联渠道相关交易等。<br /> -->
<!-- nbsp;&nbsp;&nbsp;&nbsp;请您根据自身的业务需求，提前做好相应的通知安排，由此带来的不便，我们深表歉意，并将努力缩短暂停服务的时间。同时，对您长期以来给予我行的大力支持表示衷心的感谢！<br /> -->
<!-- <p style="font-size:0.7rem;text-align:right;">建行天津分行网络金融部</p><br /> -->
<!-- 节日的通知公告 -->
<!-- 尊敬的天津惠用户：<br /> -->
<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好！<br /> -->
<!-- &nbsp;&nbsp;&nbsp;&nbsp;恭喜客户176****0350，实力打拼喜获4888锭津元宝锦鲤大奖（第06期），快来参加“幸运锦鲤”活动吧！<br /> -->
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
						<div class="swiper-slide swiper26"></div> <!-- 拼团banner -->
						<!-- Slides -->
						<!--	金蜜蜂入金 -->
<!-- 						<div class="swiper-slide jmf"> -->
<%-- 							<img class="clickApply" src="${stax}/assets/images/stockes.png" /> --%>
<!-- 							<div class="jmfDetail"> -->
<!-- 								<p>查看活动详情</p> -->
<!-- 							</div> -->
<!-- 						</div> -->
						
						<div class="swiper-slide swiper25"></div>
						<div class="swiper-slide kuaidai"></div>
						
						<div class="swiper-slide swiper23"></div>
						<div class="swiper-slide swiper24"></div>
						
						
						<!-- 邀请有礼banner -->
						<div class="swiper-slide Newold"></div>
						
						
					</div>
					<!-- If we need pagination -->
					<div class="swiper-pagination"></div>
				</div>
				
				<div class="c-index-hot mygoldbean" style="position:relative;">
					<p style="position:absolute;top:0.1rem;left:0.45rem;text-decoration:underline;color:#38ACCE;">平台注册必读</p>
					<div id="ginfo" style="display: none;"><img src="${stax}/assets/images/indoor.png"></div>
					<img class="goldbean" src="${stax}/assets/images/forjin.png" /> <span id="user_ingot_num">0</span>&nbsp;&nbsp;&nbsp;&nbsp;
					<img class="heart" src="${stax}/assets/images/heart.png" style="vertical-align: sub"/> <span id="user_vitality_num">0</span>
					<i class="weui-icon-info-circle"></i>
				</div>
				
				<div class="winnotice c-index-hot" style="margin-top:0;border-top: 1px solid #eee;border-bottom: 1px solid #eee;display:none;">
					<h3>
						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/laba.jpg">中奖公告
					</h3>
					<!-- <span class="am-text-truncate bounceInRight animated" id="winner"></span> -->
				</div>
					
				<div class="nav">
					<div id="c-a1">
						<img src="${stax}/assets/images/skin/navList-1.png">
						<p>邀请有礼</p>
					</div>
					<div id="c-a2">
						<img src="${stax}/assets/images/skin/navList-2.png">
						<p>诗词大会</p>
					</div>
					<div id="c-a3">
						<img src="${stax}/assets/images/skin/navList-3.png">
						<p>兑换专区</p>
					</div>
					<div id="c-a4">
						<img src="${stax}/assets/images/skin/navList-4.png">
						<p>专享活动</p>
					</div>
				</div>			
				<div class="c-index-hot" id="limit-sale" style="opacity: 1;">
<!-- 					<h3 class=""> -->
<%-- 						<img class="c-remenhd c-m-r-5" src="${stax}/assets/images/kaiqiang.png">限时抢购 --%>
<!-- 						<span class="c-c-b buyNote">10点开抢</span> -->
						
						
<!-- 						<span class="countdown"> -->
<!-- 							<a class="a0" style="padding: 0px 3px;">00</a> -->
<!-- 							<a class="aF" style="background: none;color: #333;font-size: 12px;padding: 0;margin:0;margin-left:-1px;">距离开始: </a> -->
<!-- 							<a class="a1">00</a> -->
<!-- 							<a style="background: none;margin-right: 0;color:#482106;padding: 0;">:</a> -->
<!-- 							<a class="a2">00</a> -->
<!-- 							<a style="background: none;margin-right: 0;color:#482106;padding: 0;">:</a> -->
<!-- 							<a class="a3">00</a> -->
<!-- 						</span> -->
<!-- 					</h3> -->
					<div class="weui-flex" id="lsdiv">
						
					</div>
 				</div>

				<div class="c-index-hot" id="willopen" style="margin-top:2px">
					<div id="seckillArea" class="weui-flex">
						<div class="weui-flex-left">
							<h3 class="">
								<p>限时抢购&nbsp;<span>10点开抢</span></p>								
								<span class="countdown">
									<!-- <a class="a0" style="padding: 0px 3px;">00</a>-->
<!-- 									<a class="aF" style="background: none;color: #333;font-size: 12px;padding: 0;margin:0;margin-left:-1px;">距离开始: </a> -->
									<a class="a1">00</a>
									<a style="background: none;margin-right: 0;color:#482106;padding: 0;">:</a>
									<a class="a2">00</a>
									<a style="background: none;margin-right: 0;color:#482106;padding: 0;">:</a>
									<a class="a3">00</a>
								</span>
							</h3>
		
						</div>
					
					</div>

				</div>
				<div class="shopMall">
					<div class="yzh">
						<img src="${stax}/assets/images/skin/shopMall.png">
					</div>
					<div id="card">
						<img src="${stax}/assets/images/skin/card.png">
					</div>			
				</div>
				<div class="c-index-hot" id="local-special" style="position:relative;">
					<h3 class="hbc">
						<span style="color:#333;font-size:0.64rem;font-weight:bold;">本地特惠</span>
						<span class="c-fr" style="display: none;">更多</span>
						
						<!-- 如何抵用 -->
						<div class="user">
							<div class="userDiv"><p>如何抵用</p></div>
						</div>
						<div class="userCont">
							<p>客户在购买商品时可以使用津元宝抵用，津元宝最高数量如图片所示。如：100元加油卡最多可使用30津元宝。<div class="arrows"></div></p>
						</div>
					</h3>
					<div class="weui-flex">
					
					</div>
				</div>
				<div id="c-block-bottom" style="width:100%;height:1.8rem;"></div>
				

			</div><!--end c-content-->
			
		</div><!--end dataArea-->
	</div>
	<!-- end container -->		
		<div class="sign1 js_dialog" id="iosDialog1" style="display:none;">
         	<i class="weui-icon-cancel" id="c-login-close"></i>
        	<div class="Scont">
        		<p style="margin:5% auto;text-align:center;color:#000;font-size:0.6rem;">手机验证注册</p>
                <div>
                	<input id="phone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*" placeholder="请输入您的手机号码">
                </div>
                <div>
                	<input style="width:60%;" class="weui-input" type="number" pattern="[0-9]*" id="ccode"
						oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码" onkeypress="keyPress()">
                	<button class="Sbtn1" id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
                </div>
              <!--   <div>
                	<input id="iuphone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*" placeholder="邀请人手机号（可不填）">
                </div>
                <p style="text-align:center;color:red;">邀请人填写后不可更改哟~</p> -->
                <button class="Sbtn2 weui-dialog__btn" id="btn">注册</button>
                <p style="display:flex;">
                	<input type="checkbox" id="checked" checked="checked" />我已阅读并同意
					<a class="register" href="#" style="text-decoration:underline;color:#1752C9;font-size:0.5rem;letter-spacing:0.05rem;">《注册必读》</a>
                </p>
                
                
        	</div>	
        </div>
		
		
<!-- 		领取津元宝 -->
		<div class="js_dialog" id="iosDialog4" style="opacity: 1; display: none;">
			<div class="weui-mask"></div>
			<div class="weui-dialog">
				<i class="weui-icon-cancel c-login-close" id="c-login-close1"></i>
				<div class="weui-dialog__bd c-f-s-16 goinfos" style="padding-top:3em;color:#333;padding-bottom:1em;">
					成功领取1锭津元宝
				</div>

				<div class="weui-di">
					<a href="javascript:;" class="c-c-b" id="goingoinfo1">点击查看</a>
				</div>
				<p style="color:red;margin-bottom:0.2rem;margin-top:0.3rem;">有效期为自津元宝获得日起90天</p>
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

		<div class="nav-tab">
			<div class="navbar">
				<div class="navbar-list">
					<img src="${stax}/assets/images/skin/home-1.png" />
					<p>首页</p>
				</div>
				<div class="navbar-list" onclick="goPage('personal')">
					<img src="${stax}/assets/images/skin/mycenter-1.png" />
					<p>我的</p>
				</div>
			</div>
		</div>
		
				
		<!-- 注册必读 -->
		<div id="reg">
			<div class="titleBar">
	             <div class="titleBar-back">
	                 <img src="${stax}/assets/images/history.png" />&nbsp;返回
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
	        	<p>9.活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。</p>
	        	<p>10.客户参加“天津惠”平台活动，在交易真实有效、操作正常无误的基础上，如果因银行责任而造成消费者损失，经责任认定确认后，银行对客户进行相应补偿。</p>
	        	<p>“天津惠”平台由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。</p>
	        	<p style="margin-bottom:1rem;">“天津惠”平台的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。</p>
	        	
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
   
    var userId = "${userId}";
    
    console.log("userId="+userId);
	var wg = "${wg}";
	
	if(wg&&wg!=""){
		bankid = localStorage.getItem("bankId");
		bankuid = localStorage.getItem("bankuid");
		userId = localStorage.getItem("userId");
	}
    
	if(bankid){
		localStorage.setItem("bankId", bankid);
	}
	if(bankuid){
		localStorage.setItem("bankuid", bankuid);    		    		
	}
	
	if(userId){
		 console.log("userId33="+userId);
		localStorage.setItem("userId", userId);    		    		
	}
	
	var da = new Date("2019/05/26 23:59:00").getTime();
	var dae = new Date().getTime();
	if(dae >= da){
		$(".swiper25").remove();
	}
	
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
	    				var img = '';
	    				for(var i = 0; i < images.length; i++){
	    					if(images[i].holidayName!=null&&images[i].holidayDescr!=null&&images[i].picurl!=null){
	    						
	    						img += '<div style="background: url(${stax}'+images[i].activityPicUrl+') no-repeat 50% top;background-size: contain;" class="swiper-slide jieqi" onclick="lqjyb(\''+images[i].lbtpid+'\')">'+
		    					'<p class="date">'+images[i].holidayName+'</p>'+
								'<p class="text">'+images[i].holidayDescr+'</p>'+
								'<img src="${stax}'+images[i].picurl+'" style="width:4rem;position:absolute;left:6rem;top:4.3rem;"/>'+
	    						'</div>';
	    					}else{
	    						img += '<div style="background: url(${stax}'+images[i].activityPicUrl+') no-repeat 50% top;background-size: contain;" class="swiper-slide jieqi" onclick="lqjyb(\''+images[i].lbtpid+'\')">';
	    					}
	    				}
	    				$("#mySwiper .swiper-slide:nth-of-type(1)").after(img)
	    				//$("#mySwiper .swiper-wrapper").prepend(img); 
	    				//控制字体显示大小
	    				//console.log($(".jieqi .text").html())
    					/*  if($(".jieqi .text").html().length > 9){
    						$(".jieqi .text").css("font-size","0.6rem");
    					}else{
    						$(".text").eq(i).css("font-size","1.2rem");
    					}  */
	    			};
	    		}
	    	});
	    };
	    
// 	    var isClear = false;
// 	    if (localStorage.getItem("bankuid")){
// 	    	//判断是否用新的建行用户登录
// 	    	if(localStorage.getItem("bankuid") != bankuid){
// 	    		localStorage.removeItem("userId");
// 	    	}else{
// 		    	//isClear = findmsg(localStorage.getItem("userid"),localStorage.getItem("bankuid"));
// 		    	$.ajax({
// 					type:"POST",
// 					url:"${ctx}/tjhui/findmsg.json?ud="+encodeURIComponent(localStorage.getItem("userId"))+"&bd="+localStorage.getItem("bankuid")+"&r="+Math.random(),
// 					success:function(req){
// 						console.log(req);
// 						isClear = req.msg;
// 						if(isClear==true){
// 							localStorage.removeItem("userId");
						
// 						}
// 						resetUser();
// 					},
// 					error:function(er){
						
// 					}
// 				});
// 	    	}
// 	    }  


	    
		  	if(userId &&userId!=""){
		  		console.log("重新设置用户");
		  		//重设user信息
		  		var loading = weui.loading('正在加载...');	//loading
		    	$.ajax({
					type: "GET",
					url: "${ctx}/tjhui/resetUser.json",
					data: "id="+encodeURIComponent(userId)+
						"&bankid="+encodeURIComponent(bankid)+"&bankuid="+bankuid+"&r="+Math.random(),
					success: function(resp){
						loading.hide();
						if(resp.user){
							setUserLocal(resp.user);
							$('#user_ingot_num').html(resp.user.ingotnum);
							$('#user_vitality_num').html(resp.user.vitality);
						}else{
							localStorage.removeItem("userId");
							localStorage.removeItem("userPhone");
							localStorage.removeItem("ssdid");
							userId = "";
						}
					},
					error:function(er){
						loading.hide();
						console.log(er);
					}
		    	});
		  	}else{
				localStorage.removeItem("userId");
				localStorage.removeItem("userPhone");
				localStorage.removeItem("ssdid");
		  	}

	    
//     	if(bankid && !isClear){
//     		console.log("bankid="+bankid+"    isClear"+isClear );
//     		localStorage.setItem("bankId", bankid);
//     	}
//     	if(bankuid && !isClear){
//     		console.log("bankuid="+bankuid+"    isClear"+isClear );
//     		localStorage.setItem("bankuid", bankuid);    		    		
//     	}

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
   			autoplay:5000,//自动切换的时间间隔（单.jmfDetail p位ms），不设定该参数slide不会自动切换。
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
		$("#card").on("click",function(){
			goPage("xyk");

		});
		$(".swiper22").on("click",function(){
			goPage("kdj");

		});
		//世界杯
		$(".swiper11").on("click",function(){
			goPage("wcup");

		});
		
		//云中鹤；
		$(".yzh").on("click",function(){
			goPage("yzh");

		});
		
		//津元宝使用指南；
		$(".swiper24").on("click",function(){
			bannerClickLog('津元宝使用指南');
			goPage("use");
		});
		
		$(".swiper25").on("click",function(){
			bannerClickLog('幸运锦鲤');
			goPage("qrqmtjh");

		});
		
		$(".swiper26").on("click",function(){
			bannerClickLog('拼团banner');
			goPage("bannerTuan");
		});
		
		$(".Newold").on("click",function(){
			bannerClickLog('邀请有礼');
			goPage("Newold");
		});
		$("#c-a1").on("click",function(){
			bannerClickLog('邀请有礼');
			goPage("Newold");
		});

		$(".nvshenjie").on("click",function(){
			goPage("nv	shenjie");

		});
		
// 		$(".jmf").on("click",function(){
// 			goPage("jmf");

// 		});
		$(".clickApply").on("click",function(){
			goPage("jmf");
		});
		$(".jmfDetail").click(function(){
			goPage("jmfDetail")
			
		})

		
	});
    
    
//    function  resetUser(){
// 	  	if(localStorage.getItem("userId")){
// 	  		console.log("重新设置用户");
// 	  		//重设user信息
// 	  		var loading = weui.loading('正在加载...');	//loading
// 	    	$.ajax({
// 				type: "GET",
// 				url: "${ctx}/tjhui/resetUser.json",
// 				data: "id="+encodeURIComponent(localStorage.getItem("userId"))+
// 					"&bankid="+localStorage.getItem("bankId")+"&bankuid="+bankuid+"&r="+Math.random(),
// 				success: function(resp){
// 					console.log(resp);
// 					loading.hide();
// 					if(resp.user){
// // 						console.log(resp.user);
// 						setUserLocal(resp.user);
// 						$('#user_ingot_num').html(resp.user.ingotnum);
// 						$('#user_vitality_num').html(resp.user.vitality);
// 					}else{
// 						localStorage.removeItem("userId");
// 						localStorage.removeItem("userPhone");
// 					}
// 				},
// 				error:function(er){
// 					loading.hide();
// 					console.log(er);
// 				}
// 	    	});
// 	  	}
//    }
    
	//保存到相册
// 	function savePic(){         
// 	    var picurl= $(".stocksImg img");
// 	    //alert(picurl);
// 	    savePicture(picurl);
// 	}
// 	var triggerEvent = "touchstart";
// 	function savePicture(Url){
// 		console.log(Url)
// 	    var blob=new Blob([''], {type:'application/octet-stream'});
// 	    var url = URL.createObjectURL(blob);
// 	    var a = document.createElement('a');
// 	    a.href = Url;
// 	    a.download = Url.replace(/(.*\/)*([^.]+.*)/ig,"$2").split("?")[0];
// 	    var e = document.createEvent('MouseEvents');
// 	    e.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
// 	    a.dispatchEvent(e);
// 	    URL.revokeObjectURL(url);
// 	    localStorage.setItem("stocksImg",picurl)
// 	    alert(Url)
// 	}

	// 下载
	var picurl= $(".stocksImg img").prop("src")
function downloadIamge(selector, name) {
    // 通过选择器获取img元素
    var img = $(".stocksImg img")
    // 将图片的src属性作为URL地址
    var url = img.src
    var a = document.createElement('a')
    var event = new MouseEvent('click')
    
    a.download = picurl || '下载图片名称'
    a.href = url
    
    a.dispatchEvent(event)
}

// 调用方式
// 参数一： 选择器，代表img标签
// 参数二： 图片名称，可选

    
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
		localStorage.setItem("ssdid", user.ssdid);
		userId = user.id;
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
        					$("#iosDialog1").hide();
        					weui.alert(resp.msg);
        					$("#iosDialog1").hide();
        					initTimer();
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
  		var iuphone = $("#iuphone").val();
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
					+"&bankuid="+localStorage.getItem("bankuid")+"&iuphone="+iuphone+"&r="+Math.random(),
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
// 						var da1 = new Date("2019-01-01 00:00:00").getTime();
// 			  			var da2 = new Date().getTime();
// 			  			if(da2>=da1){
			  				if(resp.isolduser&&resp.isolduser!=""){
								weui.alert(resp.isolduser);
							}
// 			  			}else{
// 							goPage('sg');
			  				
// 			  			}
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
			gomycenter();
  			return;
  		}else if(!checkUser()) return;
  		
  		var loading = weui.loading('正在加载...');	//loading
  		//---------------------
  		
	  	if(!checkLocal(false, flag)){
	  		loading.hide();
	  		weui.alert('抱歉，本活动为天津建行客户专享活动');
		  	return;
	  	}

// 		loading.hide();
		var uid = localStorage.getItem("userId");
  		if(flag == 'sg'){	//入门好礼
//   	    	var da1 = new Date("2019-01-01 00:00:00").getTime();
//   			var da2 = new Date().getTime();
//   			if(da2>=da1){
//   				weui.alert("活动已结束！");
//   				return;
//   			}
//   			window.location.href = "${ctx}/sg/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
// 			+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
  		}else if(flag == 'ez'){	//兑奖专区
  	    	window.location.href = "${ctx}/exchange/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
  	  			+"&userId="+encodeURIComponent(uid) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
  		}else if(flag == 'ping'){	//拼团
  	    	window.location.href = "${ctx}/pintuan/index.do";
  		}else if(flag == 'poem'){	//诗词
  	    	window.location.href = "${ctx}/poem/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
			+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
  		}else if(flag == 'rb'){	//半价抢购
//   	    	window.location.href = "${ctx}/rushbuy/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
//   			+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
		}else if(flag == 'jyb'){	//津元宝使用指南
			window.location.href = "${ctx}/tjhui/jybguide.do";
		}else if(flag =='zh'){  //专享活动
			window.location.href = "${ctx}/huituan/index.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
		}else if(flag =='xyk'){  //信用卡
			window.location.href = "${ctx}/jsp/creditcard/index.jsp";
		}else if(flag == 'kdj'){ // 肯德基
			window.location.href = "https://wap.ccb.cn/cmccb/servlet/ccbNewClient?TXCODE=Y3251S&DcCp_Avy_ID=YHHD2018040318131&shareType=03&ChanReqType=DISCOUNT_P&from=singlemessage"
  		}else if(flag == 'wcup'){ // 世界杯
			window.location.href = "${ctx}/wcup/index.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
  		}else if(flag == 'yzh'){
//   			isingotshop();
  			window.location.href ="${ctx}/byyzh/toingotshop.do?ssdid="+encodeURIComponent(localStorage.getItem("ssdid"));
  		}else if(flag == 'use'){
  			window.location.href = "${ctx}/jsp/gain/index2.jsp";
  		}else if(flag == 'Newold'){
  			window.location.href = "${ctx}/jsp/Newold.jsp";
  		}else if(flag == 'gw'){
  			//weui.alert("维护中！");
  			//return;
//   			window.location.href = "${ctx}/jsp/game/fancycarp.jsp";
  		}else if(flag =='nvshenjie'){
  			window.location.href = "${ctx}/womenday/appindex.do?uid="+encodeURIComponent(localStorage.getItem("userId"));
  		}else if(flag =='jmf'){
  			window.location.href = "${ctx}/stock/playPage.do?uid="+encodeURIComponent(localStorage.getItem("userId"));
//			window.location.href = "${ctx}/foolsday/appindex.do?uid="+encodeURIComponent(localStorage.getItem("userId"));
//   			window.location.href = "${ctx}/jsp/game/stocks.jsp"
		}else if(flag =='rujin'){
  			window.location.href = "${ctx}/stock/index.do?uid="+encodeURIComponent(localStorage.getItem("userId"));
		}else if(flag == 'xyjl'){
//   			weui.alert("活动暂未开放，请稍后再试");
  			window.location.href = "${ctx}/luckykoi/index.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
  		}else if(flag == 'qrqmtjh'){
  			window.location.href = "${ctx}/luckykoi/index.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
  		}else if(flag=="bannerTuan"){
  			window.location.href = "${ctx}/bannertuan/index.do?uid="+encodeURIComponent(localStorage.getItem("userId"));
  		}else if(flag == "jmfDetail"){
  			window.location.href = "${ctx}/jsp/game/stocks.jsp";
  		}else{
  			comingsoon();
  		}
  		
  		loading.hide();
  	}
  	
  	/************************************************集字赢大奖**********************************************************************/
//   	//指定时间关闭、开启集字赢大奖
// 	function gatherWordBanner(){
//   		var slid ="";
// 		//var nowDate = new Date().getTime();
// 		//var gatherWordRun= new Date("2019,02,01 00:00:00").getTime();
// 		//if(gatherWordRun <= nowDate){
			
// 			slid = $("<div class='swiper-slide gatherword'></div>");
// 		$("#lbtimg").append(slid);
// 			console.log(slid)
// 		//}
// 	}
	
// 	gatherWordBanner();
	
  	/* $(".gatherword").click(function(){
  	//	gatherword();
                goPage("gw");
  	});
  	function gatherword(){
  		$.ajax({
  			url:'${ctx}/gatherword/checkuseriswhite.do',
  			type:'post',
  			data:'bid='+bankuid+'&r='+Math.random(),
  			success:function(resp){
  				if(resp.msg&&resp.msg!=""){
  					weui.alert(resp.msg);
  				}else{
  					window.location.href = "${ctx}/gatherword/bindex.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
  				}
  			}
  		});
  	} */
  	
  	function isingotshop(){
  		$.ajax({
  			type: "POST",
			url: "${ctx}/byyzh/isingotshop.json",
			data: "userId="+encodeURIComponent(localStorage.getItem("userId")),
			success:function(req){
				if(req.status&&req.status=="1"){
					window.location.href ="${ctx}/byyzh/toingotshop.do?ssdid="+encodeURIComponent(localStorage.getItem("ssdid"));
				}
			},
			error:function(err){
				console.log(err);
			}
  		});
  	}
  	
  	
  	
  	function checkUser(){
  		//修改为根据本系统userID判断是否需要登录
		if(!userId||userId==""){
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
//     	$("#c-a1").on("click",function(){
// //     		goPage("rb"); 
// 			goPage("xyjl");
//     	});    //幸运锦鲤
    	$("#c-a2").on("click",function(){
    		goPage('poem');
    	});
		$("#c-a3").on("click",function(){
    		goPage('ez');
    	});
		$("#c-a4").on("click",function(){
			goPage('zh');
			
    	});

	  	$("#c-login-close").on("click",function(){
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
	  	
	  	$(".swiper4").on("click",function(){
	  		window.location.href ="http://www.ccb.com/cn/html1/office/ebank/subject/18/0925jxrssj/index.html";
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
    	var limitShop_left , limitShop_righ; 
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
    		
    		limitShop_left = '<div class="limit-list c-bdth-tap-sk" iddata="'+encodeURIComponent(data[0].id)+'"><img src="${stax}/'+data[0].picUrl+'"><p class="limit-shop-name">'+data[0].prodName+'</p><p class="limit-shop-price">'+data[0].prodPrice+'</p></div>';
			limitShop_right = '<div class="weui-flex-right">'+
									'<div class="limit-list c-bdth-tap-sk" iddata="'+encodeURIComponent(data[1].id)+'">'+
									'<div>'+
								'<p class="limit-shop-name">'+data[1].prodName+'</p>'+
								'<p class="limit-shop-price">'+data[1].prodPrice+'</p>'+							
							'</div>'+
							'<div>'+
								'<img src="${stax}/'+data[1].picUrl+'">'+
							'</div>'+							
						'</div>'+
						'<div class="limit-list c-bdth-tap-sk" iddata="'+encodeURIComponent(data[2].id)+'">'+
							'<div>'+
								'<p class="limit-shop-name">'+data[2].prodName+'</p>'+
								'<p class="limit-shop-price">'+data[2].prodPrice+'</p>'+							
							'</div>'+
							'<div>'+
								'<img src="${stax}/'+data[2].picUrl+'">'+
							'</div>'+
						'</div>'+
						'</div>';   		
    	}
    	$('.weui-flex-left').append(limitShop_left);
    	$('#seckillArea').append(limitShop_right);
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
	$('.userDiv').click(function(){
		$(".userCont").toggle();
	})
	
    function fillSOPrd(data) {
    	var pdiv = '';
    	var row = 0;
    	console.log(data)
    	for(var i=0; i<data.length; i++){
    		var pimg = data[i].picUrl ? data[i].picUrl : "${stax}/assets/images/2-0-goods2.jpg";
    		var price = Number(data[i].price).toFixed(1)
    		pdiv += '<div class="weui-flex__item">' + 
			'<a href="javascript:toso('+data[i].id+');" class="weui-media-box weui-media-box_appmsg c-bdth-tap so-item" data-pid="'+data[i].id+'">' + 
			'<div class="weui-media-box__bd">' + 
				'<div class="weui-media-box__hd">' + 
					'<img class="weui-media-box__thumb" src="${stax}/'+pimg+'" alt="">' + 
				'</div>' + 
				'<h4 class="weui-media-box__title am-text-truncate">'+data[i].prodName+'</h4>' + 
				'<p class="pri c-f-s-16"><span class="c-c-r c-l-h-n">¥'+price+'</span>+<span>'+data[i].ingotNum+'</span><span><img alt="" src="${stax}/assets/images/yuanbao.png" style="width:0.6rem;display:inline-block;"><br><span class="c-f-s-12 c-oldprice c-l-h-n">¥'+data[i].oldPrice+'</span></p>' + 
				/* '<p class="weui-media-box__desc am-text-truncate">已售：'+data[i].saled+'份</p>' +  */				
			'</div></a></div>';
			
    	}
    	$('#local-special .weui-flex').append(pdiv);
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
    	bannerClickLog('节气');
    	if(!bankuid){
  			weui.alert('亲，请登录建行手机银行后参与活动');
		  	return;
  		}
    	if(!checkUser()) return;
    	
    	$.ajax({
    		url:'${ctx}/lbt/getprize.do',
    		type:'post',
    		data:'uid='+encodeURIComponent(localStorage.getItem("userId"))+"&lbtpid="+encodeURIComponent(e)+"&r="+Math.random(),
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
    	window.location.href = "${ctx}/mycenter/myingot.do?userId=" + encodeURIComponent(localStorage.getItem("userId"))+"&toin=1";
    });
    $("#goingoinfo2").click(function(){
    	window.location.href = "${ctx}/mycenter/myingot.do?userId=" + encodeURIComponent(localStorage.getItem("userId"));
    });
    
    //注册必读；

    if($("#checked").prop("checked") == true){
    	$("#btn").css("backgroundColor","#0066b3");
    }else{
    	$("#btn").css("backgroundColor","#ccc");
    }

    $("#checked").click(function(){
    	if($("#checked").prop("checked") == true){
        	$("#btn").css("backgroundColor","#0066b3");
        }else{
        	$("#btn").css("backgroundColor","#ccc");
        }
    });
    $(".register").click(function(){
    	$("#reg").css("display","block");
    });
    $(".titleBar-back").click(function(){
    	$("#reg").css("display","none");
    });
    
    $(".mygoldbean p").click(function(){
    	$("#reg").css("display","block");
    })
    
    
    //暂停服务通知
     //$(".zhezhao , .restalert").css("display","block")

	//苏盈理财banner的单击事件
	$(".swiper3").click(function(){
		jumptofunc('07002001','');
		
	});
	$(".swiper23").click(function(){
		bannerClickLog('云宠物');
		jumptofunc('15010001','');
	});

	$(".kuaidai").click(function(){
		bannerClickLog('建行快贷');
		jumptofunc('08005001','');
	});
	
    /*调用iOS Native方法*/
    function executeCalliOS(url) {
        var iframe = document.createElement("IFRAME");
        iframe.setAttribute("src", url);
        document.body.appendChild(iframe);
        iframe.parentNode.removeChild(iframe);
        iframe = null;
    }
	/*iOS跳转功能方法
	 *func_id为功能ID
	 *para 为参数，形式如 fund_market=xxxx&fund_name=xxxx&fund_code=xxxx
	 */
	function jumpIOS(func_id,para) {
	    executeCalliOS("innerAppCall://CCBCallCenter?funcid="+func_id+"&"+para);
	}
	
	/*安卓跳转功能方法
	 *func_id为功能ID
	 *para 为参数，形式如 fund_market=xxxx&fund_name=xxxx&fund_code=xxxx
	 */
	function jumpAndroid(func_id, para) {
	    mbcjump.startCcbActivity(func_id,para);
	}
	
	/*发起跳转*/
	function jumptofunc(func_id,para) {
	    var ua = (navigator.userAgent||navigator.vendor||window.opera).toLowerCase();
	    var isChromeOrSansung = /chrome|samsung/.test(ua);
	    var isAndroid = /android|adr/.test(ua) && !(/windows phone/.test(ua));
	    if(isChromeOrSansung && isAndroid) {
	    	
	    	
	        jumpAndroid(func_id,para);
	    } else {
	        jumpIOS(func_id,para);  
	    }
	}
	
	//指定时间关闭、开启该功能；
	function closeFun(){
		var msg=sessionStorage.getItem("msg");
		if(msg == null){
			sessionStorage.setItem("msg","123");
			var myDate = new Date().getTime();
			var setDate1= new Date("2019/09/12 20:00:00").getTime();
			var setDate2= new Date("2019/09/15 23:00:00").getTime();
			if(setDate1 <= myDate){
				$(".zhezhao , .restalert").show();				
	
// 				}
			}
			if(setDate2 <= myDate){
				$(".zhezhao , .restalert").hide();
			}
		}else{
			$(".zhezhao , .restalert").hide();
		}
		
	}

	
	
	/* 定时弹窗 */
	
// 	window.onload = function () {
//         //================
//         var s = document.cookie;
//         if (s.indexOf('myad=1') != -1) return; //存在cookie退出下面代码的执行
//         var d = new Date();
//         d.setHours(d.getHours() + 24); //有效期24小时
//         document.cookie = 'myad=1;expires='+d.toGMTString();//设置cookie
//         //================
//         /*自己弹窗代码*/
//         $(".zhezhao , .restalert").show();
//     }
	(function(doc, win) {
//	      用原生方法获取用户设置的浏览器的字体大小(兼容ie)
	        if(doc.documentElement.currentStyle) {
	            var user_webset_font=doc.documentElement.currentStyle['fontSize'];
	        }
	        else {
	            var user_webset_font=getComputedStyle(doc.documentElement,false)['fontSize'];
	        }
	 
//	      取整后与默认16px的比例系数
	        var xs=parseFloat(user_webset_font)/16;
//	      设置rem的js设置的字体大小
	        var view_jsset_font,result_font;
	         
	        var docEl = doc.documentElement,
	        resizeEvt = 'orientationchange' in window ? 'orientationchange' : 'resize',
	        clientWidth,
	        recalc = function() {
	            clientWidth = docEl.clientWidth;
	            if(!clientWidth) return;
	            if(!doc.addEventListener) return;
	            if(clientWidth<750){
//	              设置rem的js设置的字体大小
	                view_jsset_font=20 * (clientWidth / 320);
//	              最终的字体大小为rem字体/系数
	                result_font=view_jsset_font/xs;
//	              设置根字体大小
	                docEl.style.fontSize = result_font + 'px';
	                }
	            else{
	                docEl.style.fontSize = 100 + 'px';
	                }
	        };
	             
	    win.addEventListener(resizeEvt, recalc, false);
	    doc.addEventListener('DOMContentLoaded', recalc, false);
	})(document, window);
	
	/*** 记录banner点击事件 **/
	function bannerClickLog(name){
    	var uid = localStorage.getItem("userId");
    	if(!uid) uid = '';
    	
    	$.ajax({
    		url:'${ctx}/tjhui/bannerlog.json',
    		type:'post',
    		data:'uid='+encodeURIComponent(uid)+"&mname="+name+"&r="+Math.random(),
    		success:function(resp){
//     			console.log('banner log done');
    		}
    	});
    	
    }
	$(".jmf .clickMe").click(function(e){
		goPage("rujin");
	});
	
	/*  下拼团banner */
	var Tdate = new Date("2019/10/31 23:59:59").getTime(); //下架时间
	if(Date.now() >= Tdate){
		$(".swiper26").remove();
	}
	
	/* 炒股大赛 */
	var rjDate = new Date("2019/08/09 23:59:59").getTime(); //入金时间
	if(Date.now() >= rjDate){
		$(".jmf").remove();
	}
	closeFun();
</script>
</body>
</html>
