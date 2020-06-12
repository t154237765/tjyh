<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>兑奖专区</title>
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
        .openbtn{line-height: 2rem;width:2.2rem;height:1.8rem;background:url(${stax}/assets/images/goldbig.jpg) no-repeat;background-size:contain;color:#b86c00;font-size: .6rem;text-align: center;vertical-align: middle;    position: absolute;bottom: 2rem;left: 8.8rem;}
        .weui-form-preview__bd, .weui-form-preview__label{font-size:.7rem;color:#333;}
        .c-bottom-area{top:auto;bottom:0;}
        .bottom-close{top:auto;bottom: 9rem;}
        .weui-form-preview__item{border-bottom: 1px solid #eee;margin-bottom: 5px;}
        .weui-media-box_appmsg .weui-media-box__bd{height:4.5rem;}
        .c-leftimg-rightall .weui-media-box__desc,.weui-media-box__info{margin-top:.5rem;}
        .goodsintro img{width:100%;}
        .c-btex{position: fixed;bottom: 0;left: 0;z-index: 990;background: #fff;width: 100%;}
        .c-btex a{width:80%}
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

</body>
    <div class="container">

		<div class="titleBar">
            <div class="titleBar-back" onclick="javascript:window.history.go(-1);">
               <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">兑奖专区</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content" style="padding-bottom: 60px;">
            <div class="weui-panel__bd c-leftimg-rightall" style="border-bottom:1px solid #ededed;">
                <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" src="${stax}/${prod.picUrl}" alt="">
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">${prod.prodName}</h4>

                        <p class="weui-media-box__desc"><span class="c-c-r c-f-s-16 c-m-r-5">¥${prod.prodPrice}+</span></p>

                        <div class="openbtn touchView">${prod.ingotNum}</div>
                        <ul class="weui-media-box__info">
                            <li class="weui-media-box__info__meta">已兑：${prod.soldNum}份</li>
                        </ul>
                        
                    </div>
                </div>
            </div>


            <div class="weui-panel__bd">
                <div class="weui-media-box weui-media-box_text c-panel-image2 goodsintro" style="padding-top: 0;border-top:0;">
                    <span class="c-f-s-18" style="padding-bottom:11px;">商品说明</span><br>
                    	${prod.descr}
                </div>

                <div class="button-sp-area c-btex" style="margin:0 auto;">
                    <a href="javascript:toBuy();" class="weui-btn weui-btn_plain-primary">立即兑换</a>
                </div>

            </div>

        </div>

	<!--底部弹出层-->
        <div class="c-black-mask" style="display: none;"></div>
        <div class="c-bottom-area" style="display: none;">
           
            <div class="bottom-close">
            	<div class="bottom-close-img"></div>
            </div>
            
            <div class="weui-navbar weui-navbar-down weui-navbar-right">
                <div class="button-sp-area" style="margin:0 auto;">
                    <a class="weui-btn weui-btn_plain-primary exchangeBtn">立即兑换</a>
                </div>
            </div>
            
            <h3 class="icon-box__title c-m-t-1" style="font-size: .8rem;text-align: center;">兑换详情</h3>
            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10">
				<div class="weui-form-preview__bd">
	                <div class="weui-form-preview__item">
	                    <label class="weui-form-preview__label">商品名称：</label>
	                    <span class="weui-form-preview__value">${prod.prodName}</span>
	                </div>
	                <div class="weui-form-preview__item">
	                    <label class="weui-form-preview__label">支付金额：</label>
	                    <span class="weui-form-preview__value c-c-r">¥${prod.prodPrice}元</span>
	                </div>
	                <div class="weui-form-preview__item">
	                    <label class="weui-form-preview__label">使用津元宝：</label>
	                    <span class="weui-form-preview__value c-c-r">${prod.ingotNum}锭</span>
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
				<p styke="text-align:cneter;"></p>				
			</div>
			<button>确认</button>
		</div>
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script type="text/javascript">
    var errwlMsg = "${errwlMsg}";
    if(errwlMsg && errwlMsg != ""){
    	var homeUrl = localStorage.getItem("homeUrl");
    	weui.alert(errwlMsg, function() {
    		window.location.href="${ctx}/tjhui/"+homeUrl;
    	});
    }
</script>
<script type="text/javascript">
    var errMsg = "${errMsg}";
    if(errMsg && errMsg != ""){
    	weui.alert(errMsg, function() {
    		window.history.go(-1);
    	});
    }
</script>
<script>
$(function(){
	/*替换click*/
  	//FastClick.attach(document.body);
    
    /*付款弹出层*/
    $('.c-bottom-area').on('click', '.bottom-close', function(){
        $(this).parents('.c-bottom-area').fadeOut(200);
        $('.c-black-mask').fadeOut(200);
    });
});


var reg_boll = false;
var exBtn = false;
var zshProduct = "${zshProduct}";
if(zshProduct&&zshProduct!=""){
	reg_boll = true;
}

var pid="${prod.id}";
var oos = "";

function toBuy() {
	exBtn = true;
	$('.c-bottom-area').fadeIn(200);
	$('.c-black-mask').fadeIn(200);
}

function doBuy() {
	$(".c-black-mask").css("z-index","991");
	var loading = weui.loading('正在加载...');	//loading
	$.ajax({
		type: "GET",
		url: "${ctx}/exchange/buy.json",
		data: "pid="+pid+"&bankid="+encodeURIComponent(localStorage.getItem("bankId"))+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))+"&r="+Math.random(),
		success: function(resp){
			loading.hide();
			if (resp.errMsg && resp.errMsg != null) {
				$(".tishi , .c-black-mask").show();
				$(".tishi p").html(resp.errMsg);
			} else if (resp.orderInfo) {
				oos = resp.orderInfo;
				MBS_DIRECT_PAY();
			}
		},
		error:function(er){
			loading.hide();
			console.log(er);
		}
	});
}


//苹果支付专用
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

/* 显示领取框 */
$(".exchangeBtn").click(function(){
	if(reg_boll == true){
		$.ajax({
			url:'${ctx}/bannertuan/checkuseraccount.json',
			type:'post',
			data:'uid='+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
			success:function(resp){
				if(resp.userAccount&&resp.userAccount!=""){
					weui.confirm("您已绑定账号为“"+resp.userAccount+"”的加油卡，您确认向此加油卡充值${prod.oldPrice}元吗？", function() {
	        			//点击确认后的回调函数
						doBuy();
	        		}, function() {
	        		  	//点击取消后的回调函数
	        		  	$(".c-black-mask").css("z-index","991");
	        			$(".reg-frame").hide();
	        		});
				}else{
					$(".reg-frame , .c-black-mask").show();
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
        			$(".reg_input button").attr("disabled",false);
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
	        		  	$(".c-black-mask").css("z-index","991");
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
