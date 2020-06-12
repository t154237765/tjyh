<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>领取成功</title> 
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/animate.min.css"/>
  	<style type="text/css">
        p{font-size: .6rem;}
        .c-imagetag{top: .8rem;}
        .picTxtList .c-list-left-div{width: 14rem;}
        .c-title-right{font-size: 14px;line-height: 1.8;float: right;margin-right: .6rem;}
        .weui-icon_msg{font-size:45px;color:#09b6f2;}
        .c-leftimg-rightall .icon-box__title{color:#faa519;font-size:.8rem;}
        .icon-box {justify-content: center;margin-bottom: 15px;padding-top:10px;padding-bottom:3rem;display: -webkit-box;display: -webkit-flex;display: flex;-webkit-box-align: center;-webkit-align-items: center;align-items: center;
        }
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:4rem;height:4rem;}
        .weui-navbar__item.weui-bar__item_on{background: #09b6f2;color: #fff;}
        .c-p-l{float: left;display: inline-block;width: 4rem;height: 2rem;}
        .c-p-r{float: right;display: inline-block;width: 9rem;text-align: right;height: 2rem;}
        .weui-media-box{clear: both;height: 3rem;}
        .weui-media-box{padding-bottom: 5px;}
        .c-m-b-10{margin-bottom: 1rem;}
        .weui-panel__bd{position: relative;}
        .c-t-name{position: absolute;top: -.9rem;left: 0;color: #09b6f2;font-size: .6rem;padding-left:15px;}
        .c-tishi{position: absolute;bottom: .5rem;left: 0;font-size: .6rem;width: 100%;text-align: center;}
        .c-gclist .frame{width:13rem;height:.5rem;background-color:#dcdcdc;margin:0 auto;border-radius:1rem;position: relative;}
.c-gclist .bar{width:10%; height:100%; position:absolute; left:0; top:0; background:#aaa;border-top-left-radius: 1rem;
    border-bottom-left-radius:1rem;}
        .c-gdt{margin-bottom: 10px;padding-bottom: 10px;padding-top: 10px;}
    </style>
</head>
<body>
   <div class="container" style="background: #fff;">
        <div class="titleBar">
            <div class="titleBar-back" onclick="goHome();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">领取成功</div>
            <!-- <div class="titleBar-close">关闭</div> -->
        </div>
        <!-- 列表内容 -->
        <div class="c-content" style="background: #eee;">
            <!-- 充值成功 -->
            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10" style="padding-bottom: 1rem;">

                <div class="icon-box" style="margin-bottom: 0;padding-top: 2rem;">
                    <img src="${stax}/jsp/creditcard/image/okl.jpg" alt="" style="width:1.8rem;height: 1.8rem;"><span style="color: #ff9500;font-size: .7rem;margin-left: .5rem;">领取成功</span>
                    <div class="c-tishi" style="width: 80%;left: 10%;">恭喜您，成功领取1张${prodName}<br/>请在领取记录中查看</div>
                </div>
            </div>
        </div>
    </div>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script type="text/javascript">
	var prodId = "${prodId}";
	function goHome(){
		window.location.href ="${ctx}/creditcard/showcreaditcardprodinfo.do?shop=1&pid="+encodeURIComponent(prodId);
	}
</script>
</body>
</html>