<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>邀请有礼</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .weui-dialog__bd:first-child{padding-top:1rem;color: #09b6f2;}
        .weui-cells_form{border: 0;color:#666;font-size: 14px;background: #eee;}
        .weui-cells_form .textarea{background: none;}
        .weui-textarea-counter{display: none;}
        #iosDialog1 .weui-cells_form{background: none;}
        #iosDialog1 .weui-cells_form:after{border:0;}
        .c-content{background: url(${stax}/assets/images/invite1-2bg.jpg) no-repeat 50% 0 #fb483f;background-size:contain;height:100%;padding-top: 2rem;}
        /*@media only screen and (max-height: 501px) {.c-content{padding-bottom:3rem;}}*/
        .invite-coupon{width:8rem;padding-left: 4rem;}
        .invite-c{background: #ffe3ba;margin-left: 4.5rem;width:6.8rem;border-radius: 6px;height:1rem;text-align: center;vertical-align: middle;line-height: 1rem;margin-top:.1rem;}
        .invite-c span{font-size:.5rem;color:#fb483f;}
        .intro-wrapper{width: 14rem;margin-left: 1rem;margin-top:5px;}
        .text1,.text2{background: #ffe3ba;padding:0 .3rem 1rem .3rem;}
        .text1,.text2{padding-bottom:0;}
        .title1 img,.title2 img,.title3 img,.code1 img{width:14rem;}
        .code1 img{margin-left: 1.8rem;margin-top: .2rem;}
        html,.code1{background: #fb483f;padding-bottom: 1rem;}
        .weui-input{height: 1.4rem;background: #eee;padding-left:.2rem;border-radius: 3px}
        .code1 img{width:12rem;}
        p{font-size: .6rem;}
        .container{overflow: hidden;}
        .titleBar, .titleBar-close {background-color: #09b6f2;}
    </style>
    <title></title>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="window.history.back()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">邀请有礼</div>
            <!-- <div class="titleBar-close">关闭</div> -->
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content"><!--  style="padding-bottom: 50px" -->
           <img src="${stax}/assets/images/coupon.png" class="invite-coupon">
           <div class="invite-c"><span>他的邀请码是：${msCode}</span></div>
           <div class="intro-wrapper">
                <div class="title1">
                    <img src="${stax}/assets/images/invite1-title1.jpg">
                </div>
                <div class="text1">
                    <p>即日起凡平台新老用户登录均可持老用户邀请码兑换奖品，平
台会在1-3个工作日内进行验证通过验证码后新老用户均可获得
了礼品一份，奖品将发放到“个人中心-我的奖品当中”，奖品
有限先到先得。</p>
                </div>
                <div class="title2">
                    <img src="${stax}/assets/images/invite1-title2.jpg">
                </div>
                <div class="text2">
                    <p><span class="weui-badge" style="margin-right: 5px;">1</span>奖品有限先到先得。</p>
                    <p><span class="weui-badge" style="margin-right: 5px;">2</span>奖品有限先到先得。</p>
                    <p><span class="weui-badge" style="margin-right: 5px;">3</span>奖品有限先到先得。</p>
                    <p><span class="weui-badge" style="margin-right: 5px;">4</span>奖品有限先到先得。</p>
                </div>
                <div class="title3">
                    <img src="${stax}/assets/images/invite1-title3.jpg">
                </div>
            </div>
            <div class="code1">
                <img src="${stax}/assets/images/vCode.jpg">
            </div>


        <div class="js_dialog" id="iosDialog1" style="opacity: 1; display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd c-c-b c-f-s-16">请输入邀请码
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__bd">
                                <input class="weui-input c-m-b-10" type="number" maxlength="10" pattern="[0-9]*" placeholder="请输入邀请码">
                                <input class="weui-input" type="number" pattern="[0-9]*" maxlength="10" placeholder="请输入营销代码(非必须)">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default">取消</a>
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确认</a>
                </div>
            </div>
        </div>

    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>
    //$(".c-content").height(window.innerHeight)
    /*弹出框*/
    $(function(){

     /*    var $iosDialog1 = $('#iosDialog1');

        $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });

        $('.titleBar').on('click', function(){
            $iosDialog1.fadeIn(200);
        }); */
        
    });
</script>
</body>
</html>