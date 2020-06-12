<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>诗词大会</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        #pkbg{background-size: contain; width: 100%;}
    	.pk-wrapper{padding:4.8rem 1rem 1rem;}
        .pk-wrapper h1{font-weight:500;letter-spacing: 0px;font-size: 1.1rem;background: #fff;font-family:"华文新魏";padding: 1rem .4rem;}
        .button-sp-area{width:100%;margin-top:.5rem;}
        .button-sp-area a{padding:.4rem 0;font-size: .8rem;}
        .weui-dialog__bd:first-child{padding-top:1rem;color: #09b6f2;}
        .weui-cells_form{border: 0;color:#666;font-size: 14px;background: #eee;}
        .weui-cells_form .textarea{background: none;}
        .weui-textarea-counter{display: none;}
        .weui-textarea{background: transparent;}
        .weui-cells:after{border:0;}
        .actPrizeImg div{display: inline-block;margin:0 .4rem;text-align: center;}
        .actPrizeImg div:first-child{margin-left: .4rem;}
        .actPrizeImg div:nth-child(4){margin-right:0;}
        .actPrizeImg img{width:2.3rem;margin: 0 auto;}
        .pk-wrapper h5{font-size: .8rem;margin-bottom: .3rem;}
        .pk-wrapper h5.c-actrule{margin-top:7.5rem;}
    </style>
</head>
<body>

    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="window.history.back()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">诗词大会</div>
            <!-- <div class="titleBar-close" onclick="alert('shutdown');">关闭</div> -->
        </div>
        <div class="titleBar-close">关闭</div>

        <div class="c-content">
	        <img src="${stax}/assets/images/3-5bg.jpg" id="pkbg">
			<div class="pk-wrapper">
                <div class="actPrize c-t-a-l c-m-b-10">
                    <h5 class="c-c-o">活动奖品:</h5>
                    <div class="actPrizeImg">
                        <div>
                            <img src="${stax}/assets/images/3-5-1.png">
                            <p>流量券</p>
                        </div>
                        <div>
                            <img src="${stax}/assets/images/3-5-2.png">
                            <p>现金红包</p>
                        </div>
                        <div>
                            <img src="${stax}/assets/images/3-5-3.png">
                            <p>爱奇艺会员</p>
                        </div>
                        <div>
                            <img src="${stax}/assets/images/3-5-4.png">
                            <p>优惠券</p>
                        </div>
                    </div>
                </div>
                <h5 class="c-c-o c-t-a-l c-m-t-10">活动流程:</h5>
                <h5 class="c-c-o c-t-a-l c-m-t-10 c-actrule">活动规则:</h5>
                <p class="c-t-a-l">即日起，用户通过点击建行手机银行“天津惠”广告，进入“天津惠”平台，即可参与诗词大会闯关活动。用户在规定时间内正确回答所有问题完成闯关即可获得一次抽奖机会。随机支付1~2元进行抽奖，支付金额将即时退回至支付卡号。闯关遇阻可分享关卡至微信好友/朋友圈邀请朋友帮答。奖品有限，先到先得，快快行动吧！</p>
                <div class="button-sp-area">
                    <a href="http://group.ccb.com/cn/v3/head_content/mbsapp.html" class="weui-btn weui-btn_plain-primary" style="line-height: 1.2">进入/下载建行手机银行APP</a>
                </div>
            </div>
		</div>

    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>
var indexUrl = localStorage.getItem("indexUrl"); //返回首页的URL
   $(function(){
        // $("#pkbg").width(window.innerWidth);
        // $("#pkbg").height(window.innerHeight-44);

        /*弹出框2*/
       /*  var $iosDialog2 = $('#iosDialog2');
        $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });
        $('.weui-navbar-down').on('click', function(){
            $iosDialog2.fadeIn(200);
        }); */
        
       /*  weui.toast('感谢少侠仗义相助，我已闯过此关', {
            duration: 1000,
            className: 'toast-warn',
            callback: function(){ 
                return false;  
            }
        }); 
	   */   
        
   })
   
 //返回按钮单击事件
  /*  function shutdown(){	 
   	 window.location.href = '${ctx}'+indexUrl;
   } */
     
   
   
</script>
</body>
</html>