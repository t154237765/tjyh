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
        .c-imagetag{top: .8rem;}
        .picTxtList .c-list-left-div{width: 14rem;}
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
        #c-set-area{font-size: 22px;float:right;color: #aaa;}
        .c-direction:before{border: 0}
        .c-leftimg-rightall .c-esp-desc{width:7.5rem;}
        .weui-navbar__item p{color:#fff;}
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
        #payMoney{font-size:.7rem;}
        .c-leftimg-rightall .weui-media-box__desc{width:auto;}
        .weui-form-preview__btn_primary .fa-check-circle-o{color: #01abde;}
        .c-tags .weui-badge{margin-right: .8rem;min-width: 2rem;}
        .weui-form-preview {margin-bottom: 5px;}
        .c-tow-line .c-tow-line-r{position: initial;}

        #outer{padding-top:44px;padding-bottom:47px;overflow:auto;box-sizing: border-box;overflow:auto;position: relative;}
#twoTab .weui-navbar{z-index: 992;position: fixed;bottom: 0;left: 0;width: 100%;height: 46px;}
#twoTab .weui-navbar-down{border-top:0;}
.c-tags .weui-badge{margin-bottom:7px;}
.bottom-close{width:21px;height: 21px;background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;position:absolute;top: 10.2rem;right: 5px;background-size:contain;}
		.bottom-close{background: none;width:30px;height:30px;top:0rem;right:0;}
		.bottom-close-img{background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;width:21px;height:21px;background-size: contain;margin:5px;}
</style>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar" id="dingdan-title">
            <div class="titleBar-back" onclick="window.history.back()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">${prod.prodName}</div>
        </div>
        
        <div class="titleBar" id="xianjin-title" style="display: none;">
            <div class="titleBar-back">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">现金券</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" style="padding-bottom: 50px" id="lieb">
           <div class="weui-panel__bd picTxtList c-m-b-5">
                <div class="weui-media-box weui-media-box_text">
                    <div class="c-imagetag">
                        <span>${prod.peopleNum}人成团</span>
                    </div>
                    <p class="c-panel-image">
                        <img src="${prod.picUrl}" alt="">
                    </p>
                    <div class="weui-flex c-goods-details">
                        <div class="c-list-left-div">
                            <h4 class="weui-media-box__title">${prod.prodName}</h4>
                            <p class="weui-media-box__desc"><span class="c-c-r c-f-s-18">￥ ${prod.prodPrice}</span>原价 ${prod.oldPrice}</p>
                            <ul class="weui-media-box__info">
                                <li class="weui-media-box__info__meta">已团${prod.saled}件</li>
                            	<li class="weui-media-box__info__meta">剩余${prod.remain}件</li>
                            </ul>
                            <div class="c-panel-image">${prod.descr}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page__bd" id="twoTab">
            <div class="weui-tab">
                <div class="weui-navbar weui-navbar-down weui-navbar-right">
                    <div class="weui-navbar__item weui-bar__item_on" style="background: #fff;">
                        <p class="c-c-3" style="color:#333">仅剩<span class="c-c-o">${tuan.lackNum}</span>个名额</p>
                        <span class="countdown c-c-o">00:00:00</span> 后结束
                    </div>
                    <div class="red c-f-s-18 weui-navbar-div">
						一键参团
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
                        <img class="weui-media-box__thumb" src="${prod.picUrl}" alt="">
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">${prod.prodName}</h4>
                        <p class="weui-media-box__desc">
                        	<span class="c-c-r c-m-r-5 c-f-s-18" style="font-size: .7rem;">开团价: ￥ <span id="prodPrice">${prod.prodPrice}</span></span>
                        	<span style="display: block;">原价 <span id="oldPrice">${prod.oldPrice}</span></span>
                        </p>
                    </div>
                </div>

            </div>

			<div id="attrdiv" class="c-p-b-10">
			
			</div>
			
            <div class="c-t-a-c">
                <div class="c-line c-b-b-1"></div>
            </div>
            <div class="weui-panel__bd c-tow-line">
<!--             	<div class="weui-cell weui-cell_access" style="padding: 10px 1rem;" id="useQuan"> -->
<!--                     <div class="weui-cell__bd"> -->
<!--                         <span style="vertical-align: middle;font-size: .8rem;">现金券</span> -->
<!--                     </div> -->
<!--                     <div class="weui-badge"><span id="disNum">0个可用</span></div> -->
<!--                     <div class="weui-cell__ft"></div> -->
<!--                 </div> -->
                
            	<div style="display: none;" id="addressId"></div>
                <div class="weui-media-box weui-media-box_text" id="addrDiv">
                    <h4 class="weui-media-box__title c-f-s-15" id="c-shouhuoren">收货人：<span id="recName"></span></h4>
                    <h4 class="weui-media-box__title c-tow-line-r c-f-s-15" id="c-dinahua"><span id="phone"></span></h4>
                    
                    <a class="weui-cell weui-cell_access c-p-0" href="javascript:;">
                        <div class="weui-cell__hd"><i class="fa fa-map-marker c-f-s-18" aria-hidden="true"></i></div>
                        <div class="weui-cell__bd weui-cell_primary">
                            <p class="c-f-s-15" id="c-hadadress">收货地址：<span id="address"></span></p>
                            <p class="c-f-s-15" id="c-noadress" style="display: none">请选择收货地址</p>
                        </div>
                    </a>
                </div>
                <a class="c-shit" href=""><i class="fa fa-angle-right fa-angle-right-position" id="c-adress-arrow" aria-hidden="true"></i></a>
            </div>
            <div class="bottom-close">
            	<div class="bottom-close-img"></div>
            </div>
            
            <div class="weui-navbar weui-navbar-down weui-navbar-right c-b-t-1">
                <div class="weui-navbar__item weui-bar__item_on" id="c-change">
<!--                     	已优惠￥<span id="dismoney">0.00</span> -->
                    <span class="c-f-s-14" id="daizhif">待支付￥</span>
                    <span class="c-c-r c-f-s-14 c-m-r-5" id="payMoney">0.00</span>
                </div>
                <input style="display: none;" id="prodNum" value='0'></input>
				<input style="display: none;" id="detailId" value='0'></input>
                <div class="red c-f-s-18 weui-navbar-div" onclick="toBuy()" id="buyBtn">
                    	提交订单
                </div>
            </div>
<!--             <div class="page__bd"> -->
<!--                 <div class="weui-tab"> -->
<!--                     <div class="weui-navbar weui-navbar-down weui-navbar-right"> -->
<!--                         <div class="weui-navbar__item weui-bar__item_on"> -->
<%-- 							实付款：<span class="c-c-r"><span id="payMoney">${prod.prodPrice}</span></span> --%>
<!--                         </div> -->
<!-- 						<input style="display: none;" id="prodNum" value='0'></input> -->
<!-- 						<input style="display: none;" id="detailId" value='0'></input> -->
<!--                         <div class="red c-f-s-18 weui-navbar-div" onclick="toBuy()" id="buyBtn"> -->
<!-- 							立即购买 -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
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
        
        
        <!-- 现金券 -->
        <div class="c-content" id="xianjin" style="display: none;">
			<div id="wrapper">
				<div style="-webkit-margin-before: 0em;">
<!-- 					<div class="page__hd"> -->
<!-- 						<div> -->
<!-- 							有<span class="c-c-r" id="disNum2">0</span>个现金券可用 -->
<!-- 						</div> -->
<!-- 					</div> -->
					<div class="weui-panel__bd c-leftimg-rightall" id="dataArea">


					</div>
				</div>
			</div>
		</div>
		
		
		
        
        

    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=13"></script>

<script>
	
	var detailList = null;
	var addressList = null;
// 	var discountList = null;
	var disId = '';
	var rmoney = '${prod.prodPrice}';
	var prodType = '${prod.prodType}';
	
	var userId = localStorage.getItem("tjuserId");
	var bankId = localStorage.getItem("tjbankId");

	var winHeight;
    if (window.innerHeight)
    winHeight = window.innerHeight;
    else if ((document.body) && (document.body.clientHeight))
    winHeight = document.body.clientHeight;

    document.getElementById("outer").style.height = winHeight+'px';
    //$("#addressdiv").css("height",shc);
    //if (!/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
        //$("#addressdiv").css("height",shc);
    //}
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
	    $('.weui-navbar-down .red').on('click', function(){
	    	if('2' == prodType){
	    		//toBuy();
	    		$("html").addClass("noscroll");
		        $('.c-bottom-area').fadeIn(200);
		        $('.c-black-mask').fadeIn(200);
		        $("#addrDiv,.c-t-a-c,.c-shit").hide();
	    	}else{
		    	$("html").addClass("noscroll");
		        $('.c-bottom-area').fadeIn(200);
		        $('.c-black-mask').fadeIn(200);
	    	}
	    });
	    
	    /*收货地址层*/
        //$("#c-adresses-wrapper, #form").height(window.outerHeight-50);
        //$("#addressdiv").height(window.outerHeight-94);
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
        
        /*现金券*/
        $("#useQuan, #xianjin-title").on("click",function(){
            $("#dingdan,#dingdan-title,#xianjin,#xianjin-title,.weui-navbar-down,.c-bottom-area,.c-black-mask,#lieb").toggle();
        });

        //初始化页面信息
	    setCountDown();
	    
	    getProdDetail();
	    
	});
	
	
	var time1;
	function setCountDown(){
	
	    // 倒计时
	    var oCd=document.querySelectorAll('.countdown');
	    
	    //未来时间
	    var oDate = new Date();
	    var ctime = '${tuan.closeTime}';
	    var dt = ctime.split(' ');
	    if(dt.length > 0){
	    	var date = dt[0].split('-');
	    	if(date && date.length == 3)
	        	oDate.setFullYear(date[0],parseInt(date[1]) - 1,date[2]);
	    }
	    if(dt.length > 1){
	    	var time = dt[1].split(':');
	    	if(time && time.length == 3)
	        	oDate.setHours(time[0],time[1],time[2]);
	    }
	
	    function checkTime(i){ //将0-9的数字前面加上0，例1变为01 
	     if(i<10) {i = "0" + i;} 
	     return i; 
	    } 
	
	    function checkDay(i){
	        if(!i){return '';}else{i = i + "天";}
	        return i;
	    }
	
	    function countDown(){
	        var now=new Date();
	    
	        var s=parseInt((oDate.getTime()-now.getTime())/1000);
	        if(s < 0) return;
	        
	        var d=parseInt(s/86400);
	
	        s%=86400;
	        
	        var h=parseInt(s/3600);
	        s%=3600;
	        
	        var m=parseInt(s/60);
	        s%=60;
	        
	        for(var i=0;i<oCd.length;i++){
	            oCd[i].innerHTML=checkDay(d)+checkTime(h)+':'+checkTime(m)+':'+checkTime(s);
	        }
	        
	    }
	    countDown();
	    time1 = window.setInterval(countDown,1000);
	}
	
	function getProdDetail(){
		
		if(!userId || userId < 0){
			weui.alert('missing data -userid-');
			return;
		}
		var loading = weui.loading('正在加载...');	//loading
		$.ajax({
			type: "GET",
			url: "${ctx}/pintuan/getBuyInfo.json",
			data: "pid=${prod.id}"+"&uid="+userId+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.detailList) detailList = resp.detailList;
				if(resp.addressList){
					addressList = resp.addressList;
					fillAddress(resp.addressList, 1);
				}
				if(resp.attrList) fillAttrs(resp.attrList);
// 				if(resp.discountList) fillDiscounts(resp.discountList);
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
	}
	
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

			if(data[i].isDefault == "1"){
				dcss = 'weui-form-preview__btn c-c-9 weui-form-preview__btn_primary';
				//填写收货地址
//              if(isfill){
//              }
                $("#c-hadadress").show();
                $("#c-noadress").hide();
                $('#c-shouhuoren').show();
                $('#c-dinahua').show();
                $('#addressId').html(data[i].id);
                $('#recName').html(data[i].recName).show();
                $('#phone').html(data[i].phone).show();
                $('#address').html(data[i].address);
                $("#c-adress-arrow").css({"margin-top":"-48px","color":"#666"});
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
                                    '<i class="fa fa-circle-thin c-m-r-5 c-f-s-16" aria-hidden="true"></i>默认地址</button>'+

                                '<a class="weui-form-preview__btn weui-form-preview__btn_default" href="javascript:" onclick="updateAddre(this)"  data="'+i+'"><i class="fa fa-edit c-f-s-16" aria-hidden="true"></i> 编辑</a>'+
                                
                                '<a class="weui-form-preview__btn weui-form-preview__btn_default" href="javascript:" onclick="delAddre(this)" data="'+i+'">'+
                                    '<i class="fa fa-trash-o c-f-s-16" aria-hidden="true"></i> 删除</a>'+
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
                $("#c-adress-arrow").css({"margin-top":"-48px","color":"#666"});
                flag = true;
			},700)
			if(flag)clearTimeout(Timer);
        });
        $('.weui-form-preview__btn_primary i').removeClass('fa-circle-thin').addClass("fa-check-circle-o");
	}
	
	function fillAttrs(data){
		$('#attrdiv').html('');
		if(data && data.length > 0){
			var curacode = "";
			var sdiv = '<div class="weui-panel__bd c-leftimg-rightall">'+
							'<div href="javascript:void(0);" class="weui-media-box" style="padding-top:7px">'+
				        		'<div class="weui-cell__bd c-tags">';	//添加开头部分
			var ediv = '</div></div></div>';	//添加结尾部分
			var adiv = "";
			for(var i=0; i<data.length; i++){
				if(curacode != data[i].attrCode){
					curacode = data[i].attrCode;
					if(curacode != ""){
						$('#attrdiv').append(adiv+ediv);	//添加属性标签
						adiv = "";
					}
					adiv += sdiv+'<span class="weui-badge c-badge-red" data="'+data[i].id+'" onclick="changeAction(this)">'+data[i].attrVal+'</span>';	//第一个默认标红
				}else{
					adiv += '<span class="weui-badge" data="'+data[i].id+'" onclick="changeAction(this)">'+data[i].attrVal+'</span>';
				}
			}
			$('#attrdiv').append(adiv+ediv);	//添加最后循环体
			//模拟点击事件
			$('.c-badge-red').eq(0).click();
		}else{
			countTotal();
		}
	}
	
