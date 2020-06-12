<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>奖品详情</title>
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
    </style>
</head>
<body>

</body>
    <div class="container">

		<div class="titleBar">
            <div class="titleBar-back" onclick="javascript:window.history.back();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">${title}</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content">
            
            <div class="weui-panel__bd">
                <div class="weui-media-box weui-media-box_text goodsintro" style="font-size:.7rem;">
                    <p class="c-f-s-18">奖品说明</p>
                    	${desc}
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
    
});
</script>
</body>
</html>
