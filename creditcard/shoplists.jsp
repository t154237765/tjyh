<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>门店列表</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/animate.min.css"/>
   <style type="text/css">
        .weui-panel__bd{background:none;}
        .weui-media-box{background: #fff;align-items: flex-start;}
        .c-leftimg-rightall .weui-media-box__desc {width: 100%;}
        .c-leftimg-rightall .c-c-r{font-size: .8rem}
        .c-change{position: absolute;left: 15px;bottom:.3rem;width:100%;}
        .c-leftimg-rightall .c-change  .c-f-r{width:5.8rem;}
        .weui-form-preview__bd{font-size: .6rem;color:#333;width:100%;}
        .weui-form-preview__label{color:#333;}
        .c-m-b-10{border-bottom: 1px solid #ddd;margin-bottom: 0;}
        .ppp{background: #fff;font-size: .7rem;padding-left:1rem;}
        #wrapper{position:absolute;height:100%;overflow:auto;}
        .active{transform:rotate(720deg);}
        .loading img{transition: All 1s;display:inline-block;vertical-align:middle;}
        .loading{display:none;text-align:center;}
    </style>
</head>
<body>
    <div class="container" style="background: #fff;">
        <div class="titleBar">
            <div class="titleBar-back" onclick="goHome();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">门店列表</div>
            <!-- <div class="titleBar-close">关闭</div> -->
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" id="wrapper">
            <div>
                <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea">
                    <p class="ppp" style="color:red;">本兑换券除部分门店外全国通用</p>
                    <p class="ppp">不可使用门店：</p>
                </div>
                <div class="loading">
                	<img src="${stax}/assets/i/loading.png" />加载中
                </div>
            </div>
        </div>
      
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script type="text/javascript">
	var prodId = "${prodId}";
	var orderId ="${orderId}";
	var start = 0;	
	var isDown = true;
	$(function(){
		$.ajax({
			url:'${ctx}/creditcard/showShopLists.json',
			data:'prodId='+encodeURIComponent(prodId)+'&start='+start+'&r='+Math.random(),
			type:'post',
			success:function(resp){
				 var shops = resp.shops;
				 var isShow = resp.isShow;
				 start = resp.nextIndex;
				 if(!isShow){
					 $(".ppp").css("display","none");
				 }
				 for(var i=0; i<shops.length;i++){
					var phone = shops[i].phone;
					if(phone && phone != null){
						phone = '<p class="weui-media-box__desc">电话：'+shops[i].phone+'</p>';
					}else{
						phone = '';
					}
					var shop = '<div class="weui-media-box weui-media-box_appmsg c-m-b-10">'+
							   '<div class="weui-media-box weui-media-box_text">'+
							   '<h4 class="weui-media-box__title">'+shops[i].name+'</h4>'+
							   '<p class="weui-media-box__desc">地址：'+shops[i].site+'</p>'+
							   phone +
							   '</div></div>';
					$("#dataArea").append(shop);
				}
			}
		});
	});
	
	function goHome(){
		if(orderId){
			window.location.href = "${ctx}/creditcard/codeinfos.do?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&orderId="+encodeURIComponent(orderId);
		}else{
			window.location.href = "${ctx}/creditcard/showcreaditcardprodinfo.do?pid="+encodeURIComponent(prodId)+"&shop=1";
		}
	}
	
	//向上滑动更新数据
	$(document).ready(function() {
		
		$("#wrapper").unbind("scroll").bind("scroll", function(e) {
			var sum = this.scrollHeight;
			if (sum <= $(this).scrollTop() + $(this).height()) {
				if(isDown){
					var loading = weui.loading('正在加载...'); //loading
					$.ajax({
						url:'${ctx}/creditcard/showShopLists.json',
						data:'prodId='+encodeURIComponent(prodId)+'&start='+start+'&r='+Math.random(),
						type:'post',
						success:function(resp){
							 loading.hide();
							 start = resp.nextIndex;
							 var shops = resp.shops;
							 if(shops.length <= 0){
								 isDown = false;
							 }
							 for(var i=0; i<shops.length;i++){
								var phone = shops[i].phone;
								if(phone && phone != null){
									phone = '<p class="weui-media-box__desc">电话：'+shops[i].phone+'</p>';
								}else{
									phone = '';
								}
								var shop = '<div class="weui-media-box weui-media-box_appmsg c-m-b-10">'+
										   '<div class="weui-media-box weui-media-box_text">'+
										   '<h4 class="weui-media-box__title">'+shops[i].name+'</h4>'+
										   '<p class="weui-media-box__desc">地址：'+shops[i].site+'</p>'+
										   phone +
										   '</div></div>';
								$("#dataArea").append(shop);
							}
						}
					});
				}
			}
		});
			
	});
    
</script>
</body>
</html>