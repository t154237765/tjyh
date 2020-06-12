<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>好利来50元现金券</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .weui-navbar-right{background: #eaeaea;}
        .c-leftimg-rightall .weui-media-box__desc{width:8.5rem;}
        .weui-media-box__info{margin-top: 0;font-size:12px}
        .weui-media-box__info__meta{padding-right:5px;color:#666;}
        .weui-media-box__desc{color:#666;}
        .openbtn{line-height: 2.5rem;width:2.8rem;height:1.8rem;background:url(${stax}/assets/images/goldbig.jpg) no-repeat;background-size:contain;color:#b86c00;font-size: .6rem;text-align: center;vertical-align: middle;    position: absolute;bottom: 2.4rem;left: 9rem;}
        .weui-form-preview__bd, .weui-form-preview__label{font-size:.7rem;color:#333;}
        .c-bottom-area{top:auto;bottom:0;}
        .bottom-close{top:auto;bottom: 9rem;}
        .mygoldbean{font-size:.7rem;text-align:center;background:#fff;border-bottom:1px solid #eee;}
		.mygoldbean h3,.mygoldbean img{display:inline-block;}
		.mygoldbean img{width:1.3rem;height:1rem;}
		.buyimg{text-align:center;padding-top: 1rem;padding-bottom: 1rem;}
		.buyimg img{width:90%;margin:0 auto;}
		
		.spinner{width:1.2rem;height:1rem;font-size: 1rem;line-height: 1rem;vertical-align: middle;background: #fff;
        		margin-right: 3px;text-align: center;color: #666}
        .spinner .value{color:#999;}
        #spinner{font-size:14px; -webkit-text-fill-color:#666; -webkit-opacity:1; opacity: 1;}
        
        .timealert{position:absolute;top:-30px;left:0;text-align:center;width: 100%;border-top: 1px solid #ddd;padding: 5px 0;font-size: 12px;background:#fff;}
    	#c-change{font-size: 12px;text-align: left;padding-left: 15px;  vertical-align: middle;line-height: .8rem;height: .8rem;padding:5px 0 0 15px;}
    	.weui-navbar-down .red{background:#0066b3;}
    	.c-bottom-area .weui-navbar-right{background:#fff;}
    	.goodsintro img{width:100%;}
    	.c-oldprice {text-decoration: line-through;color: #aaa;}
    	.c-panel-image2{font-size: .6rem;margin-top: 9px;border-top:1px solid #dedede;padding-top:7px;color:#666;}
    	.bottom-close{width:21px;height: 21px;background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;position:absolute;top: 10.2rem;right: 5px;background-size:contain;}
		.bottom-close{background: none;width:30px;height:30px;top:0rem;right:0;}
		.bottom-close-img{background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;width:21px;height:21px;background-size: contain;margin:5px;}
    	.reg-frame , .tishi{width:78%;height:9rem;background:#fff;position:fixed;top:10rem;right:0;left:0;margin:auto;z-index:994;display:none;}
	    .reg_title{text-align:center;margin:3% 0%;font-size:0.625rem;}
	  	.reg_input{text-align:center;}
	  	.reg_input input{border:1px solid #ccc;width:8rem;height:1.2rem;margin-bottom:0.3rem;padding-left:0.2rem;}
	  	.reg_input button , .tishi button{width:3.5rem;height:1.2rem;text-align:center;line-height:1.2rem;background:#09b6f2;color:#fff;border-radius:0.1rem;margin:3% 0%;}
	  	.reg_tishi{text-align:center;}
	  	.tishi{text-align:center;}
	    .tishi div{width:80%;font-size:0.625rem;text-align:center;display:flex;align-items:center;margin:auto;height:5rem;justify-content:center;}
    </style>
</head>
<body>
    <div class="container">
		<div class="c-index-hot mygoldbean">
			<h3>我的</h3><img src="${stax}/assets/images/goldbean.jpg">: ${ingotNum}锭
		</div>
		<div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">本地特惠</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content">
            <div class="weui-panel__bd c-leftimg-rightall">
            	<div class="weui-media-box__hd buyimg">
                    <img class="weui-media-box__thumb" src="${stax}/${prod.largePicUrl}" alt="" >
                </div>
                <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                    
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">${prod.prodName}</h4>

                        <p class="weui-media-box__desc"><span class="c-c-r c-f-s-16 c-m-r-5">¥${prod.prodPrice}</span><span class="c-f-s-12 c-oldprice">¥${prod.oldPrice}</span></p>

                        <ul class="weui-media-box__info">
                            <li class="weui-media-box__info__meta">已售：${prod.soldNum}份</li>
                        </ul>
                        
                    </div>
                </div>
            </div>


            <div class="weui-panel__bd" style="margin-top:.5rem;margin-bottom: 76px;">
            	<div class="weui-cell weui-cell_access">
					<div class="weui-cell__bd">
						<span class="c-f-s-14" style="vertical-align: middle;color:#666">使用津元宝：</span>
					</div>
					<button class="decrease spinner">-</button>
	                <input type="text" class="spinner" id="spinner" value="0" disabled="" />
	                <button class="increase spinner">+</button>
				</div>
                <div class="weui-media-box weui-media-box_text c-panel-image2 goodsintro" style="padding-bottom:86px;">
                    <span class="c-f-s-18">商品说明:</span><br>
                    ${prod.descr}
                </div>
<!-- 
                <div class="button-sp-area" style="margin:0 auto;">
                    <a href="http://group.ccb.com/cn/v3/head_content/mbsapp.html" class="weui-btn weui-btn_plain-primary">立即兑换</a>
                </div> -->

            </div>

        </div>

			<div class="weui-navbar weui-navbar-down weui-navbar-right c-b-t-1">
            	<div class="timealert"><span>请于5分钟内完成支付，超时将自动取消订单</span></div>
                <div class="weui-navbar__item weui-bar__item_on" id="c-change">
                    	<span class="c-f-s-14" id="daizhif" style="font-size:.7rem;color:#333;">实际支付：</span>
                		<span class="c-c-r c-f-s-14 c-m-r-5" id="payMoney">¥${prod.prodPrice}</span>
                		<br/>
                    	<span id="costsp" style="">
	                    	津元宝：<span id="dismoney" class="c-c-r">0</span><span style="color:red">锭</span>
                		</span>
                </div>
                <div class="red c-f-s-18 weui-navbar-div">立即购买</div>
            </div>

	<!--底部弹出层-->
        <div class="c-black-mask" style="display: none;"></div>
        <div class="c-bottom-area" style="display: none;">
           
            <div class="bottom-close">
            	<div class="bottom-close-img"></div>
            </div>
            
            <div class="weui-navbar weui-navbar-down weui-navbar-right">
                <div class="button-sp-area" style="margin:0 auto;">
                    <a href="javascript:;" class="weui-btn weui-btn_plain-primary buyBtn">确认支付</a>
                </div>
            </div>
            
            <h3 class="icon-box__title c-m-t-1" style="font-size: .8rem;text-align: center;">购买详情</h3>
            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10">
				<div class="weui-form-preview__bd">
	                <div class="weui-form-preview__item">
	                    <label class="weui-form-preview__label">商品名称</label>
	                    <span class="weui-form-preview__value">${prod.prodName}</span>
	                </div>
	                <div class="weui-form-preview__item">
	                    <label class="weui-form-preview__label">支付金额</label>

	                    <span class="weui-form-preview__value c-c-r">¥<span id="payMoney_p">${prod.prodPrice}</span>元</span>

	                </div>
	                <div class="weui-form-preview__item">
	                    <label class="weui-form-preview__label">使用津元宝</label>
	                    <span id="" class="weui-form-preview__value c-c-r"><span id="dismoney_p">0</span>津元宝</span>
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
			<p class="reg_tishi">*购买成功后费用将充值到此登记账户</p>
		</div>
		
		<!-- 其他提示框 -->
		<div class="tishi">
			<div>
				<p></p>				
			</div>
			<button>确认</button>
		</div>
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>

var maxIngotNum = ${maxIngotNum};
var ingotNum = ${ingotNum};
var subsPrice = ${subsPrice};
var price = ${prod.prodPrice};
var maxin = Math.min(maxIngotNum, ingotNum);
var useIngot = 0;
var exBtn = false;
var reg_boll = false;
var zshProduct = "${zshProduct}";
if(zshProduct&&zshProduct!=""){
	reg_boll = true;
}
$(function(){
	/*替换click*/
  	FastClick.attach(document.body);
    //初始化页面信息
    setCountDown();
    
    maxin = parseInt(maxin);
    
    /*付款弹出层*/
    $('.c-bottom-area').on('click', '.bottom-close', function(){
        $(this).parents('.c-bottom-area').fadeOut(200);
        $('.c-black-mask').fadeOut(200);
    });
    
    /***数字加减事件**/
    function testColor(){
    	var sV = parseInt($("#spinner").val());
        if(sV >= maxin || price - sV * subsPrice == 0){$(".increase").css({"color":"#999","background":"#eee"});}else{$(".increase").css({"color":"#666","background":"#ddd"});}
        if(sV===0){$(".decrease").css({"color":"#999","background":"#eee"});}else{$(".decrease").css({"color":"#666","background":"#ddd"});}
    }
    testColor();
    
    function testColorBtn(num){
        if(num >= maxin){$(".increase").css({"color":"#999","background":"#eee"});}else{$(".increase").css({"color":"#666","background":"#ddd"});}
        if(num===0){$(".decrease").css({"color":"#999","background":"#eee"});}else{$(".decrease").css({"color":"#666","background":"#ddd"});}
    }
    
	$(".container").on("click",".increase",function(){
        var sV = parseInt($("#spinner").val());
        if(sV >= maxin || price - sV * subsPrice == 0)return;
        sV++;
        $("#spinner").val(sV);
        countTotal(sV);
        testColorBtn(sV);
    });
    $(".container").on("click",".decrease",function(){
        var sV = parseInt($("#spinner").val());
        if(sV===0)return;
        sV--;
        $("#spinner").val(sV);
        countTotal(sV);
        testColorBtn(sV);
    });
    
    $('.weui-navbar-down .red').on('click', function(){
    	$('.c-bottom-area').fadeIn(200);
	    $('.c-black-mask').fadeIn(200);
    });
});

function countTotal(s) {
	var p = price - s * subsPrice;
	if (p < 0) p = 0;
	$("#dismoney").html(s);
	$("#payMoney").html(p.toFixed(2));
	
	$("#dismoney_p").html(s);
	$("#payMoney_p").html(p.toFixed(2));
	
	useIngot = s;
}


//保留两位小数  
//功能：将浮点数四舍五入，取小数点后2位 
function toDecimal(x) {
	var f = parseFloat(x);
	if (isNaN(f)) {
		return 0.00;
	}
//		f = Math.round(x*100)/100;
	return f.toFixed(2);
}

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

var pid="${prod.id}";
var oos = "";

function doBuy() {
	var loading = weui.loading('正在加载...');	//loading
	 $(".c-black-mask").css("z-index","991");
	$.ajax({
		type: "GET",
		url: "${ctx}/soffer/buy.json",
		data: "pid="+pid+"&ingotNum="+useIngot+"&bankid="+encodeURIComponent(localStorage.getItem("bankId"))+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))+"&r="+Math.random(),
		success: function(resp){
			loading.hide();
			if (resp.errMsg && resp.errMsg != null) {
				$(".tishi , .c-black-mask").show();
				$(".tishi p").html(resp.errMsg);
			} else if (resp.orderInfo) {
				oos = resp.orderInfo;
// 				MBC_PAY();
				MBS_DIRECT_PAY();
			}
		},
		error:function(er){
			loading.hide();
			console.log(er);
		}
	});
}

// function MBC_PAY(){
// 	//alert(navigator.userAgent);
// 	if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
// 	   //苹果端
// 		window.location="/mbcpay.b2c ";
// 	} else if (/(Android)/i.test(navigator.userAgent)) {
// 	    //安卓端
// 		window.mbcpay.b2c(oos);
// 	} else {
// 	   //pc端
// 	   weui.alert('请到app上购买！');
// 	};
// }
// function MBC_PAYINFO(){
// 	  return "{" + oos + "}";
// }

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

function toHome(){
	window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
}


/* 显示领取框 */
$(".buyBtn").click(function(){
	$(".c-black-mask").css("z-index","993");
	if(reg_boll == true){
		$.ajax({
			url:'${ctx}/bannertuan/checkuseraccount.json',
			type:'post',
			data:'uid='+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
			success:function(resp){
				if(resp.userAccount&&resp.userAccount!=""){
					weui.confirm("您已绑定账号为“"+resp.userAccount+"”的加油卡，您确认向此加油卡充值100元吗？", function() {
	        			//点击确认后的回调函数
						doBuy();
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
		doBuy();
	}
});


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
        	
        	$(".reg_tishi").text("*购买成功后费用将充值到此登记账户");
        	$(".reg_tishi").css("color","#000");
        	$(".reg_input button").click(function(){
        		
        		if($(".reg_input_phone1").val().length == 19 || $(".reg_input_phone2").val().length == 19){
        			$(".reg_input button").attr("disabled",false)
	        		$(".reg-frame , .c-black-mask").hide();
	        		weui.confirm("您确定"+$(".reg_input_phone2").val()+"为油卡登记信息吗，一经绑定天津惠内通用且无法修改，不再提示。", function() {
	        			  //点击确认后的回调函数
	        			  $.ajax({
	        				  url:'${ctx}/bannertuan/adduseraccount.json',
	        				  type:'post',
	        				  data:'accountF='+accountF+"&accountT="+accountT+"&uid="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
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
	$(".c-black-mask").css("z-index","991");
	$(".reg-frame , .tishi").hide();
})
$(".tishi button").click(function(){
	$(".c-black-mask").css("z-index","991");
	$(".tishi").hide();
})
</script>
</body>
</html>
