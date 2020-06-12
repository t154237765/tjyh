<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>商品详情</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
    body{
    	background:#f2f1f1;
    }
        .c-imagetag{top: .8rem;}
        .picTxtList .c-list-left-div{width: 14rem;}
        .c-title-right{font-size: 14px;line-height: 1.8;float: right;margin-right: .6rem;}
        .weui-icon_msg{font-size:45px;color:#09b6f2;}
        .c-leftimg-rightall .icon-box__title{color:#fa1e1e;font-size:1rem;font-weight:bold;}
        .icon-box {justify-content: center;margin-bottom: 15px;padding-top:15px;display: -webkit-box;display: -webkit-flex;display: flex;-webkit-box-align: center;-webkit-align-items: center;align-items: center;
        }
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:4rem;height:4rem;}
        .c-nologistics{text-align: center;min-height: 2.8rem;font-size: .7rem;margin-top: .8rem;color:#aaa;}
        .c-imagetag {position: absolute;right: 0px;top: 0px;background: url(${stax}/assets/images/2-0-tag2.png) 0 0 no-repeat;width: 3.2rem;height: 1.2rem;background-size: contain;left: initial;}
.c-imagetag span {color: #fff;font-size: .6rem;vertical-align: super;margin-left: 0.4rem;margin-top: 2px;display: block;}
.weui-navbar-down .red{height: 2.1rem;line-height: 2.1rem;padding:0;}
.weui-navbar-down .red a{width: 100%;height: 100%;display: block;}
		.c-content h3{display:flex;align-items:center;}
		.c-content h3 img{width:0.6rem;}
		.c-leftimg-rightall{margin-bottom:10px;}
		.c-left{margin-bottom:10px;font-size:0.56rem;font-weight:bold;}
		.c-left span{font-weight:100;}
		.c-right{margin-bottom:10px;font-size:0.56rem;}
		.c-right .top{display:flex;align-items:center;justify-content:space-between;}
		.c-right .img{width:0.3rem;}
		.c-right .img img{width:0.3rem;transform:rotate(180deg);}
		.rotate{transform:rotate(90deg);}
		.imgCont{font-size:0.56rem;display:none;}
		.imgCont img{width:100%;}
		.c-img img{width:100%;}
    </style>
    <title></title>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">我的专项活动</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" style="padding-bottom: 50px">
            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10" style="position: relative;">
                <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" id="c-duo-img" src="${paramMap.picUrl}" alt="">
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">${paramMap.prodName}</h4>
                        <p class="weui-media-box__desc c-esp-desc"><span class="c-c-r c-m-r-5 c-f-s-16">￥${paramMap.prodPrice}</span><s>￥${paramMap.oldPrice}</s></p>
                        <%-- <p class="weui-media-box__desc">已团<span>${paramMap.teamNum}</span>件  剩余<span>${paramMap.prodNum-paramMap.teamNum}</span>件</p> --%>
                    </div>
                </div>

            </div>
            
            <div class="c-card">
                <div class="weui-panel__bd c-leftimg-rightall c-m-b-10">
                    <h3><img class="c-kuaidixinxi c-m-r-5" src="${stax}/assets/images/kaquanxinxi.png"></img>卡券信息
                    </h3>
                    <div class="weui-media-box">
                        <p class="weui-media-box-p">兑换码：${paramMap.winCode}</p>
                        <c:if test="${not empty paramMap.expDate}">
                        	<p class="weui-media-box-p">有效期:${paramMap.expDate}</p>
						</c:if>
                    </div>    
                </div>

                <div class="weui-panel__bd c-leftimg-rightall">
                    <div class="weui-media-box">
                        <p class="weui-media-box-p">订单编号：${paramMap.orderNo}</p>
                        <p class="weui-media-box-p">下单时间：${paramMap.creTime}</p>
                    </div>
                </div>
                
                <div class="weui-panel__bd c-left">
                	<div class="weui-media-box">
                       <div>商品说明：<span>悦花混合包月套餐：悦花包月分4次配送，每周一束，每束含3-4种花材，8-12枝 。花束由专业配艺师搭配，不可指定或剔除。</span></div>
                    </div>    
                </div>
                
                <div class="weui-panel__bd c-right">
                	<div class="weui-media-box">
                        <div class="top">
                        	<div>使用规则</div>
		                    <div class="img">
		                    	<img src="${stax}/assets/images/more.png" />
		                    </div>
                        </div>
	                    <div class="imgCont">
	                    	第一步：<br>
							使用链接  http://t.flowerplus.cn/dh 进入兑换页面  或微信扫一扫二维码进入兑换页面（二维码如下）<br>
							<img src="${stax}/assets/images/girls/images1.png" />
							第二步：<br>
							输入电子兑换码，填写收花人信息，选择收花时间。<br>
							<img src="${stax}/assets/images/girls/images2.png" />
							第三步：<br>
							兑换成功通知<br>
							<img src="${stax}/assets/images/girls/images3.png" />
							<img src="${stax}/assets/images/girls/images4.png" />
	                    </div>
                    </div>    
                </div>
                
                <div class="weui-panel__bd c-img">
                	<div class="weui-media-box">
                        <img src="${stax}/assets/images/girls/flower1.jpg" />
                        <img src="${stax}/assets/images/girls/flower2.jpg" />
                    </div>    
                </div>
            </div>

        </div>
  
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>

<script class="navbar js_show">
    $(function(){
        $('.weui-navbar__item').on('click', function () {
            $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
        });
        
        var ptype = '${paramMap.prodType}';
        if("2" == ptype){
        	$('.c-card').show();
        }else{
        	$('.c-address').show();
        }
        
        var sefl = "${paramMap.cmpName}";
        if(sefl){
        	$('.c-nologistics').hide();
        }else{
        	$('.c-nologistics').show();
        }
        
        $(".c-right").click(function(){
        	$(".imgCont").slideToggle();
        	$(".img").toggleClass('rotate')
        })
    });
</script>

<script>

function toHome(){
	var bflag = "${payback}";
	if(bflag){
		//window.location.href = '${ctx}/pintuan/indexhx.do?idcard='+localStorage.getItem("tjuserIdCard");
		window.location.href = '${ctx}/huituan/index.do';
	}else{
		window.history.back();
	} 
	
}
</script>
</body>
</html>