// 	function fillDiscounts(data){
// 		$('#disNum').html(data.length+'个可用');
// 		if(data.length <= 0){
// 			$("#wrapper").html("<img src='${stax}/assets/images/null.png' style='margin:0 auto;height:4.5rem;margin-bottom:1.5rem;'><span style='font-size:.8rem;color:#999;'>您还没有现金券哦</span>").css({"paddingTop":"6rem"});
// 		    $("#wrapper").css({"background":"#f6f6f6","text-align":"center"});
// 			return;
// 		}
		
// 		discountList = data;
// 		$('#dataArea').html('');
// 		for(var i=0; i<discountList.length; i++){
// 			var tmoney = discountList[i].money ? parseInt(discountList[i].money) : '0';
// 			var dadiv = '<div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-m-b-10">'+
//                             '<div class="weui-media-box__hd" mdata="'+tmoney+'" data="'+discountList[i].id+'">'+
// 	                            '<p class="price">￥<span class="price-big">'+tmoney+'</span>.0</p>'+
// 	                            '<img class="weui-media-box__thumb" src="${stax}/assets/images/cash-coupon.jpg" alt="">'+
// 	                            '<i class="fa fa-circle-o" aria-hidden="true"></i>'+
// 	                            '<div class="coupon-detail">'+
// 	                                '<p class="coupon-detail-big">专门送给您的'+tmoney+'元现金券</p>'+
// 	                                '<p>1.无消费金额限制</p>'+
// 	                                '<p>2.仅限拼团与本地特惠使用</p>'+
// 	                                '<p>有效期：'+discountList[i].dueTime+'</p>'+
// 	                            '</div>'+
// 	                        '</div>'+
// 	                    '</div>';
// 			$('#dataArea').append(dadiv);
// 		}
// 		/***点选现金券事件**/
// 		$(".weui-media-box__hd").on("click", function() {
// 			if(!$(this).attr('mdata')) return;
// 			//校验金额：如付款金额小于现金券金额则不可用
// 			if(parseFloat(rmoney) <= parseFloat($(this).attr('mdata'))){
// 				weui.alert('不可超过商品金额！请重新选择');
// 				return;
// 			}
// 			var that = this;
// 			$(".weui-media-box__hd").each(function(){
// 				if(this != that){
// 					$(this).find("i").removeClass('fa-check-circle');
// 					if(!$(this).find("i").hasClass('fa-circle-o'))
// 						$(this).find("i").addClass('fa-circle-o');
// 				}
// 			});
// 			//打钩
// 			$(this).find("i").toggleClass("fa-circle-o").toggleClass("fa-check-circle");
// 			//显示金额
// 			if($(this).find("i").hasClass("fa-check-circle")){
// 				$('#dismoney').html(toDecimal($(this).attr('mdata')));
// 				disId = toDecimal($(this).attr('data'));
// 				//点选完自动关闭
// 				$("#dingdan,#dingdan-title,#xianjin,#xianjin-title,.weui-navbar-down,.c-bottom-area,.c-black-mask,#lieb").toggle();
// 				$('#disNum').html('- ￥'+toDecimal($(this).attr('mdata')));
// 			}else{
// 				$('#dismoney').html('0.00');
// 				disId = '';
				
