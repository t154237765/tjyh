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
    	html,body{width:100%;height:100%;background:#C61C1B;}
       .c-content{width:90%;height:25.728rem;background: url(${stax}/assets/images/newBg.jpg) no-repeat 100% 100%;background-size: contain;position:relative;padding:0% 5%;}
       .titleBar{;width:100%;height:44px;background-color:#09b6f2;padding-left: 3rem;padding-right: 3rem;box-sizing: border-box;}
		.titleBar-back{color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height:44px;line-height:44px;padding-left:.4rem;position: absolute;left: 0;top:0;bottom:44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display:flex;align-items:center;}
		.titleBar-back .fa{font-size:16px;color:#fff;vertical-align: baseline;margin-right:5px;}
		.titleBar-text{height:44px;line-height:44px;vertical-align: middle;color:#fff;font-size:16px;text-align:center;}
		.titleBar-back img{width:0.3rem;}
		/*鍏抽棴椤甸潰*/
		.titleBar-close{vertical-align: middle;position:absolute;right:0;top:0;bottom:44px;height: 44px;width: 2.8rem;line-height: 44px;background: #09b6f2;color: #fff;text-align:center;border-bottom-left-radius: 2.25rem;border-top-left-radius: 2.25rem;font-size:15px;}
       .c-content img{width:4.8rem;}
       .c-content p{font-size:0.55rem;color:#FAEFD8;margin-top:0.2rem;}
       .activeTimes{position:absolute;top:6.7rem;left:0;right:0;margin:auto;text-align:center;}
       .activeCont{position:absolute;top:9.8rem;left:0;right:0;margin:auto;text-align:center;width:74%;padding:0% 13%;}
       .activeCont p{text-align:left;}
    </style>
</head>
<body>

    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
               	<img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">天津惠</div>
        </div>

        <div class="c-content">
	        <div class="activeTimes">
	        	<img src="${stax}/assets/images/newTimes.png" />
	        	<p>2019年1月—2019年12月</p>
	        </div>
	        <div class="activeCont">
	        	<img src="${stax}/assets/images/newCont.png" />
	        	<div class="text">
	        		<p>（1）天津惠注册客户，可以邀请尚未签约建行手机银行客户，作为被邀请人，签约建行手机银行，在被邀请人注册天津惠时填写邀请人的天津惠注册手机号，当被邀请人成为建行手机银行活跃客户后，邀请人可获得10锭津元宝奖励。</p>
	        		<p>（2）2019年建行手机银行新签约客户，注册天津惠时，填写邀请人手机号并成为建行手机银行活跃客户后，可获得5锭津元宝奖励。</p>
	        		<p>（3）填写邀请人手机号的天津惠注册客户（被邀请人），2019年成功领养建行“云宠物”后，邀请人与被邀请人可同时获得2锭津元宝奖励。</p>
	        	</div>
	        </div>
		</div>

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