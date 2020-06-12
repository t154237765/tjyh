<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>商品详情</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .picTxtList .c-list-left-div{width: 100%;}
        .c-leftimg-rightall .weui-media-box__bd{margin-top:-10px;}
        .c-leftimg-rightall .weui-media-box__title{white-space:normal;}
        .weui-media-box{padding-left:20px;padding-right:30px;padding-bottom: 0}
        .c-leftimg-rightall .c-b-1{border:1px solid #eee;}
        .page__bd{font-size: 14px;}
        .weui-form-preview__hd:after{border: 0;}
        .c-prev-area{color:#666;font-size: 16px;text-align: left;}
        .weui-form-preview__bd{padding-top:0;padding-bottom: 20px;}
        button.weui-form-preview__btn,.weui-form-preview__btn_default{font-size: 16px;}
        #form .weui-cell{align-items:flex-start;}
        .weui-form-preview__btn_primary{color:#01abde;}
        .weui-cell_vcode:before,.weui-cell_vcode:after{border-top:1px solid #d9d9d9;}
        .weui-cell_vcode{line-height: 2.3}
        #c-add-adress .weui-cells{margin-top:0;}
        #c-set-area{font-size: 22px;float:right;}
        .c-direction:before{border: 0}
        .c-leftimg-rightall .c-esp-desc{width:7.5rem;}
        .weui-navbar__item p{color:#333;}
        .weui-cell:before{border-top:0;}
        .fa-check-circle-o {color:#ccc;}
        #c-add-adress .c-c-b{color:#09b6f2;}
        #c-change{font-size: 12px;text-align: left;padding-left: 15px;  vertical-align: middle;line-height: 1rem;height: 1rem;}
        #xianjin .c-leftimg-rightall .weui-media-box__desc {width: 9rem;}
        #xianjin .c-leftimg-rightall .c-c-r{font-size: .8rem}
        #xianjin .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        #xianjin .page__hd{background: #fff;padding:.5rem 1rem;font-size:.7rem;}
        #xianjin .fa-check-circle,.fa-circle-o{position: absolute;right: 1.3rem;top: 2rem;font-size: 18px;color:#fc6973;}
        #xianjin .weui-media-box{padding: .6rem .6rem;padding-left:1rem;}
        .spinner{width:1.2rem;height:1rem;font-size: 1rem;line-height: 1rem;vertical-align: middle;background: #ddd;margin-right: 3px;text-align: center;color: #666}
        #spinner{font-size:14px; }
        #xianjin .price{position: absolute;left: 1rem;top: .9rem;font-size: 1rem;color: #fc6973;}
        #xianjin .price-big{font-size: 1.3rem;}
        #xianjin .coupon-detail{position: absolute;left: 6rem;top: 1rem;font-size: 1rem;color: #fff;line-height: .7rem;}
        #xianjin .coupon-detail p.coupon-detail-big{font-size: .7rem;margin-bottom:5px;}
        #xianjin .coupon-detail p{color: #fff;text-align: left;font-size: .6rem;}
        .c-tags .weui-badge{margin-right: .8rem;min-width: 2rem;}
        #payMoney, #daizhif {font-size: .6rem;}
        .c-leftimg-rightall .weui-media-box__desc{width:auto;}
        .weui-form-preview__btn_primary .fa-check-circle-o{color: #01abde;}
        
        .c-tags .weui-badge{margin-right: .8rem;min-width: 2rem;}
        .weui-form-preview {margin-bottom: 5px;}
        .c-tow-line .c-tow-line-r{position: initial;}

        #outer{padding-top:44px;padding-bottom:47px;overflow:auto;box-sizing: border-box;overflow:auto;position: relative;}
#twoTab .weui-navbar{z-index: 992;position: fixed;bottom: 0;left: 0;width: 100%;height: 46px;}
#twoTab .weui-navbar-down{border-top:0;}
        .c-panel-image2{font-size: .6rem;margin-top: 9px;border-top:1px solid #dedede;padding-top:7px;color:#666;}
        @media screen and (min-height: 481px){
            .bottom-close,.c-bottom-area{top: 14rem;}
        }
        .weui-navbar-down .red{background: #0066b3;}
        .timealert{position:absolute;top:-30px;left:0;text-align:center;width: 100%;border-top: 1px solid #ddd;padding: 5px 0;font-size: 12px;background:#fff;}
    	.picTxtList .c-goods-details{padding-left:0;padding-right:0;}
    	
    	.bottom-close{width:21px;height: 21px;background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;position:absolute;top: 10.2rem;right: 5px;background-size:contain;}
		.bottom-close{background: none;width:30px;height:30px;top:0rem;right:0;}
		.bottom-close-img{background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;width:21px;height:21px;background-size: contain;margin:5px;}
    	
    	.c-leftimg-rightall h3{display:flex;align-items:center;}
		.c-leftimg-rightall h3 img{width:0.65rem;}
		.weui-form-preview__btn{display:flex;align-items:center;justify-content:center;}
	  .weui-form-preview__btn img{width:0.8rem;}
	  .Img{width:0.8rem;height:0.8rem;background:url(${stax}/assets/images/icon-04.png) no-repeat; background-size:contain;}
	  .imgOn{width:0.8rem;height:0.8rem;background:url(${stax}/assets/images/icon-03.png) no-repeat; background-size:contain;}
    </style>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar" id="dingdan-title">
            <div class="titleBar-back" onclick="window.history.back()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">${limitSale.name}</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content" style="padding-bottom: 80px" id="lieb">
           <div class="weui-panel__bd picTxtList c-m-b-5">
                <div class="weui-media-box weui-media-box_text">
                    <p class="c-panel-image">
                        <img src="${limitSale.picUrl}" alt="" class="hsrc">
                        <!-- <img src="../assets/images/goods-aiqiyi-1.jpg" alt="" class="hsrc"> -->
                    </p>
                    <div class="weui-flex c-goods-details">
                        <div class="c-list-left-div">
                            <h4 class="weui-media-box__title" style="font-size: .8rem;margin-bottom:4px;margin-left:.5rem;">${limitSale.name}</h4>
                            <p class="weui-media-box__desc"><span class="c-c-r" style="font-size: .8rem;display: inline-block;margin-left:.5rem;">¥${limitSale.price}</span>
                            	<span style="text-decoration: line-through;">原价 ${limitSale.oldPrice}</span><br/>
                            	<span style="color: #333;margin-left:5px;margin-top: .2rem;display: inline-block;margin-left:.5rem;">已售：${limitSale.stockNum}份</span></p>
                            <p class="c-panel-image2">
                            	<span style="font-size: .7rem;color:#333;display: inline-block;margin-left:.5rem;">活动规则:</span><i class="fa fa-angle-right" style="float: right;display: inline-block;margin-right: 10px;
    margin-top: .2rem;" aria-hidden="true"></i><br/>
                            </p>
                            
                            <!-- <p>&nbsp;</p> -->

                            <p class="c-panel-image2" style="padding:.5rem">
                                <span style="font-size: .7rem;color:#333;display: inline-block;">商品说明:</span><br/>
                                <!-- <img src="../assets/images/goods-aiqiyi-1.jpg" alt="" class="hsrc"> -->
                                ${limitSale.descr}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page__bd" id="twoTab">
            <div class="weui-tab">
                <div class="weui-navbar weui-navbar-down weui-navbar-right">
                	
            	<div class="timealert"><span>请于3分钟内完成支付，超时将自动取消订单</span></div>
                    <div class="weui-navbar__item weui-bar__item_on" style="background: #eee;text-align:left;padding-left:10px;">
                       <span class="c-f-s-14" id="daizhif" style="font-size:.7rem;color:#333;">实际支付：</span>
                		<span class="c-c-r c-f-s-14 c-m-r-5" style="color:red" id="payMoney"></span>
                    </div>
                    <div class="red c-f-s-18 weui-navbar-div" id="showbtn">
						立即抢购
                    </div>
                </div>
            </div>
        </div>

        <!--底部弹出层-->
        <div class="c-black-mask" style="display: none;"></div>
        <div class="c-bottom-area" style="display: none;">
            <div class="weui-panel__bd c-leftimg-rightall">
                <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb hsrc" src="${limitSale.picUrl}" alt="">
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">${limitSale.name}</h4>
                        <p class="weui-media-box__desc">
                        	<span class="c-c-r c-m-r-5 c-f-s-18" style="font-size: .7rem;"> ¥ <span id="prodPrice">${limitSale.price}</span></span>
                        	<span style="display: block;">原价 <span id="oldPrice">${limitSale.oldPrice}</span></span>
                        </p>
                    </div>
                </div>

            </div>
			
            <div class="c-t-a-c">
                <div class="c-line c-b-b-1"></div>
            </div>
            <div class="weui-panel__bd c-tow-line">
                
            	<div style="display: none;" id="addressId"></div>
                <div class="weui-media-box weui-media-box_text" id="addrDiv">
                    <h4 class="weui-media-box__title c-f-s-15" id="c-shouhuoren">收货人：<span id="recName"></span></h4>
                    <h4 class="weui-media-box__title c-tow-line-r c-f-s-15" id="c-dinahua"><span id="phone"></span></h4>
                    
                    <a class="weui-cell weui-cell_access c-p-0" href="javascript:;">
                        <div class="weui-cell__hd"><img src="${stax}/assets/images/6icon3.jpg" style="width:0.6rem;"/></div>
                        <div class="weui-cell__bd weui-cell_primary">
                            <p class="c-f-s-15" id="c-hadadress">收货地址：<span id="address"></span></p>
                            <p class="c-f-s-15" id="c-noadress" style="display: none">请选择收货地址</p>
                        </div>
                    </a>
                </div>
                <a href="" style="font-size:0.8rem;"><i class="fa fa-angle-right fa-angle-right-position" aria-hidden="true">></i></a>
            </div>
            <div class="bottom-close">
            	<div class="bottom-close-img"></div>
            </div>
            
            <div class="weui-navbar weui-navbar-down weui-navbar-right c-b-t-1">
                <div class="weui-navbar__item weui-bar__item_on" id="c-change">
                    <span class="c-c-r c-f-s-14 c-f-r c-m-r-5" id="payMoney">${limitSale.price}</span>
                    <span class="c-f-s-14 c-f-r">待支付¥</span>
                </div>
                <div class="red c-f-s-18 weui-navbar-div" id="buyBtn">
                    	去支付
                </div>
            </div>
        </div>

		<!--收货地址页面-->
        <div id="c-adresses" style="display: none;position: fixed;">
            <div id="outer">
                <!-- <div id="c-adresses-wrapper"> -->
                    <div class="titleBar">
                        <div class="titleBar-back" id="c-adresses-back">
                            <img src="${stax}/assets/images/history.png" />&nbsp;返回
                        </div>
                        <div class="titleBar-text am-text-truncate">收货地址</div>
    <!--                     <div class="titleBar-close">关闭</div> -->
                    </div>
                    <!-- <div class="c-top-block"></div> -->
                    <div class="page__bd" id="addressdiv">
                        
                    </div>
                <!-- </div> -->
                    <div class="weui-navbar weui-navbar-down">
                        <div class="weui-navbar__item weui-bar__item_on blue" id="c-add-address-btn">
                                添加收货地址
                        </div>
                    </div>
            </div>
            
        </div>
      
        <!--添加收货地址页面-->
        <div id="c-add-adress" style="display: none;">
            <div id="form">
                <div class="titleBar">
                    <div class="titleBar-back" id="c-add-adress-back">
                        <img src="${stax}/assets/images/history.png" />&nbsp;返回
                    </div>
                    <div class="titleBar-text am-text-truncate">收货地址</div>
                </div>
                <div class="c-top-block"></div>
                <div class="page__bd">
                    
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">收货人：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" required="" type="text" id="addName"
                                	maxlength="6" pattern="^[\u4e00-\u9fa5]{0,}$"  placeholder="请输入收货人姓名" notmatchtips="请输入正确的收货人姓名">
                            </div>
                            <div class="weui-cell__ft"> <i class="weui-icon-warn"></i> </div>
                        </div>
                        <input type="hidden" id="id" value="">
                        <div class="weui-cell weui-cell_vcode" style="line-height:initial">
                            <div class="weui-cell__hd">
                                <label class="weui-label">手机号：</label>
                            </div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="tel" required="" placeholder="请输入手机号" id="addPhone"
                                	pattern="^\d{11}$" maxlength="11"  emptytips="请输入手机号" notmatchtips="请输入正确的手机号" oninput='checkLength(this,11);'>
                            </div>
                            <div class="weui-cell__ft"> <i class="weui-icon-warn"></i> </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd">
                                <label class="weui-label">详细地址：</label>
                            </div>
                            <div class="weui-cell__bd">
                                <textarea id="textarea" class="weui-textarea" placeholder="请输入详细地址 如：××省××市××区××街道××号××单元" rows="3" maxlength="200" required="" pattern="REG_EREA"></textarea>
                                <div class="weui-textarea-counter"><span id="textcount">0</span>/50</div>
                            </div>
                        </div>
                    
                    </div>

                </div>

                <div class="weui-cells weui-cells_form" style="margin-top:.5rem;" id ="moren">
                    <div class="weui-cell" onclick="$(this).find('i').toggleClass('c-c-b fa-circle-thin  fa-check-circle-o')">
                        <div class="weui-cell__hd"><label class="weui-label">设置默认地址</label></div>
                        <div class="weui-cell__bd">
                            <i class="fa fa-circle-thin c-m-r-5 c-f-s-18" id="c-set-area" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="weui-navbar weui-navbar-down" id="formSubmitBtn">
                <div class="weui-navbar__item weui-bar__item_on blue">
					保存
                </div>
            </div>
        </div>
        
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=13"></script>

<script>
	//weui.alert("商品已被抢光啦，明天10点继续！");
	//weui.alert("每天10点准时开始哦！");
	var picList = ${picList};
	var addressList = ${addressList};
	var ptyp = '${limitSale.ptype}';
	
	var userId = encodeURIComponent(localStorage.getItem("userId"));
	var bankId = encodeURIComponent(localStorage.getItem("bankId"));
	
    var winHeight;
    if (window.innerHeight)
    winHeight = window.innerHeight;
    else if ((document.body) && (document.body.clientHeight))
    winHeight = document.body.clientHeight;

    document.getElementById("outer").style.height = winHeight+'px';

    $(document).ready(function() {
        //$("#addressdiv").css("height",shc);
		/*替换click*/
		FastClick.attach(document.body); 
		/*付款弹出层*/
	    $('.c-bottom-area').on('click', '.bottom-close', function(){
	    	$("html").removeClass("noscroll");
	        $(this).parents('.c-bottom-area').fadeOut(200);
	        $('.c-black-mask').fadeOut(200);
            $("#twoTab").show();
	    });
// 	    $('.weui-navbar-down .red').on('click', function(){
	    $('#showbtn').on('click', function(){
	    	if(ptyp && ptyp == "1"){
		    	$("html").addClass("noscroll");
		        $('.c-bottom-area').fadeIn(200);
		        $('.c-black-mask').fadeIn(200);
	    	}else{
	    		toBuy();
	    	}
	    });
	    //支付
	    $('#buyBtn').on('click', function(){
    		toBuy();
	    });
	    
	    /*收货地址层*/
        //$("#c-adresses-wrapper, #form").height(window.outerHeight-50);
        $("#c-adresses-back").on("touchstart",function(){
            $("#twoTab").show();
            $("#c-adresses").fadeOut(200);
        });
        $("#c-add-adress-back").on("touchstart",function(){
            $("#c-add-adress").fadeOut(200);
            $('#addName').val('');
            $('#addPhone').val('');
            $('#textarea').val('');
            $('#id').val('');
            $("#moren").css("display","block");
            //$("#c-set-area").addClass('fa-circle-thin').removeClass("c-c-b fa-check-circle-o");
            $("#c-adresses").fadeIn(200);
        });
        /*$("#c-choose-section").on("touchstart",function(){
            $("#c-adresses").fadeIn(200);
        });*/
        $("#addrDiv").on("click",function(){
            $("#c-adresses").fadeIn(200);
            $("#twoTab").hide();
        });
        $("#c-add-address-btn").on("touchstart",function(){
        	if(addressList && addressList.length >= 15){
        		weui.alert('每人最多设置15个收货地址');
        		return;
        	}
            $("#c-add-adress").fadeIn(200);
        });
        
        /*表单验证*/
        var regexp = {
            regexp: {
                EREA: /[^~]/
            }
        };
 
        weui.form.checkIfBlur('#form',regexp);

        //新增地址
        document.querySelector('#formSubmitBtn').addEventListener('touchstart', function () {
            weui.form.validate('#form', function (error) {
                console.log(error);
                if (!error) {
                	if(!checkPhone($('#addPhone').val()))return;
                	addAddress();
                }
            },regexp);
        });

        /*字数统计*/
        var ctimer = null;
        $("#textarea").on("focus",function(){
            ctimer = setInterval(function(){
                $("#textcount").html($("#textarea").val().length);
            },30);
        });
        $("#textarea").on("blur",function(){
            clearInterval(ctimer);
        });
        
        //初始化页面信息
	    if(addressList && addressList.length>0){
	    	fillAddress(addressList, "1");
	    }
	    if(picList && picList.length>0){
	    	$('.hsrc').attr('src', picList[0].picUrl);
	    }
	    
	});
	
	function fillAddress(data, isfill){
        $('#addressdiv').html('');

        //没有默认地址，请选择收货地址
        $("#c-noadress").show();
        $("#c-hadadress").hide();
        $('#c-shouhuoren').hide();
        $('#c-dinahua').hide();
        $("#c-adress-arrow").css({"margin-top":"-23px","color":"#ccc"});

        for(var i=0; i<data.length; i++){
            var dcss = 'weui-form-preview__btn c-c-9';
			var dcss2 = "Img";
            if(data[i].isDefault == "1"){
                dcss = 'weui-form-preview__btn c-c-9 weui-form-preview__btn_primary';
                dcss2 = "Img imgOn";
                $("#c-hadadress").show();
                $("#c-noadress").hide();
                $('#c-shouhuoren').show();
                $('#c-dinahua').show();
                $("#c-adress-arrow").css({"margin-top":"-26px","color":"#666"});
                //填写收货地址
				if(isfill){
	                $('#addressId').html(data[i].id);
	                $('#recName').html(data[i].recName).show();
	                $('#phone').html(data[i].phone).show();
	                $('#address').html(data[i].address);
				}
            }
            var adiv = '<div class="weui-form-preview" data="'+i+'">'+
                            '<div class="weui-form-preview__hd">'+
                                '<label class="weui-form-preview__label"><em class="c-f-s-18 c-c-3">'+data[i].recName+'</em></label>'+
                                '<em class="c-f-s-18">'+data[i].phone+'</em>'+
                            '</div>'+
                            '<div class="weui-form-preview__bd">'+
                                '<div class="weui-form-preview__item c-prev-area">'+data[i].address+'</div>'+
                            '</div>'+
                            '<div class="weui-form-preview__ft">'+
                                '<button type="submit" class="'+dcss+'" onclick="setDef(this)" data="'+i+'">'+
                                    '<div class="'+dcss2+'"></div>&nbsp;默认地址</button>'+
                                    
                                    '<a class="weui-form-preview__btn weui-form-preview__btn_default" href="javascript:" onclick="updateAddre(this)"  data="'+i+'"><img src="${stax}/assets/images/icon-01.png">&nbsp;编辑</a>'+
                                    
                                '<a class="weui-form-preview__btn weui-form-preview__btn_default" href="javascript:" onclick="delAddre(this)" data="'+i+'">'+
                                    '<img src="${stax}/assets/images/icon-02.png">&nbsp;删除</a>'+
                            '</div>'+
                        '</div>';
            $('#addressdiv').append(adiv);
        }
		//定义选中事件
		$(document).on("click",'#addressdiv .weui-form-preview__hd, #addressdiv .weui-form-preview__bd',function(){
			//填写收货地址
			var flag = false;
			var ind = $(this).parent().attr('data');
			$("#c-adresses").fadeOut(300);
            $("#twoTab").show();
			var Timer = setTimeout(function(){
				$("#c-hadadress").show();
                $("#c-noadress").hide();
                $('#c-shouhuoren').show();
                $('#c-dinahua').show();
                $('#addressId').html(addressList[parseInt(ind)].id);
                $('#recName').html(addressList[parseInt(ind)].recName).show();;
                $('#phone').html(addressList[parseInt(ind)].phone).show();;
                $('#address').html(addressList[parseInt(ind)].address);
                $("#c-adress-arrow").css({"margin-top":"-26px","color":"#666"});
                flag = true;
			},700)
			if(flag)clearTimeout(Timer);
        });
        $('.weui-form-preview__btn_primary i').removeClass('fa-circle-thin').addClass("fa-check-circle-o");
	}
	
	//购买事件
	function toBuy(){
		var loading = weui.loading('正在加载...');	//loading
		
		var addrId = $('#addressId').html();
		if(ptyp && ptyp == "1"){
			if(!addrId || addrId.length <= 0){
				loading.hide();
				weui.alert('请添加收货地址');
				return;
			}
		}
		$.ajax({
			type: "POST",
			url: "${ctx}/limitsale/buy.json",
			data: "userId="+userId+"&busId="+encodeURIComponent("${limitSale.id}")+"&bankId="+bankId+"&addrId="+addrId+"&r="+Math.random(),
			timeout : 13000, //超时时间设置，单位毫秒
			success: function(resp){
				loading.hide();
				if(resp.errMsg && resp.errMsg != ""){
					loading.hide();
					weui.alert(resp.errMsg);
				}else if(resp.orderInfo){
					oos = resp.orderInfo;
					MBC_PAY();
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
	}
	
	/***建行付款**/
	function MBC_PAY(){		
		if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
			//苹果端
			window.location="/mbcpay.b2c";
		} else if (/(Android)/i.test(navigator.userAgent)) {
		    //安卓端
			window.mbcpay.b2c(oos);
		} else {
		   //pc端
		   alert('请到app上购买！');
		};
	}
	var oos = "";
	function MBC_PAYINFO(){
		  return "{" + oos + "}";
	}
	
	/*设置为默认地址*/
	function setDef(obj){
		var loading = weui.loading('正在加载...');	//loading
		var ind = $(obj).attr('data');
		if(addressList && addressList.length > parseInt(ind)){
			var oid = "";
			var oind = -1;
			for(var i=0; i<addressList.length; i++){
				if(addressList[i].isDefault == "1"){
					oid = addressList[i].id;
					oind = i;
					break;
				}
			}
			if(addressList[parseInt(ind)].isDefault != '1'){
				$.ajax({
					type: "POST",
					url: "${ctx}/useraddress/setDef.json",
					data: "nid="+addressList[parseInt(ind)].id+"&oid="+oid+"&r="+Math.random(),
					success: function(resp){
						loading.hide();
						console.log(resp);
						if(resp.status){
							weui.toast('设置成功', {
					            duration: 1000,
					            className: 'toast-warn',
					            callback: function(){
					                //document.querySelector("#phone").value = "";
					            }
					        });
							//设置全局变量值
							addressList[parseInt(ind)].isDefault = "1";
							if(oind > -1)
								addressList[parseInt(oind)].isDefault = "0";
							
							//设置css
                            $('.weui-form-preview__btn_primary i').removeClass("fa-check-circle-o").addClass("fa-circle-thin");
                            $('.weui-form-preview__btn_primary').removeClass('weui-form-preview__btn_primary');
                            $(obj).addClass('weui-form-preview__btn_primary');
                            $('.imgOn').removeClass('imgOn');
                            $(obj).find("div").addClass("imgOn")
                            $('.weui-form-preview__btn_primary i').removeClass('fa-circle-thin').addClass("fa-check-circle-o");
						}
					},
					error:function(er){
						loading.hide();
						console.log(er);
					}
		    	});
			}else{
				loading.hide();
				console.log('already default');
			}
		}else{
			loading.hide();
			console.log('no addressList');
		}
	}
	
	/*删除地址*/
	function delAddre(obj){
		//默认地址不能删除
		var ind = $(obj).parent().find('button').attr('data');
		if(addressList[parseInt(ind)].isDefault == '1'){
			weui.alert('不能删除默认地址!');
			return;
		}
		
		weui.confirm('确定删除？', function(){
			var loading = weui.loading('正在加载...');	//loading
			var ind = $(obj).attr('data');
			if(addressList && addressList.length > parseInt(ind)){
				var aid = addressList[parseInt(ind)].id;
				$.ajax({
					type: "POST",
					url: "${ctx}/useraddress/delAddr.json",
					data: "aid="+aid+"&uid="+userId+"&r="+Math.random(),
					success: function(resp){
						loading.hide();
						console.log(resp);
						if(resp.status){
							weui.toast('操作成功', {
					            duration: 1000,
					            className: 'toast-warn',
					            callback: function(){
					                //document.querySelector("#phone").value = "";
					            }
					        });
							//如果删除当前选中的地址则清空
							if(aid == $('#addressId').html()){
								$('#addressId').html('');
								$('#recName').html('');
								$('#phone').html('');
								$('#address').html('');
							}
							//设置全局变量值
							addressList = resp.addressList;
							fillAddress(resp.addressList, null);
						}
					},
					error:function(er){
						loading.hide();
						console.log(er);
					}
		    	});
			}else{
				loading.hide();
			}
		}, function(){ console.log('no'); });
	}
	
	
	/* 编辑收货地址 */
	function updateAddre(obj){
		//var loading = weui.loading('正在加载...');	//loading
		var ind = $(obj).attr('data');
		$("#addName").val(addressList[parseInt(ind)].recName);
		$("#addPhone").val(addressList[parseInt(ind)].phone);
		$("#textarea").val(addressList[parseInt(ind)].address);	
		$("#id").val(addressList[parseInt(ind)].id);
		/* if(addressList[parseInt(ind)].isDefault == "1"){
			$("#c-set-area").removeClass('fa-circle-thin').addClass("c-c-b fa-check-circle-o");
		}else{
			$("#c-set-area").addClass('fa-circle-thin').removeClass("c-c-b fa-check-circle-o");
		}	 */ 
		$("#moren").css("display","none");
		$("#c-add-adress").fadeIn(200);

	}
	
	
	
	/*添加地址*/
	function addAddress(){
		var loading = weui.loading('正在加载...');	//loading
		var isdef = "0";
		var oid = "";
		if($('#c-set-area').hasClass('c-c-b')){
			isdef = "1";
			if(addressList && addressList.length > 1){
				for(var i=0; i<addressList.length; i++){
					if(addressList[i].isDefault == "1"){
						oid = addressList[i].id;
						break;
					}
				}
			}
		}else{
			if(!addressList || addressList.length <= 0){
				isdef = "1";	//第一个默认为默认地址
			}
		}
		
		$.ajax({
			type: "POST",
			url: "${ctx}/useraddress/addAddr.json",
			data: "uid="+userId+"&recName="+$('#addName').val()+"&phone="+$('#addPhone').val()+"&address="+$('#textarea').val()
						+"&isDefault="+isdef+"&id="+$('#id').val()+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				console.log(resp);
				if(resp.status){
					weui.toast('操作成功', {
			            duration: 1000,
			            className: 'toast-warn',
			            callback: function(){
			                //document.querySelector("#phone").value = "";
			            }
			        });
					//设置全局变量值
					addressList = resp.addressList;
					fillAddress(resp.addressList, null);
					$("#c-add-adress").fadeOut(200);
		            $("#c-adresses").fadeIn(200);
		            //清空
		            $('#addName').val('');
		            $('#addPhone').val('');
		            $('#textarea').val('');
		            $('#id').val('');
		            $("#moren").css("display","block");
		            $('#c-set-area').removeClass('c-c-b');
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
	}
	
	//保留两位小数  
	//功能：将浮点数四舍五入，取小数点后2位 
	function toDecimal(x) {
		var f = parseFloat(x);
		if (isNaN(f)) {
			return 0.00;
		}
//			f = Math.round(x*100)/100;
		return f.toFixed(2);
	}

    /*限制手机号*/
    function checkLength(obj,n){
        var re = /\D/g
        if(re.test(obj.value)){
            obj.value = obj.value.replace(/\D/g,'')
        }
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }  
    
    
</script>
</body>
</html>
