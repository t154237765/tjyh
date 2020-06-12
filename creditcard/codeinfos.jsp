<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>我的优惠券</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/animate.min.css"/>
  <style type="text/css">
        .weui-panel__bd{background:none;}
        .weui-media-box{background: #fff;align-items: flex-start;}
        .c-leftimg-rightall .weui-media-box__desc {width: 9rem;}
        .c-leftimg-rightall .c-c-r{font-size: .8rem}
        .c-change{position: absolute;left: 15px;bottom:.3rem;width:100%;}
        .c-leftimg-rightall .c-change  .c-f-r{width:5.8rem;}
        .weui-form-preview__bd{font-size: .6rem;color:#333;width:100%;}
        .weui-form-preview__label{color:#333;}
        .c-text{text-align-last:auto;margin-right:0;}
        .descr{display:none;}
    </style>
</head>
<body>
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="goHome();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">我的优惠券</div>
            <!-- <div class="titleBar-close">关闭</div> -->
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content">
            <div  id="wrapper">
                    
                    <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea">
                        <div class="weui-media-box weui-media-box_appmsg c-m-b-10" style="padding:0;">
                            <div class="weui-form-preview__bd">
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">商品名称：</label>
                                    <span class="weui-form-preview__value">${prodName}</span>
                                </div>
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">领取时间：</label>
                                    <span class="weui-form-preview__value">${usedTime}</span>
                                </div>
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">券号：</label>
                                    <span class="weui-form-preview__value prodCode"></span>
                                </div>
                                <div class="weui-form-preview__item">
                                    <label class="weui-form-preview__label">有效期：</label>
                                    <span class="weui-form-preview__value">${expDate}</span>
                                </div>
                                <div class="weui-form-preview__item weui-cell_access" onclick="goShop();">
                                    <label class="weui-form-preview__label">适用门店：</label>
                                    <span class="weui-cell__ft">共${count}家</span>
                                </div>
                                <div class="weui-form-preview__item">
                                    <div class="weui-form-preview__item weui-cell_access" onclick="descrShow();">
				                       <label class="weui-form-preview__label">商品说明：</label>
				                       <span class="weui-cell__ft">详细说明</span>
				                   </div>
				                   <span class="weui-form-preview__label c-text descr">${descr}</span>
                                </div>
                            </div>
                        </div>
                        
                    </div>

            </div>
        </div>
      
    </div>
   
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script type="text/javascript">
	var orderId ="${orderId}";
	var prodId = "${prodId}";
	var prodName = "${prodName}";
	var orderType = "${orderType}";
	var isgoxbk = false;
	var codelink;
	$(function(){
		if(prodName.indexOf("好利来")> -1){
			$(".prodCode").html("(惠宝)"+"${winCode}");
		}else if(orderType == 1){
			$(".prodCode").html("<a style='color:#0066cc;text-decoration:underline;' href='javascript:void(0);'>${winCode}</a>");
			isgoxbk = true;
			codelink = "${winCode}";
		}else{
			$(".prodCode").html("${winCode}");
		}
	});
	
	$(".prodCode").click(function(){
		if(isgoxbk){
			window.location.href = codelink;
		}
	});
	
	function goHome(){
		window.location.href ="${ctx}/jsp/creditcard/receiveinfos.jsp";	
	}
	function goShop(){
		window.location.href = "${ctx}/creditcard/goShopLists.do?orderId="+encodeURIComponent(orderId)+"&prodId="+encodeURIComponent(prodId);
	}
	function descrShow(){
		if($(".descr").is(":visible")){
			$(".descr").hide();
		}else{
			$(".descr").show();
		}
	}
</script>
</body>
</html>