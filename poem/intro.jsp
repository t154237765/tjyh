<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>津元宝使用指南</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        #pkbg{background-size: contain; width: 100%;}
    	.pk-wrapper1{padding:4.8rem 1rem 1rem;top:0;background: url(${stax}/assets/images/3-range-b.jpg) left bottom no-repeat;text-align: center;}
        .pk-wrapper1 h1{font-weight:500;letter-spacing: 0px;font-size: 1.1rem;background: #fff;font-family:"华文新魏";padding: 1rem .4rem;}
        
        .pk-wrapper1 h5{font-size: .8rem;margin-bottom: .3rem;}
        .pk-wrapper1 h5.c-actrule{margin-top:7.5rem;}
        .container{padding-top:0;}

        .listrange{width:100%;background: #fff;margin-top:10px;}
        .rangeone{clear:both;font-size:.6rem;height:3rem;text-align: center;border-top:1px solid #eee;border-bottom:1px solid #eee;}
        .rangeleft{float: left;width:3rem;height: 100%;text-align: center;border-right:1px solid #eee;}
        .rangeright{float:right;width:10.5rem;}
        .line1{font-weight:bold;border-bottom:1px solid #eee;}
        .line2{border-bottom:1px solid #eee;}
        .element{position: relative;top: 50%;transform: translateY(-50%);text-align: center;}
        .c-content img{width: 100%;}
    </style>
</head>
<body>

    <div class="container" style="margin-top:44px;background:#fbfaf8;">
        <div class="titleBar">
            <div class="titleBar-back" onclick="window.history.back()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">津元宝使用指南</div>
        </div>

        <div class="c-content">
	        <img src="${stax}/assets/images/introjyb_01.jpg">
			<a href="${ctx}/sg/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
			+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))><img src="${stax}/assets/images/introjyb_02.jpg"></a>
            <img src="${stax}/assets/images/introjyb_03.jpg">
            <img src="${stax}/assets/images/introjyb_04.jpg">
            <img src="${stax}/assets/images/introjyb_05.jpg">
            <img src="${stax}/assets/images/introjyb_06.jpg">
            <img src="${stax}/assets/images/introjyb_07.jpg">
            <img src="${stax}/assets/images/introjyb_09.jpg">
		</div>

    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>
   $(function(){
       
   })
</script>
</body>
</html>