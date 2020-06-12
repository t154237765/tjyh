<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <!-- 识别客户端 -->
    <!-- <script type="text/javascript">
        /CCBWebView-User-Agent/i.test(navigator.userAgent)?{}:(function(){
            alert('您必须使用手机建行客户端才能访问本页面');
            window.history.back();
        })()
    </script> -->
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
        #c-set-area{font-size: 22px;float:right;color: #aaa;display:inline-block;width:0.6rem;height:0.6rem;border-radius:0.6rem;border:2px solid ;}
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
        #payMoney,#daizhif{font-size: .6rem}
        #payMoney{font-size:.7rem;}
        .c-leftimg-rightall .weui-media-box__desc{width:auto;}
        .weui-form-preview__btn_primary .fa-check-circle-o{color: #01abde;}
        
        .c-tags .weui-badge{margin-right: .8rem;min-width: 2rem;}
        .weui-form-preview {margin-bottom: 5px;}
        .c-tow-line .c-tow-line-r{position: initial;}

        #outer{padding-top:44px;padding-bottom:47px;overflow:auto;box-sizing: border-box;overflow:auto;position: relative;}
#twoTab .weui-navbar{z-index: 991;position: fixed;bottom: 0;left: 0;width: 100%;height: 46px;}
#twoTab .weui-navbar-down{border-top:0;}
.c-tags .weui-badge{margin-bottom:7px;}
.c-panel-image-text{font-size: 12px;}
		.bottom-close{width:21px;height: 21px;background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;position:absolute;top: 10.2rem;right: 5px;background-size:contain;}
		.bottom-close{background: none;width:30px;height:30px;top:0rem;right:0;}
		.bottom-close-img{background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;width:21px;height:21px;background-size: contain;margin:5px;}
		.c-leftimg-rightall h3{display:flex;align-items:center;}
		.c-leftimg-rightall h3 img{width:0.65rem;}
		.weui-form-preview__btn{display:flex;align-items:center;justify-content:center;}
	  .weui-form-preview__btn img{width:0.8rem;}
	  .Img{width:0.8rem;height:0.8rem;background:url(${stax}/assets/images/icon-04.png) no-repeat; background-size:contain;}
	  .imgOn{width:0.8rem;height:0.8rem;background:url(${stax}/assets/images/icon-03.png) no-repeat; background-size:contain;}
	  .weui-navbar-down .red{background:#09b6f2;}
	  .c-bottom-area{top:19rem;}
	  .reg-frame , .tishi{width:78%;height:8rem;background:#fff;position:fixed;top:10rem;right:0;left:0;margin:auto;z-index:994;display:none;}
	  .reg_title{text-align:center;margin:3% 0%;font-size:0.625rem;}
	  .reg_input{text-align:center;}
	  .reg_input input{border:1px solid #ccc;width:8rem;height:1.2rem;margin-bottom:0.3rem;padding-left:0.2rem;}
	  .reg_input button , .tishi button{width:3.5rem;height:1.2rem;text-align:center;line-height:1.2rem;background:#09b6f2;color:#fff;border-radius:0.1rem;margin:3% 0%;}
	  .reg_tishi{text-align:center;}
	  .weui-icon-cancel{position:absolute;top:-1rem;right:-0.3rem;color:#fff;font-size:1rem;}
	  .tishi{text-align:center;}
	  .tishi div{width:80%;font-size:0.625rem;text-align:center;display:flex;align-items:center;margin:auto;height:5rem;justify-content:center;}
</style>
	
</head>
<body>

    <div class="container">
        <div class="titleBar" id="dingdan-title">
            <div class="titleBar-back"  onclick="window.history.back()">
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
        <div class="c-content" style="padding-bottom: 60px" id="lieb">
           <div class="weui-panel__bd picTxtList c-m-b-10">
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
                            <p class="weui-media-box__desc"><span class="c-c-r c-f-s-18">￥ ${prod.prodPrice}</span><s>原价￥ ${prod.oldPrice}</s></p>
                            <ul class="weui-media-box__info">
                                <li class="weui-media-box__info__meta">已团${prod.saled}件</li>
<%--                                 <li class="weui-media-box__info__meta">剩余${prod.remain}件</li> --%>
<%--                                 <li class="weui-media-box__info__meta">${prod.saling}个待成团</li> --%>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="weui-panel__bd c-leftimg-rightall">
                <h3><img alt="" src="${stax}/assets/images/user-o.png">&nbsp;别人在开团</h3>
                <div id="datalistDiv">
                
                </div>
            </div>
            <div class="weui-media-box weui-media-box_text">
            	<div class="weui-flex c-goods-details">
            		<div class="c-list-left-div">
            				<div class="c-panel-image c-panel-image-text">${prod.descr}
                            </div>
            		</div>
            	</div>
            </div>
        </div>
        <div class="page__bd" id="twoTab">
            <div class="weui-tab">
                <div class="weui-navbar weui-navbar-down">
                    <div class="weui-navbar__item red checkBuy">
                    	立即购买
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 油卡登记框 -->
		<div class="reg-frame">
			<i class="weui-icon-cancel"></i>
			<p class="reg_title">油卡信息登记</p>
			<div class="reg_input">
				<input class="reg_input_phone1" type="number" placeholder="请输入您的19位加油卡号" /><br/>
				<input class="reg_input_phone2" type="number" placeholder="请再次输入您的19位加油卡号" /><br />
				<button>确认</button>
			</div>
			<p class="reg_tishi">*拼团成功后费用将充值到此登记账户</p>
		</div>
		
		<!-- 其他提示框 -->
		<div class="tishi">
			<i class="weui-icon-cancel"></i>
			<div>
				<p></p>				
			</div>
			<button>确认</button>
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
                        	<span class="c-c-r c-m-r-5 c-f-s-18" style="font-size: .7rem;">现价: ￥ <span id="prodPrice">${prod.prodPrice}</span></span>
                        	<span style="display: block;"><s>原价 :￥<span id="oldPrice">${prod.oldPrice}</s></span></span>
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
            	<div style="display: none;" id="addressId"></div>
                <div class="weui-media-box weui-media-box_text" id="addrDiv" style="display:none;">
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
                <a class="c-shit" href="" style="font-size:0.8rem;"><i class="fa fa-angle-right fa-angle-right-position" id="c-adress-arrow" aria-hidden="true">></i></a>
            </div>
            <div class="bottom-close">
            	<div class="bottom-close-img"></div>
            </div>
            
            <div class="weui-navbar weui-navbar-down weui-navbar-right c-b-t-1">
                <div class="weui-navbar__item weui-bar__item_on" id="c-change" >
<!--                     	已优惠￥<span id="dismoney">0.00</span> -->
					<span class="c-f-s-14" id="daizhif">待支付￥</span>
                    <span class="c-c-r c-f-s-14 c-m-r-5" id="payMoney">0.00</span>
                    
                </div>
                <input style="display: none;" id="prodNum" value='0'></input>
				<input style="display: none;" id="detailId" value='0'></input>
                <div class="red c-f-s-18 weui-navbar-div" id="buyBtn">
                    	提交订单
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
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=13"></script>
<script type="text/javascript">
    	var excludewl = "${excludewl}";
    	var excludewlmsg = "${excludewlmsg}";
    	if(excludewl && excludewl == "1"){
    		weui.alert(excludewlmsg ? excludewlmsg : "非法用户");
    		window.location.href="${ctx}/bannertuan/index.do";
    	}
    </script>
<script>
	var detailList = null;
	var addressList = null;
// 	var discountList = null;
	var disId = '';
	var rmoney = '${prod.prodPrice}';
	var prodType = '${prod.prodType}';
	var reg_boll = false;
	var userId = localStorage.getItem("userId");
	var bankId = localStorage.getItem("bankId");
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
	    });
    	
	    $('.checkBuy').on('click', function(){
	    	 $('.c-bottom-area').fadeIn(200);
		     $('.c-black-mask').fadeIn(200);
	    });
	    
	    $("#buyBtn").click(function(){
	    	$(".c-black-mask").css("z-index","993");
	    	if(reg_boll == true){
				$.ajax({
					url:'${ctx}/bannertuan/checkuseraccount.json',
					type:'post',
					data:'uid='+encodeURIComponent(userId)+"&r="+Math.random(),
					success:function(resp){
						if(resp.userAccount&&resp.userAccount!=""){
							weui.confirm("您已绑定账号为“"+resp.userAccount+"”的加油卡，您确认向此加油卡充值100元吗？", function() {
			        			//点击确认后的回调函数
								toBuy();
			        		  }, function() {
			        		  	//点击取消后的回调函数
			        		  	$(".c-black-mask").css("z-index","991");
			        			$(".reg-frame").hide();
			        		  });
						}else{
							$(".reg-frame, .c-black-mask").show();
						}
					}
				});
			}else{
				toBuy();
			}
	    });
	    
    	/*跳转开团列表*/
	    $('#viewTuanDiv').on('click', function(){
	    	var loading = weui.loading('正在加载...');	//loading
	    	window.location.href = "${ctx}/bannertuan/tuanlist.do?pid=${prod.id}";
	    });
	    
        /*表单验证*/
        var regexp = {
            regexp: {
                EREA: /[^~]/
            }
        };
 
        weui.form.checkIfBlur('#form',regexp);

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
		fillTuan();
		
		getProdDetail();
	} );
    
    function fillTuan(){
    	$('#datalistDiv').html('');
    	var tuanList = ${tuanList};
    	if(tuanList && tuanList.length > 0){
    		for(var i=0; i<tuanList.length; i++){
    			var phone = tuanList[i].phone;
		    	var pdiv = '<div class="weui-media-box weui-media-box_appmsg">'+
						            '<div class="weui-media-box__hd" style="font-size:0px;">'+
						        '<img class="weui-media-box__thumb" src="'+tuanList[i].picUrl+'" alt="">'+
						    '</div>'+
						    '<div class="weui-media-box__bd">'+
						        '<h4 class="weui-media-box__title">'+tuanList[i].prodName+'</h4>'+
						        '<p class="weui-media-box__desc">手机尾号'+phone.substr(phone.length - 4, 4)+'用户开团</p>'+
						        '<p class="weui-media-box__desc">拼团ID：'+tuanList[i].tuanCode+'</p>'+
						        '<p class="weui-media-box__desc">还差'+tuanList[i].lackNum+'人 剩余:<span class="c-c-r" id="cdspan'+i+'">00:00:00</span></p>'+
						        '<div class="c-list-right-div">'+
						           '<div class="c-list-right-btn" onclick="toView('+tuanList[i].pid+',\''+tuanList[i].tuanCode+'\')">'+
						                '<a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_default">去参团</a>'+
						           '</div>'+
						        '</div>'+
						    '</div>'+
						'</div>';
				
		    	$('#datalistDiv').append(pdiv);
		    	setMyTimer("cdspan"+i, tuanList[i].closeTime);
    		}
    	}
    }
    
    function toView(pid, tcode){
    	if(!bankId){
    		alert('数据缺失 bid');
    		return;
    	}
    	var loading = weui.loading('正在加载...');	//loading
    	window.location.href = "${ctx}/bannertuan/sdetail.do?bankId="+encodeURIComponent(bankId)+"&pid="+pid+"&tcode="+tcode;
    }
    
	function getProdDetail(){
		
		if(!userId || userId < 0){
			weui.alert('missing data -userid-');
			return;
		} 
		var loading = weui.loading('正在加载...');	//loading
		$.ajax({
			type: "GET",
			url: "${ctx}/bannertuan/getBuyInfo.json",
			data: "pid=${prod.id}"+"&uid="+encodeURIComponent(userId)+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.detailList) detailList = resp.detailList;
				if(resp.zshProduct&&resp.zshProduct!="") {
					reg_boll = true;
					regboll(reg_boll);
				}
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
		if(!detailList) return;
		var exists = false;
		for(var i=0; i<detailList.length; i++){
			if(detailList[i].aids == aid){
// 				$('#payMoney').html(detailList[i].aprice);
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
	
	var oos = "";
	//购买事件
	function toBuy(){
		var loading = weui.loading('正在加载...');	//loading
		$(".c-black-mask").css("z-index","991");
		var prodNum = $('#prodNum').val();
		if(!isNaN(prodNum)){
			if(parseInt(prodNum) > 0){
				$.ajax({
					type: "POST",
					url: "${ctx}/bannertuan/buy.json",
					data: "detailId="+$('#detailId').val()+"&pid=${prod.id}"+"&bflag=1"+"&userId="+encodeURIComponent(userId)+"&userwphone="+localStorage.getItem("tjuserWPhone")+"&bankId="+encodeURIComponent(bankId)
						+"&payMoney="+rmoney+"&discountId="+disId+"&disMoney="+$('#dismoney').html()+"&r="+Math.random(),
					success: function(resp){
						loading.hide();
						if(resp.errMsg){
							$(".tishi , .c-black-mask").show();
							$(".tishi p").html(resp.errMsg);
						}else if(resp.payUrl){
							oos = resp.payUrl;
// 							MBC_PAY();	
							MBS_DIRECT_PAY();
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

	function MBS_PAYINFO(){
	  return oos;
	}

	function MBS_DIRECT_PAY(){
		if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
			//苹果端
			window.location="mbspay://direct?"+MBS_PAYINFO();
		} else if (/(Android)/i.test(navigator.userAgent)) {
		    //安卓端
			mbspay.directpay(oos);
		} else {
		   //pc端
		   alert('请到app上购买！');
		};
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
	
	/***************设置定时器**********************/
    function setMyTimer(oid, ctime){
        var oDate = stringToStamp(ctime);
        
        function countDown(){
            var now=new Date();
        
            var s=parseInt((oDate-now.getTime())/1000);
            if(s < 0) return;
            
            var d=parseInt(s/86400);
            s%=86400;
            var h=parseInt(s/3600);
            s%=3600;
            var m=parseInt(s/60);
            s%=60;
            
           	$('#'+oid).html(checkDay(d)+checkTime(h)+':'+checkTime(m)+':'+checkTime(s));
            
        }
        countDown();
        window.setInterval(countDown,1000);
    }
    
    function checkTime(i){ //将0-9的数字前面加上0，例1变为01 
		if(i<10) {i = "0" + i;} 
		return i; 
	} 

	function checkDay(i){
		if(!i){return '';}else{i = i + "天";}
		return i;
	}
	//字符串转换为时间戳
	function stringToStamp(date){
		//var date="2014-05-08 00:22:11";
		var date = new Date(Date.parse(date.replace(/-/g, "/")));
		date = date.getTime();
		return date;
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
	
	/* 显示领取框 */
	function regboll(reg_boll){
		if(reg_boll == true){
			$.ajax({
				url:'${ctx}/bannertuan/checkuseraccount.json',
				type:'post',
				data:'uid='+encodeURIComponent(userId)+"&r="+Math.random(),
				success:function(resp){
					if(resp.msg&&resp.msg!=""){
						
					}else{
						$(".reg-frame , .c-black-mask").show();
					}
				}
			});
		}
	}
	
	$('.reg_input_phone1 , .reg_input_phone2').on('input propertychange',function(nums){
		var value = $(this).val();
		if(value.length > 19){
			$(this).val(value.slice(0,19));		
		}
	});
	
	$(document).on("input propertychange",".reg_input_phone2",function(e){
		var accountF = $(".reg_input_phone1").val();
		var accountT = $(".reg_input_phone2").val();
			if($(".reg_input_phone2").val() !== $(".reg_input_phone1").val()){
	        	$(".reg_tishi").text("*请确认两次充值卡的信息一致");
	        	$(".reg_tishi").css("color","red");
	        	
	        }else{
	        	
	        	$(".reg_tishi").text("*拼团成功后费用将充值到此登记账户");
	        	$(".reg_tishi").css("color","#000");
	        	$(".reg_input button").click(function(){
	        		
	        		if($(".reg_input_phone1").val().length == 19 || $(".reg_input_phone2").val().length == 19){
	        			$(".reg_input button").attr("disabled",false)
		        		$(".reg-frame , .c-black-mask").hide();
		        		weui.confirm("您确定"+accountT+"为油卡登记信息吗，一经绑定天津惠内通用且无法修改，不再提示。", function() {
		        			  //点击确认后的回调函数
		        			  $.ajax({
		        				  url:'${ctx}/bannertuan/adduseraccount.json',
		        				  type:'post',
		        				  data:'accountF='+accountF+"&accountT="+accountT+"&uid="+encodeURIComponent(userId)+"&r="+Math.random(),
		        				  success:function(resp){
		        					  if(resp.msg&&resp.msg!=""){
		        						  $(".tishi p").text(resp.msg);
		        						  $(".tishi , .c-black-mask").show();       						  
		        					  }else{
		        						  $(".reg-frame , .c-black-mask").hide();
		        					  }
		        				  }
		        			  });
		        		  }, function() {
		        		  //点击取消后的回调函数
		        		  	$(".reg-frame input").val("");
		        			  $(".reg-frame , .c-black-mask").show();
		        		  });
	        		}
	        		
	        	});
	        }	
        
    });
	
	$(".reg-frame i").click(function(){
		$(".reg-frame , .c-black-mask , .tishi").hide();
	})
	$(".tishi button , .tishi .weui-icon-cancel").click(function(){
		$(".c-black-mask").css("z-index","991");
		$(".tishi").hide();
	})
	
	var actiCode = '${prod.actiCode}';
</script>
</body>
</html>
