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
    </style>
</head>
<body>

</body>
    <div class="container">

		<div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">订单详情</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content">
            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10">
                <div class="weui-form-preview__bd">
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">商品名称</label>
                        <span class="weui-form-preview__value">50元全国话费</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">支付金额</label>
                        <span class="weui-form-preview__value">￥0.01元</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">使用津元宝</label>
                        <span class="weui-form-preview__value">50锭</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">订单号</label>
                        <span class="weui-form-preview__value">13345345345345</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">订购时间</label>
                        <span class="weui-form-preview__value">2017-11-22 12:33</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">订购状态</label>
                        <span class="weui-form-preview__value">已成功</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">兑换码</label>
                        <span class="weui-form-preview__value">13345345345345</span>
                    </div>
                    <div class="weui-form-preview__item">
                        <label class="weui-form-preview__label">有效期</label>
                        <span class="weui-form-preview__value">2017-11-22</span>
                    </div>
                </div>
            </div>


            <div class="weui-panel__bd">
                <div class="weui-media-box weui-media-box_text">
                    <p class="c-f-s-18">商品说明</p>
                    	<p class="c-f-s-13 c-c-r">温馨提示：携号转网手机号可能存在无法正常充值的情况，给您造成的不便请您谅解。</p>
                        <p class="c-f-s-13">1.本商品每个用户每月仅限兑换1次<br />
                        2.所兑换商品直接充值至登录平台的手机号码<br />
                        3.由于月初月末，订单交易量比较大，运营商充值系统繁忙偶尔存在延迟到账或者充值失败的情况，请您直接联系我们，我们将在第一时间为您处理。如因错填号码而导致的损失均由用户自行负责（为保障您的合法利益，请慎重填写充值号码）客服电话：400-810-9200 <br /></p>
                		<p class="c-f-s-13">3.郑重说明：<br />
                		<p class="c-f-s-13">（1）本平台所有话费均不直接参与运营商活动。<br />
                		<p class="c-f-s-13">（2）请用户仔细核对要充值的手机号码，平台为自动充值，一旦付款成功就无法修改或者撤销订单，只能最终充值结果。在网上提交的充值内容，是具备法律效应的交易指令。若因个人原因填写号码错误造成损失，平台恕不承担责任，并且不承诺找回损失的义务。<br />
                		<p class="c-f-s-13">（3）购买前请查询要充值号码的话费余额，如已停机的，请查询欠费多少，以免万一充值后话费依然不足，不能正常开机，造成不必要的误会，谢谢合作!<br />
                		<p class="c-f-s-13">（4）若交易成功后没有收到短信，建议您用充值号码拨打运营</p>
                </div>

            </div>

        </div>


      
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>

<script class="navbar js_show">
    /* 提示 */
//     weui.toast('本次拼团已经结束', {
//         duration: 2000,
//         className: 'toast-warn',
//         callback: function(){ 
//             return false;  
//         }
//     });
</script>

<script>
$(function(){
	/*替换click*/
  	FastClick.attach(document.body);
    
});

</script>
</body>
</html>
