<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>付款失败</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <title></title>
</head>
<body>

    <div class="container" style="overflow-x: hidden;">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">付款失败</div>
        </div>
        
		<div style="margin-top: 150px;" align="center">
			付款超时(超过了3分钟)，24小时之内原路退回金额。
		</div>
      
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>

<script type="text/javascript">
	/**返回首页**/
	function toHome(){
		window.location.href = '${ctx}/bannertuan/index.do?uid='+encodeURIComponent(localStorage.getItem("userId"));
	}
</script>

</body>
</html>
