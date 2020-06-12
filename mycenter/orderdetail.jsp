<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>订单详情</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .container,.weui-navbar-right{background: #fff;}
        .c-leftimg-rightall .weui-media-box__desc{width:8.5rem;}
        .weui-media-box__info{margin-top: 0;font-size:12px}
        .weui-media-box__info__meta{padding-right:5px;color:#666;}
        .weui-media-box__desc{color:#666;}
        .openbtn{line-height: 2.5rem;width:2.8rem;height:1.8rem;background:url(${stax}/assets/images/goldbig.jpg) no-repeat;background-size:contain;color:#b86c00;font-size: .6rem;text-align: center;vertical-align: middle;    position: absolute;bottom: 2.4rem;left: 9rem;}
        .weui-form-preview__bd, .weui-form-preview__label{font-size:.7rem;color:#333;}
        .c-content{background:#f2f1f1;}
        .goodsintro img{width:100%;}
        .c-panel-image2{font-size: .6rem;margin-top: 9px;border-top:1px solid #dedede;padding-top:7px;color:#666;}
        #code2 a{text-decoration:underline;color:deepskyblue;}
    </style>
</head>
<body>

</body>
    <div class="container">

		<div class="titleBar">
            <div class="titleBar-back" onclick="javascript:window.history.back();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">${data.prodName}</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content">
            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10">
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">商品名称:</label>
                        <span class="weui-form-preview__value">${data.prodName}</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">支付金额:</label>
                        <span class="weui-form-preview__value">¥${data.payMoney}元</span>
                    </div><div id="ingotArea">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">使用津元宝:</label>
                        <span class="weui-form-preview__value">${data.ingotNum}锭</span>
                    </div></div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">订单号:</label>
                        <span class="weui-form-preview__value">${data.orderNo}</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">订购时间:</label>
                        <span class="weui-form-preview__value">${data.payTime}</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">订购状态:</label>
                        <span class="weui-form-preview__value">已成功</span>
                    </div><div id="couponArea">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">兑换码:</label>
                        <span class="weui-form-preview__value" id = "code2"><a href=""></a></span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">有效期:</label>
                        <span class="weui-form-preview__value">${data.codeDuetime}</span>
                    </div></div>
                </div>
            </div>

            <div class="weui-panel__bd">
                <div class="weui-media-box weui-media-box_text goodsintro c-panel-image2">
                    <span class="c-f-s-18" style="padding-bottom:11px;">商品说明</span><br>
                    	${data.descr}
                </div>
            </div>
        </div>      
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script type="text/javascript">
    var errMsg = "${errMsg}";
    if(errMsg && errMsg != ""){
    	weui.alert(errMsg, function() {
    		window.history.go(-1);
    	});
    }
</script>
<script>
$(function(){
	/*替换click*/
  	FastClick.attach(document.body);
  	var reg=/^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+).)+([A-Za-z0-9-~\/])+$/;
	var url = "${data.couponCode}"
	if(!reg.test(url)){
		$("#code2").html(url);

	}else{
		$("#code2 a").attr("href",url);
		$("#code2 a").text(url);
	}
    
});
var code = '${data.couponCode}';
if (code == '') {
	$("#couponArea").hide();
}else{
	if("${data.prodName}".indexOf("好利来")>-1){
		$("#code2").html("(惠宝)"+"${data.couponCode}");
	}
}




var showIngot = '${data.showIngot}';
if (showIngot == '0') {
	$("#ingotArea").hide();
}
</script>
</body>
</html>
