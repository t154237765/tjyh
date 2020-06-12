<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>兑换详情</title>
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
    <title></title>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">订购失败</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" style="padding-bottom: 50px;background:#f2f1f1;">
            <!-- 失败 -->
            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10" style="text-align:center">
                <div class="icon-box">
                    <img src="${stax}/assets/images/orderfail.jpg">
                </div>
                <div class="icon-box__ctn">
                    <h3 class="icon-box__title" style="color:red">订购失败</h3>
                </div>
            </div>

            <%-- <div class="weui-panel__bd c-leftimg-rightall c-m-b-10">
                <div class="weui-media-box">
                    <p class="weui-media-box-p">收货人：${paramMap.recName}</p>
                    <p class="weui-media-box-p">联系电话：${paramMap.phone}</p>
                    <p class="weui-media-box-p">收货地址：${paramMap.address}</p>
                    <p class="weui-media-box-p">成团时间：${paramMap.buildTime}</p>
                </div>
            </div> --%>

			<div class="weui-panel__bd c-leftimg-rightall c-m-b-10">
				<div class="weui-form-preview__bd" style="text-align:center;">
	               <p class="c-f-s-14">很抱歉，由于支付超时，您的订单已失效，已为您处理退款，请注意查收。</p>
	            </div>
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
	window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
}

</script>
</body>
</html>