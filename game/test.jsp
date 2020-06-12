<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="${stax}/assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
     .restalert {width: 6rem;height: 6rem;background: #fff;position: absolute;top: 25%;left: 30%;z-index: 1000;border-radius: 5px;padding:0;}
     .restalert img{width:100%;height:100%;}
     .zhezhao{position: absolute;top: 0;left: 0;bottom: 0;right: 0;background: #000;opacity: .5;z-index: 999;}
    
    </style>
</head>
<body>
<div class="zhezhao" style="display: none;"></div>
	<!-- 二维码 -->
	<div class="restalert" style="display: none;">
    	<div class="c-close2"></div>
        <div class="text1">
        	<img src="" />
        </div>
    </div>
    
           		        <!-- 标签栏 -->
        <div class="weui-tab" style="height:auto;">
        	<div class="weui-navbar weui-navbar-down">
        		
        		<div class="weui-navbar__item" onclick="showQrcode()" style="background:#09b5f3;color:#fff;display:block;">查看二维码</div>
        	</div>
        </div>	

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=12"></script>
<script type="text/javascript">

function showQrcode(){
	$(".restalert IMG").attr('src', '${ctx}/test/showQrcode.json?td=1');
	var h = $(document).height();
	$(".zhezhao").height(h+'px')
	$("html,body").css("overflow","hidden");
	$("body").scrollTop(0)
	$(".zhezhao,.restalert").show();
}



</script>
</body>
</html>