// 				$('#disNum').html(discountList.length+'个可用');
// 			}
// 			countTotal();
// 		});
// 	}
	
	//点选属性事件
	function changeAction(obj){
		$(obj).parent().find('span').removeClass('c-badge-red');
		$(obj).addClass('c-badge-red');
		
		//重设金额等
		var ids= new Array();
		var $elements = $('#attrdiv .c-badge-red');
		$elements.each(function() {
		    var $this = $(this);
		    ids.push(parseInt($this.attr('data')));
		});
		ids.sort(function(a,b){return a-b;});	//排序 从小到大
		var aid = ids.join(',');
		console.log(aid);
		if(!detailList) return;
		var exists = false;
		for(var i=0; i<detailList.length; i++){
			if(detailList[i].aids == aid){
// 				$('#payMoney').html('￥ '+detailList[i].aprice);
				if(detailList[i].prodPrice) $('#prodPrice').html(detailList[i].prodPrice);
				if(detailList[i].oldPrice) $('#oldPrice').html(detailList[i].oldPrice);
				rmoney = detailList[i].aprice;
				countTotal();
				$('#prodNum').val(detailList[i].remain);
				$('#detailId').val(detailList[i].id);
				if(detailList[i].remain && detailList[i].remain > 0){
					$('#buyBtn').html('立即购买');
				}else{
					$('#buyBtn').html('售罄');
				}
				exists = true;
				break;
			}
		}
		//不存在
		if(!exists){
			$('#payMoney').html('--');
			rmoney = 0;
			$('#prodNum').val(0);
			$('#detailId').val('');
			$('#buyBtn').html('售罄');
		}
	}
	
	//购买事件
	function toBuy(){
		var loading = weui.loading('正在加载...');	//loading
		var prodNum = $('#prodNum').val();
		
		var addrId = $('#addressId').html();
		if(prodType != '2'){
			//实物商品需要收货地址
			if(!addrId || addrId.length <= 0){
				loading.hide();
				weui.alert('请添加收货地址');
				return;
			}
		}
		if(!isNaN(prodNum)){
			if(parseInt(prodNum) > 0){
				$.ajax({
					type: "POST",
					url: "${ctx}/pintuan/buy.json",
					data: "detailId="+$('#detailId').val()+"&pid=${prod.id}"+"&tuanId=${tuan.id}"+"&userId="+userId+"&userwphone="+localStorage.getItem("tjuserWPhone")+"&addrId="+addrId+"&bankId="+bankId
						+"&payMoney="+rmoney+"&discountId="+disId+"&disMoney="+$('#dismoney').html()+"&r="+Math.random(),
					success: function(resp){
						loading.hide();
						if(resp.errMsg)
							weui.alert(resp.errMsg);
						else if(resp.payUrl){
							oos = resp.payUrl;
 							MBC_PAY();
						}
					},
					error:function(er){
						loading.hide();
						console.log(er);
					}
		    	});
			}else{
				loading.hide();
				weui.alert('所选商品已经售罄，您可以调整商品属性或查看其它商品');
			}
		}else{
			loading.hide();
			weui.alert('数据有误 '+prodNum);
		}
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
                    $('#c-set-area').removeClass('c-c-b fa-check-circle-o').addClass("fa-circle-thin");
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
	}
	
	/***计算实付金额**/
	function countTotal(){
// 		var paym = toDecimal(rmoney) - toDecimal($('#dismoney').html());
		$('#payMoney').html(toDecimal(rmoney));
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
