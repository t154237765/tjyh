<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>活动规则</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .c-imagetag{top: .8rem;}
        .picTxtList .c-list-left-div{width: 14rem;}
        .c-title-right{font-size: 14px;line-height: 1.8;float: right;margin-right: .6rem;}
        .weui-icon_msg{font-size:45px;color:#09b6f2;}
        .c-leftimg-rightall .icon-box__title{color:#ff9500;font-size:.8rem;padding-left:0;}
        .icon-box {justify-content: center;padding-top:15px;display: -webkit-box;display: -webkit-flex;display: flex;-webkit-box-align: center;-webkit-align-items: center;align-items: center;
        }
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:4rem;height:4rem;}
        .c-imagetag {position: absolute;right: 0px;top: 0px;background: url(${stax}/assets/images/2-0-tag2.png) 0 0 no-repeat;width: 3.2rem;height: 1.2rem;background-size: contain;left: initial;}
.c-imagetag span {color: #fff;font-size: .6rem;vertical-align: super;margin-left: 0.4rem;margin-top: 2px;display: block;}
.weui-navbar-down .red{height: 2.1rem;line-height: 2.1rem;padding:0;}
.weui-navbar-down .red a{width: 100%;height: 100%;display: block;}

.icon-box img{width:2rem;height:2rem;}
.weui-form-preview__bd,.weui-form-preview__label{font-size:.7rem;color:#333;}
    </style>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">限时抢购</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" style="padding-bottom: 50px;background:#f2f1f1;">
        	
            


			<div class="weui-panel__bd c-leftimg-rightall c-m-b-10" style="padding:1rem;";>
				<p class="c-panel-image2">
                            	<span style="font-size: .7rem;color:#333;">活动规则:</span></br>
   1.活动时间：每天10：00至24:00，限定商品数量，抢完为止；</br>
   2.活动对象：天津分行手机银行用户专享；</br>
   3.每天每位用户每款商品限抢购一次，3个限时抢购栏位的商品，每位客户每月累计最多可以成功抢购4次；</br>
   4.活动中所抢购的商品码或充值类商品均以短信形式发送或充值到用户登录“天津惠”平台时使用的手机号，用户也可通过个人中心→我的订单查看；</br>
   5.充值类商品在支付成功后24小时内为您处理充值，<span style="color:red;">如月底月初遇到运营商集中结算时充值时间顺延；</span></br>
   6.限时抢购活动中所有商品均不支持使用津元宝；</br>
   7.活动声明：活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任；</br>
   8.本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议；</br>
   9.本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。<br>
                            </p>
	       	</div>
            
        </div>

        <%-- <div>
            <div class="page__bd">
                <div class="weui-tab">
                    <div class="weui-navbar weui-navbar-down">
                    
                        <div class="weui-navbar__item weui-bar__item_on red">
                         <a href="tel:${paramMap.suppPhone}" style="color: #fff;"> 联系卖家</a>
                        </div>                   
                    </div>
                </div>
            </div>
        </div> --%>
  
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>

<script class="navbar js_show">
    $(function(){
        $('.weui-navbar__item').on('click', function () {
            $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
        });
    });
</script>

<script>

function toHome(){
	var bflag = "${payback}";
	if(bflag){
		window.location.href = '${ctx}'+localStorage.getItem("indexUrl");
	}else{
		window.history.back();
	}
}

</script>
</body>
</html>