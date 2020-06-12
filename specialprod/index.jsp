<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>善融惠购</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
    	.swiper-container {width: 100%;height: 6.7rem;margin-bottom:5px;}
		.swiper1{background: url(${stax}/assets/images/swiper7.jpg) no-repeat 50% top;background-size: contain;}
        .swiper2{background: url(${stax}/assets/images/swiper5.jpg) no-repeat 50% top;background-size: contain;}
        .swiper3{background: url(${stax}/assets/images/swiper1.jpg) no-repeat 50% top;background-size: contain;}
        .swiper4{background: url(${stax}/assets/images/swiper2.jpg) no-repeat 50% top;background-size: contain;} 
        .swiper5{background: url(${stax}/assets/images/swiper3.jpg) no-repeat 50% top;background-size: contain;} 
        .swiper6{background: url(${stax}/assets/images/swiper8.jpg) no-repeat 50% top;background-size: contain;} 
        .swiper7{background: url(${stax}/assets/images/swiper4.jpg) no-repeat 50% top;background-size: contain;} 
        .swiper8{background: url(${stax}/assets/images/swiper6.jpg) no-repeat 50% top;background-size: contain;} 
        .swiper-container-horizontal>.swiper-pagination-bullets, .swiper-pagination-custom, .swiper-pagination-fraction{bottom: 10px;}
        .c-index-hot{background: #f2f1f1;}
        .c-index-hot h3 {font-size: .7rem;padding: 7px;padding-left: 15px;}
        .c-remenhd {width: 20px;height: 20px;display: inline-block;vertical-align: sub;}
        .c-index-hot .weui-flex:nth-child(2){border-bottom:0;}
        .c-index-hot .weui-media-box__hd img{width: 3.2rem;}
        .weui-flex .weui-flex__item:nth-child(odd){border-right:1px solid #eee;}
        a.weui-media-box:active{background: #fff;}
        .weui-navbar-down,.weui-navbar__item.weui-bar__item_on{background: #09b6f2;color:#fff;}
        .weui-navbar__item.weui-bar__item_on{color:#fcd497;}
        #local-special .weui-flex__item{border:0;}
        #local-special .weui-flex{padding:5px 14px 0;padding: 3px .8rem;}
        .weui-media-box_appmsg .weui-media-box__hd{margin-right:0;}
        #local-special .weui-media-box__hd img{border-radius:0;height:3.8rem;width:3.8rem;margin: 0 auto;}
        .weui-media-box__desc{font-size: 12px;}
        #local-special a.weui-media-box{padding:0;}
        #local-special .weui-media-box__bd{margin-right: 5px;background:#fff;border-radius: 3px;padding: .5rem;text-align: left;padding-top:.6rem;}
        .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        /*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#09b6f2;}
        .js_dialog input.weui-input{color:#333;}
        .weui-media-box__title{width: 6rem;margin-bottom:3px;margin-top:3px;}
        .weui-flex__item {flex-grow: 0;max-width:7.2rem;width:7.2rem;}
        .weui-media-box_appmsg h4{font-size: .64rem;}
        .c-f-s-16{font-size: .64rem;}
        .weui-media-box__desc{height: 28px;}
    </style>
</head>
<body>

    <div class="container" style="overflow-x:hidden;">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">善融惠购</div>
        </div>

        <div class="c-content" style="padding-bottom:60px;">
	        <!-- Slider main container -->
			<div class="swiper-container" id="mySwiper">
			    <!-- Additional required wrapper -->
			    <div class="swiper-wrapper">
			        <!-- Slides -->
			        <div class="swiper-slide swiper1"></div>
                    <div class="swiper-slide swiper2"></div>
                    <div class="swiper-slide swiper3"></div>
                    <div class="swiper-slide swiper4"></div>
                    <div class="swiper-slide swiper5"></div>
                    <div class="swiper-slide swiper6"></div>
                    <div class="swiper-slide swiper7"></div>
                    <div class="swiper-slide swiper8"></div>
			    </div>
			    <!-- If we need pagination -->
			    <div class="swiper-pagination"></div>
			</div>

			<div class="c-index-hot" id="local-special">
			
				
				<c:forEach items="${speList}" varStatus="i" var="item" >  
					<c:if test="${i.index % 2 == 0}" >  
		                <div class="weui-flex">
		            </c:if>  
		            
                    <div class="weui-flex__item">
                        <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-item-open" data-href="${item.prodId}">
                            <div class="weui-media-box__bd">
                                <div class="weui-media-box__hd">
                                    <img class="weui-media-box__thumb" src="${item.picUrl}" alt="">
                                </div>
                                <h4 class="weui-media-box__title">${item.name}</h4>
                                <p class="weui-media-box__desc">${item.descr}</p>
                                <p class="pri c-f-s-16">活动价：<span class="c-c-r">￥${item.price}</span></p>
                            </div>
                            
                        </a>
                    </div>
                    
		            <c:if test="${i.index % 2 == 1 || i.last}">  
		            	</div>
		            </c:if>
                    
		        </c:forEach>

                
            </div>

		</div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/amazeui.swiper.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>
    $(function(){
        /*替换click*/
        FastClick.attach(document.body);

        /*swiper轮播图*/
        var mySwiper = new Swiper('.swiper-container', {
            preventClicks : true,//阻止默认事件（preventDefault），防止触摸时触发链接跳转。
            loop : true,//设置为true 则开启loop模式,让Swiper看起来是循环的.
            autoplay: 3500,//自动切换的时间间隔（单位ms），不设定该参数slide不会自动切换。
            effect : 'fade',    //slide的切换效果，默认为"slide"（位移切换）。
            pagination : '.swiper-pagination',  //分页器容器的css选择器。
            preventLinksPropagation : false,    //阻止click冒泡。拖动Swiper时阻止click事件。
            slideToClickedSlide:true,       //设置为true则点击slide会过渡到这个slide。
            autoplayDisableOnInteraction : false,   //用户操作swiper之后，是否禁止autoplay。默认为true：停止。
            paginationClickable :true    //设置为true时，分页器会控制Swiper切换,默认：false。
            
        });

        $('*').click(function(){
            if($(this).data('href')){
                location.href= $(this).data('href');
            }
        });
	});
    
    /**返回首页**/
  	function toHome(){
  		window.location.href = '${ctx}'+localStorage.getItem("indexUrl");
  	}

    window.onload = function(){
        $(".swiper1").on("click",function(){
            window.location = "http://buy.ccb.com/products/pbl_1_1_1.jhtml?";
        });
        $(".swiper2").on("click",function(){
            window.location = "http://buy.ccb.com/groupbuy/index.jhtml?";
        });
        $(".swiper3").on("click",function(){
            window.location = "http://sale.buy.ccb.com/saleplatform/mks/201702223521/index.html";
        });
        $(".swiper4").on("click",function(){
            window.location = "http://sale.buy.ccb.com/saleplatform/mks/201707043722/index.html?source_name=2&source_type=srpc_ztg&source_content=zhzt";
        });
        $(".swiper5").on("click",function(){
            window.location = "http://shop.ccb.com/";
        });
        $(".swiper6").on("click",function(){
            window.location = "http://sale.buy.ccb.com/channel/xdmp_zxxrsh_20170802/index.html?source_name=5&source_type=srpc_ztg&source_content=zhzt";
        });
        $(".swiper7").on("click",function(){
            window.location = "http://buy.ccb.com/crossborder/nb/index.jhtml?";
        });
        $(".swiper8").on("click",function(){
            window.location = "http://sale.buy.ccb.com/channel/srfx_170801/index.html?source_name=8&source_type=srpc_ztg&source_content=zhzt";
        });
    }
</script>
</body>
</html>