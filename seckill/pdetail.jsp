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
        .c-panel-image2{font-size: .6rem;margin-top: 9px;border-top:1px solid #dedede;padding-top:7px;color:#666;display:flex;align-items:center;justify-content:space-between;padding-right:5%;}
        @media screen and (min-height: 481px){
            .bottom-close,.c-bottom-area{top: 14rem;}
        }
        .weui-navbar-down .red{background: #0066b3;}
        .timealert{position:absolute;top:-30px;left:0;text-align:center;width: 100%;border-top: 1px solid #ddd;padding: 5px 0;font-size: 12px;background:#fff;}
    	.picTxtList .c-goods-details{padding-left:0;padding-right:0;}
    	.c-panel-image img{width:90%;margin: 0 auto;}
    	.c-panel-more{width:0.4rem;transform:rotate(180deg);}
    	
    	.reg-frame , .tishi{width:78%;height:9rem;background:#fff;position:absolute;top:10rem;right:0;left:0;margin:auto;z-index:996;display:none;}
	    .reg_title{text-align:center;margin:3% 0%;font-size:0.625rem;}
	  	.reg_input{text-align:center;}
	  	.reg_input input{border:1px solid #ccc;width:8rem;height:1.2rem;margin-bottom:0.3rem;padding-left:0.2rem;}
	  	.reg_input button , .tishi button{width:3.5rem;height:1.2rem;text-align:center;line-height:1.2rem;background:#09b6f2;color:#fff;border-radius:0.1rem;margin:3% 0%;}
	  	.reg_tishi{text-align:center;}
	  	.c-black-mask{z-index:995;}
    </style>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar" id="dingdan-title">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">限时抢购</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content" style="padding-bottom: 80px" id="lieb">
           <div class="weui-panel__bd picTxtList c-m-b-5">
                <div class="weui-media-box weui-media-box_text">
                    <p class="c-panel-image">
                        <img src="${stax}/${goods.largePicUrl}" alt="" class="hsrc">
                        <!-- <img src="../assets/images/goods-aiqiyi-1.jpg" alt="" class="hsrc"> -->
                    </p>
                    <div class="weui-flex c-goods-details">
                        <div class="c-list-left-div">
                            <h4 class="weui-media-box__title" style="font-size: .8rem;margin-bottom:4px;margin-left:.5rem;">${goods.prodName}</h4>
                            <p class="weui-media-box__desc"><span class="c-c-r" style="font-size: .8rem;display: inline-block;margin-left:.5rem;">¥${goods.prodPrice}</span>
                            	<span style="text-decoration: line-through;">原价 ${goods.oldPrice}</span><br/>
                            	<span style="color: #333;margin-left:5px;margin-top: .2rem;display: inline-block;margin-left:.5rem;">已售：${goods.soldNum}份</span></p>
                            <p class="c-panel-image2" onclick="javascript:window.location.href='${ctx}/seckill/rules.do';">
                            	<span style="font-size: .7rem;color:#333;display: inline-block;margin-left:.5rem;">活动规则</span>
                            	<img class='c-panel-more' src="${stax}/assets/images/more.png" />
                            </p>
                            
                            <!-- <p>&nbsp;</p> -->

                            <div class="c-panel-image2" style="padding:.5rem;">
                                <span style="font-size: .7rem;color:#333;display: inline-block;">商品说明:</span><br/>
                                <!-- <img src="../assets/images/goods-aiqiyi-1.jpg" alt="" class="hsrc"> -->
                                ${goods.descr}
                            </div>
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
                		<span class="c-c-r c-f-s-14 c-m-r-5" style="color:red" id="payMoney">¥${goods.prodPrice}</span>
                    </div>
                    <div class="red c-f-s-18 weui-navbar-div" id="showbtn">
						立即抢购
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 信息登记 -->
        <div class="c-black-mask" style="display: none;"></div>
        <div class="reg-frame">
			<i class="weui-icon-cancel"></i>
			<p class="reg_title">信息登记</p>
			<div class="reg_input">
				<input class="reg_input_phone1" type="number" placeholder="请输入您的卡号" /><br/>
				<input class="reg_input_phone2" type="number" placeholder="请再次输入您的卡号" /><br />
				<button>确认</button>
			</div>
			<p class="reg_tishi">*购买成功后费用将充值到此登记账户</p>
		</div>
        
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=13"></script>

<script>
	var userId = encodeURIComponent(localStorage.getItem("userId"));
	var bankId = encodeURIComponent(localStorage.getItem("bankId"));
	var pid = "${goods.id}";

    $(document).ready(function() {
		/*替换click*/
		FastClick.attach(document.body); 
		
	    $('#showbtn').on('click', function(){
	    	toBuy();
	    });

	});
	
    var oos = "";
	//购买事件
	function toBuy(){
		var loading = weui.loading('正在加载...');	//loading
		
		$.ajax({
			type: "POST",
			url: "${ctx}/seckill/probe.json",
			data: "pid="+encodeURIComponent(pid)+"&bankid="+encodeURIComponent(localStorage.getItem("bankId"))
			+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))+"&r="+Math.random(),
			timeout : 13000, //超时时间设置，单位毫秒
			success: function(resp){
				//loading.hide();
				if(resp.errMsg && resp.errMsg != ""){
					loading.hide();
					weui.alert(resp.errMsg);
				}else if(resp.token){
					$.ajax({
						type: "POST",
						url: "${ctx}/seckill/"+ resp.token + "/buy.json",
						data: "pid="+encodeURIComponent(pid)+"&bankid="+encodeURIComponent(localStorage.getItem("bankId"))
						+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))+"&r="+Math.random(),
						timeout : 13000, //超时时间设置，单位毫秒
						success: function(resp){
							loading.hide();
							if(resp.errMsg && resp.errMsg != ""){
								weui.alert(resp.errMsg);
							}else if(resp.orderInfo){
								oos = resp.orderInfo;
// 								MBC_PAY();
								MBS_DIRECT_PAY();
							}
						},
						error:function(er){
							loading.hide();
							console.log(er);
						}
			    	});
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
	}
	
	/***建行付款**/
// 	function MBC_PAY(){
//     	if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
// 			//苹果端
// 			window.location="/mbcpay.b2c";
// 		} else if (/(Android)/i.test(navigator.userAgent)) {
// 		    //安卓端
// 			window.mbcpay.b2c(oos);
// 		} else {
// 		   //pc端
// 		   alert('请到app上购买！');
// 		};
// 	}
// 	var oos = "";
// 	function MBC_PAYINFO(){
// 		  return "{" + oos + "}";
// 	}
	
	$(".reg-frame i").click(function(){
		$(".reg-frame , .c-black-mask").hide();
	})
	
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
	        			
	        			$(".reg_input button").attr("disabled",false)
		        		$(".reg-frame , .c-black-mask").hide();
		        		weui.confirm("您确定"+accountT+"为油卡登记信息吗，一经绑定天津惠内通用且无法修改，不再提示。", function() {
		        			  //点击确认后的回调函数
		        			  $.ajax({
		        				  url:'${ctx}/bannertuan/adduseraccount.json',
		        				  type:'post',
		        				  data:'accountF='+accountF+"&accountT="+accountT+"&uid="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
		        				  success:function(resp){
		        					  if(resp.msg&&resp.msg!=""){
		        						  $(".reg_tishi").text(resp.msg);
		        						  $(".reg-frame , .c-black-mask").show();       						  
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
	        		
	        		
	        	});
	        }	
	    
	});
	
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
    
</script>
</body>
</html>