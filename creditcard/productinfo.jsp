<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>信用卡详情页</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/animate.min.css"/>
    <style type="text/css">
        .container{background: #fff;}
        .c-leftimg-rightall{border-bottom: 10px solid #f2f1f1}
        .c-leftimg-rightall .weui-media-box__desc{width:8.5rem;}
        .weui-media-box__info{margin-top: 0;font-size:12px}
        .weui-media-box__info__meta{padding-right:5px;color:#666;}
        .weui-media-box__desc{color:#666;}
        .container{padding-top: 0;}
        .weui-btn_plain-primary{background: #0066b3;color:#fff;border:0;}
        .weui-form-preview__label,.weui-cell__ft{font-size: .6rem;color:#333;}
        .button-sp-area{position: fixed;bottom: 0;left: 0;background: #fff;width: 100%;margin: 0;}
        .button-sp-area a{width: 60%;}
        .weui-cell__ft{float:right;}
        .c-content{padding-top:44px;}
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{height:3.7rem;}
    </style>
    <title></title>
</head>
<body>

</body>
    <div class="container">
		 <div class="titleBar">
            <div class="titleBar-back" onclick="goHome();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">信用卡赠券专区</div>
        </div>
        <!-- 列表内容 -->
        <div class="c-content">
            <div class="weui-panel__bd c-leftimg-rightall">
                <div class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" src="${picUrl}" alt="">
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">${prodName}</h4>
                    </div>
                </div>
            </div>


            <div class="weui-panel__bd" style="padding-bottom: 4rem;">
                <div class="weui-media-box" onclick="goShop();">
                    <div class="weui-form-preview__item weui-cell_access">
                        <label class="weui-form-preview__label" style="float: none;font-size:0.7rem;font-weight:800;">适用门店</label>
                        <span class="weui-cell__ft">共${count}家</span>
                    </div>
                </div>
                <div class="weui-media-box">
                   <div class="weui-form-preview__item weui-cell_access" onclick="descrShow();">
                       <label class="weui-form-preview__label" style="float: none;font-size:0.7rem; font-weight:800;">商品介绍</label>
                   </div>
               </div>
               <div class="weui-form-preview__item weui-cell_access descr" style="padding: 0 10px;">
                        <label class="weui-form-preview__label" style="float: none;">${descr}</label>
               </div>
                <div class="button-sp-area">
                    <a href="javascript:;" class="weui-btn weui-btn_plain-primary" onclick="receive();">免费领取</a>
                </div>
            </div>
        </div>

    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>
	var prodId="${id}";
	//免费领取。同时判断是否还有购买机会  以及 商品数量
	function receive(){
		$.ajax({
			url:'${ctx}/creditcard/receive.json',
			data:'prodId='+encodeURIComponent(prodId)+"&userId="+encodeURIComponent(localStorage.getItem("userId")),
			type:'post',
			success:function(resp){
				if(resp.msg){
					weui.alert(resp.msg);
				}else{
					//跳转至领取成功页面
					window.location.href ="${ctx}/creditcard/gosuccess.do?prodId="+encodeURIComponent(prodId);
				}
			}
		});
	}
	//查询门店列表
	function goShop(){
		window.location.href = "${ctx}/creditcard/goShopLists.do?prodId="+encodeURIComponent(prodId);
	}
	
	function goHome(){
		window.location.href = "${ctx}/jsp/creditcard/index.jsp";	
	}
</script>

</body>
</html>