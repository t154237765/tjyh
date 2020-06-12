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
    <link rel="stylesheet" href="${stax}/assets/lib/iconfont.css"/>
    <style type="text/css">
    	*{padding:0;margin:0;}
    	html,body{width:100%;height:100%;background:#2d7ef4;}
       .c-content{width:100%;height:25.728rem;background: url(${stax}/assets/images/beijing.jpg) no-repeat 100% 100%;background-size: 100% 100%;position:relative;}
       .titleBar{;width:100%;height:44px;background-color:#09b6f2;padding-left: 3rem;padding-right: 3rem;box-sizing: border-box;}
		.titleBar-back{color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height:44px;line-height:44px;padding-left:.4rem;position: absolute;left: 0;top:0;bottom:44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display:flex;align-items:center;}
		.titleBar-back .fa{font-size:16px;color:#fff;vertical-align: baseline;margin-right:5px;}
		.titleBar-text{height:44px;line-height:44px;vertical-align: middle;color:#fff;font-size:16px;text-align:center;}
		.titleBar-back img{width:0.3rem;}
		/*鍏抽棴椤甸潰*/
		.titleBar-close{vertical-align: middle;position:absolute;right:0;top:0;bottom:44px;height: 44px;width: 2.8rem;line-height: 44px;background: #09b6f2;color: #fff;text-align:center;border-bottom-left-radius: 2.25rem;border-top-left-radius: 2.25rem;font-size:15px;}
       .c-content img{width:100%;}
       .c-content p{font-size:0.55rem;color:#FAEFD8;margin-top:0.2rem;}
       .activeCont img{margin:.5rem 0;float:left;}
       .container .img{width:100%;}
    </style>
</head>
<body>

    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
               	<img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">网银大作战</div>
        </div>

       <img class="img" src="${stax}/assets/images/wangyin1.jpg">

    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>

	
/**返回首页**/
	function toHome(){
		window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
	}
</script>
</body>
</html>