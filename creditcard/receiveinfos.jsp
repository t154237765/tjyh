<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>我的优惠券</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/animate.min.css"/>
  <style type="text/css">
        .c-imagetag{top: .8rem;}
        .picTxtList .c-list-left-div{width: 14rem;}
        .c-title-right{font-size: 14px;line-height: 1.8;float: right;margin-right: .6rem;}
        .weui-icon_msg{font-size:45px;color:#09b6f2;}
        .c-leftimg-rightall .icon-box__title{color:#fa1e1e;font-size:1rem;font-weight:bold;}
        .icon-box {justify-content: center;margin-bottom: 15px;padding-top:15px;display: -webkit-box;display: -webkit-flex;display: flex;-webkit-box-align: center;-webkit-align-items: center;align-items: center;
        }
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:4rem;height:4rem;}
        .weui-navbar__item.weui-bar__item_on{background: #fff;font-size: 12px;text-align: left;padding-left: 15px;  vertical-align: middle;line-height: 1rem;height: 1rem;}
        #phone{border: 1px solid #09b6f2;border-radius: 9rem;text-align: center;color:#09b6f2;height: 1.3rem;line-height: 1.3rem;}
        .weui-icon-cancel{position: absolute;right: 2rem;top: .8rem;font-size: .8rem;}
        .spinner .value{color:#999;}
        #xianjin .c-leftimg-rightall .weui-media-box__desc {width: 9rem;}
        #xianjin .c-leftimg-rightall .c-c-r{font-size: .8rem}
        #xianjin .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        #xianjin .page__hd{background: #fff;padding:.5rem 1rem;font-size:.7rem;}
        #xianjin .fa-check-circle,.fa-circle-o{position: absolute;right: 1.3rem;top: 2rem;font-size: 18px;color:#fc6973;}
        #xianjin .weui-media-box{padding: .6rem .6rem;padding-left:1rem;}
        .spinner{width:1.2rem;height:1rem;font-size: 1rem;line-height: 1rem;vertical-align: middle;background: #ddd;margin-right: 3px;text-align: center;color: #666}
        #spinner{font-size:14px; }
        #xianjin .price{position: absolute;left: 1.1rem;top: 1.2rem;font-size: 1rem;color: #fff;}
        #xianjin .price-big{font-size: 2.7rem;}
        #xianjin .coupon-detail{position: absolute;left: 7rem;top: 1.1rem;font-size: 1rem;color: #fff;line-height: .7rem;}
        #xianjin .coupon-detail p.coupon-detail-big{font-size: .7rem;margin-bottom:5px;}
        #xianjin .coupon-detail p{color: #fff;text-align: left;font-size: .6rem;}
        .c-detail{height: 9rem;overflow-y:auto; }
        .c-detail:before{border-top:0;}
        #totalPrice{font-size: .6rem;}
    </style>
</head>
<body>
    <div class="container" style="background: #fff;">
       
        <div class="titleBar" id="xianjin-title">
            <div class="titleBar-back" onclick="goHome();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">我的优惠券</div>
            <!-- <div class="titleBar-close">关闭</div> -->
        </div>



        <!-- 现金券 -->
        <div class="c-content" id="xianjin">
            <div  id="wrapper">
                <div  style="-webkit-margin-before:0em;">
                    <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea">

                    </div>
                </div>
            </div>
        </div>

    </div>
   
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script type="text/javascript">
	$(function(){
		$.ajax({
			url:'${ctx}/creditcard/receiveInfos.json',
			data:'userId='+encodeURIComponent(localStorage.getItem("userId")),
			type:'post',
			success:function(resp){
				if(resp.list != undefined){
					var s = "";
					for(var i = 0; i< resp.list.length; i++){
						s += resp.list[i]+"<br/><br/>";
					}
					weui.alert(s);
				}
				if(resp.infos != undefined){
					for(var i = 0; i< resp.infos.length; i++){
						var oid = encodeURIComponent(resp.infos[i].id);
						var monery = resp.infos[i].prodName.replace(/[^0-9]/ig, "");
						var infos ='<div class="weui-media-box weui-media-box_appmsg c-m-b-10" onclick="showCodeInfos(\''+oid+'\');">'+
						   '<div class="weui-media-box__hd">'+
						   '<p class="price">￥<span class="price-big" style="font-size:45px;">'+monery+'</span></p>'+
						   '<img class="weui-media-box__thumb" src="${stax}/assets/images/cash-coupon2.jpg" alt="">'+
						   '<div class="coupon-detail">'+
						   '<p class="coupon-detail-big">'+resp.infos[i].prodName+'</p>'+
						   '<p>有效期至：'+resp.infos[i].expDate+'</p>'+
						   '<p>领取时间：'+resp.infos[i].createTime+'</p>'+
						   '</div></div></div>';
						$("#dataArea").append(infos);
					}
				}
			}
		});
	});
	
	function showCodeInfos(e){
		window.location.href = "${ctx}/creditcard/codeinfos.do?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&orderId="+e;
	}
	function goHome() {
		window.location.href = "${ctx}/jsp/creditcard/index.jsp";
	}
</script>
</body>
</html>