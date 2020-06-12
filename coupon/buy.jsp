<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>订单确认</title>
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
        .c-leftimg-rightall .icon-box__title{color:#fa1e1e;font-size:1rem;font-weight:bold;}
        .icon-box {justify-content: center;margin-bottom: 15px;padding-top:15px;display: -webkit-box;display: -webkit-flex;
        			display: flex;-webkit-box-align: center;-webkit-align-items: center;align-items: center;
        }
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:4rem;height:4rem;}
        .weui-navbar__item.weui-bar__item_on{background: #fff;font-size: 12px;text-align: left;padding-left: 15px;  vertical-align: middle;
        		line-height: 1rem;height: 1rem;}
        #phone{border: 1px solid #09b6f2;border-radius: 9rem;text-align: center;color:#09b6f2;height: 27px;line-height: 27px;}
        .weui-icon-cancel{position: absolute;right: 2.1rem;top: 15px;font-size: .8rem;}
        .spinner .value{color:#999;}
        #xianjin .c-leftimg-rightall .weui-media-box__desc {width: 9rem;}
        #xianjin .c-leftimg-rightall .c-c-r{font-size: .8rem}
        #xianjin .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        #xianjin .page__hd{background: #fff;padding:.5rem 1rem;font-size:.7rem;}
        #xianjin .fa-check-circle,.fa-circle-o{position: absolute;right: 1.3rem;top: 2rem;font-size: 18px;color:#fc6973;}
        #xianjin .weui-media-box{padding: .6rem .6rem;padding-left:1rem;}
        .spinner{width:1.2rem;height:1rem;font-size: 1rem;line-height: 1rem;vertical-align: middle;background: #ddd;
        		margin-right: 3px;text-align: center;color: #666}
        #spinner{font-size:14px; -webkit-text-fill-color:#666; -webkit-opacity:1; opacity: 1;}
        #xianjin .price{position: absolute;left: 1rem;top: .9rem;font-size: 1rem;color: #fc6973;}
        #xianjin .price-big{font-size: 1.3rem;}
        #xianjin .coupon-detail{position: absolute;left: 6rem;top: 1rem;font-size: 1rem;color: #fff;line-height: .7rem;}
        #xianjin .coupon-detail p.coupon-detail-big{font-size: .7rem;margin-bottom:5px;}
        #xianjin .coupon-detail p{color: #fff;text-align: left;font-size: .6rem;}
        .c-detail{height: 9rem;overflow-y:auto; }
        .c-detail:before{border-top:0;}
    </style>
    <title></title>
</head>
<body>

	<div class="container">
		<div class="titleBar" id="dingdan-title">
			<div class="titleBar-back" onclick="toHome()">
				<img src="${stax}/assets/images/history.png" />&nbsp;返回
			</div>
			<div class="titleBar-text am-text-truncate">订单确认</div>
		</div>

		<div class="titleBar" id="xianjin-title" style="display: none;">
			<div class="titleBar-back">
				<img src="${stax}/assets/images/history.png" />&nbsp;返回
			</div>
			<div class="titleBar-text am-text-truncate">现金券</div>
		</div>

		<!-- 列表内容 -->
		<div class="c-content" style="padding-bottom: 50px;" id="dingdan">

			<div class="weui-panel__bd c-leftimg-rightall c-m-b-10">
				<div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
					<div class="weui-media-box__hd">
						<img class="weui-media-box__thumb" id="c-duo-img" src="${coupon.picUrl}" alt="">
					</div>
					<div class="weui-media-box__bd">
						<h4 class="weui-media-box__title c-m-b-1">${coupon.name}</h4>
						<p class="weui-media-box__desc c-esp-desc">
							<span class="c-c-r c-m-r-5 c-f-s-16">￥<span id="pspan">0.00</span></span>
							<span class="c-t-d-t">￥<span id="opspan">0.00</span></span>
						</p>
					</div>
				</div>
			</div>

			<div class="weui-cells c-m-t-10">
				<div class="weui-cell" style="padding-left: 2rem; padding-right: 2rem;">
					<div class="weui-cell__bd">
						<input id="phone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*"
							placeholder="请输入您的手机号码" value=""> <i class="weui-icon-cancel"></i>
					</div>
				</div>
				<div class="weui-cell weui-cell_access">
					<div class="weui-cell__bd">
						<span style="vertical-align: middle">购买数量</span>
					</div>
					<button class="decrease spinner">-</button>
	                <input type="text" class="spinner" id="spinner" value="1" disabled="" />
	                <button class="increase spinner">+</button>
				</div>
				<div class="weui-cell weui-cell_access" id="useQuan">
					<div class="weui-cell__bd">
						<span style="vertical-align: middle">现金券</span>
					</div>
					<div class="weui-badge"><span id="dataNum">0个可用</span></div>
					<div class="weui-cell__ft"></div>
				</div>
				<div class="weui-cell weui-cell_access">
	                <div class="weui-cell__bd">
	                    <span style="vertical-align: middle">购物须知</span>
	                </div>
	            </div>
	            <div class="weui-cell weui-cell_access">
                	<div class="weui-cell__bd c-detail">
	                    <span style="vertical-align: middle">
						${coupon.descr}
						</span>
	                </div>
	            </div>
			</div>

		</div>


		<!-- 现金券 -->
		<div class="c-content" id="xianjin" style="display: none;">
			<div id="wrapper">
				<div style="-webkit-margin-before: 0em;">
<!-- 					<div class="page__hd"> -->
<!-- 						<div> -->
<!-- 							有<span class="c-c-r">0</span>个现金券可用 -->
<!-- 						</div> -->
<!-- 					</div> -->
					<div class="weui-panel__bd c-leftimg-rightall" id="dataArea">


					</div>

				</div>
			</div>
		</div>

	</div>
	<div class="weui-navbar weui-navbar-down weui-navbar-right">
		<div class="weui-navbar__item weui-bar__item_on">
			现金券￥<span id="dismoney">0.00</span> <span class="c-c-r c-f-s-14 c-f-r c-m-r-5" id="payMoney">0.00</span>
			<span class="c-f-s-14 c-f-r">待支付￥</span>
		</div>
		<div class="red c-f-s-18 weui-navbar-div" onclick="buyCou()">立即购买</div>
	</div>
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/fastclick.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/common.js"></script>

	<script class="navbar js_show">
	
		var userId = encodeURIComponent(localStorage.getItem("userId"));
		var bankId = encodeURIComponent(localStorage.getItem("bankId"));
		var discountList = null;
		var disId = '';
		
		$(function() {
			/***显示默认绑定手机**/
			$('#phone').val(localStorage.getItem("userPhone"));
			/***显示金额**/
			$('#pspan').html(toDecimal('${coupon.price}'));
			$('#opspan').html(toDecimal('${coupon.oldPrice}'));
			$('#payMoney').html(toDecimal('${coupon.price}'));
			
			/*替换click*/
			FastClick.attach(document.body);

			/*验证手机号事件*/
			$(document).on("input propertychange", "#phone", function(e) {
				if (e.type === "input" || e.orignalEvent.propertyName === "value") {
					//console.log(this.value.length);
					this.value = this.value.replace(/\D/gi, "");
					if (this.value.length == 11) {
						var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
						if (!reg.test(this.value)) {
							weui.toast('请输入正确的手机号码',
								{
									duration : 1000,
									className : 'toast-warn',
									callback : function() {
										document.querySelector("#phone").value = "";
									}
								});
							return;
						}
					}
				}
			});
			/**清空手机号码事件*/
			$(".weui-icon-cancel").on("click", function() {
				$("#phone").val("").focus();
			});

			/***数字加减事件**/
			$(".container").on("click",".increase",function(){
		        var sV = parseInt($("#spinner").val());
		        if(sV===99)return;
		        sV++;
		        $("#spinner").val(sV);
		        countTotal(sV);
		    });
		    $(".container").on("click",".decrease",function(){
		        var sV = parseInt($("#spinner").val());
		        if(sV===0)return;
		        sV--;
		        $("#spinner").val(sV);
		        countTotal(sV);
		    });

			/***打开选择现金券页面事件***/
			$("#useQuan, #xianjin-title").on("click",function(){
				if($("#spinner").val() == '0'){
					weui.alert('请先选购商品！');
					return;
				}
		        $("#dingdan,#dingdan-title,#xianjin,#xianjin-title,.weui-navbar-down").toggle();
		    });
			
			/***获取现金券**/
			getDiscounts();
		});
		
		function getDiscounts(){
			var loading = weui.loading('正在加载...');	//loading
	  		
	  		$.ajax({
				type: "GET",
				url: "${ctx}/prize/getMyDiscount.json",
				data: "userId="+userId+"&r="+Math.random(),
				success: function(resp){
					loading.hide();
					if(resp.discountList && resp.discountList.length > 0){
						discountList = resp.discountList;
						$('#dataNum').html(discountList.length+'个可用');
						$('#dataArea').html('');
						for(var i=0; i<discountList.length; i++){
							var tmoney = discountList[i].money ? parseInt(discountList[i].money) : '0';
							var dadiv = '<div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-m-b-10">'+
				                            '<div class="weui-media-box__hd" mdata="'+tmoney+'" data="'+discountList[i].id+'">'+
					                            '<p class="price">￥<span class="price-big">'+tmoney+'</span>.0</p>'+
					                            '<img class="weui-media-box__thumb" src="${stax}/assets/images/cash-coupon.jpg" alt="">'+
					                            '<i class="fa fa-circle-o" aria-hidden="true"></i>'+
					                            '<div class="coupon-detail">'+
					                                '<p class="coupon-detail-big">专门送给您的'+tmoney+'元现金券</p>'+
					                                '<p>1.无消费金额限制</p>'+
					                                '<p>2.仅限拼团与本地特惠使用</p>'+
					                                '<p>有效期：'+discountList[i].dueTime+'</p>'+
					                            '</div>'+
					                        '</div>'+
					                    '</div>';
							$('#dataArea').append(dadiv);
						}
						/***点选现金券事件**/
						$(".weui-media-box__hd").on("click", function() {
							if(!$(this).attr('mdata')) return;
							//校验金额：如付款金额小于现金券金额则不可用
							if(parseFloat($('#pspan').html()) <= parseFloat($(this).attr('mdata'))){
								weui.alert('不可超过商品金额！请重新选择');
								return;
							}
							var that = this;
							$(".weui-media-box__hd").each(function(){
								if(this != that){
									$(this).find("i").removeClass('fa-check-circle');
									if(!$(this).find("i").hasClass('fa-circle-o'))
										$(this).find("i").addClass('fa-circle-o');
								}
							});
							//打钩
							$(this).find("i").toggleClass("fa-circle-o").toggleClass("fa-check-circle");
							//显示金额
							if($(this).find("i").hasClass("fa-check-circle")){
								$('#dismoney').html(toDecimal($(this).attr('mdata')));
								disId = toDecimal($(this).attr('data'));
								//点选完自动关闭
								$("#dingdan,#dingdan-title,#xianjin,#xianjin-title,.weui-navbar-down").toggle();
								$('#dataNum').html('- ￥'+toDecimal($(this).attr('mdata')));
							}else{
								$('#dismoney').html('0.00');
								disId = '';
								
								$('#dataNum').html(discountList.length+'个可用');
							}
							countTotal();
						});
					}else{
						discountList = null;
						$("#wrapper").html("<img src='${stax}/assets/images/null.png' style='margin:0 auto;height:4.5rem;margin-bottom:1.5rem;'><span style='font-size:.8rem;color:#999;'>您还没有现金券哦</span>").css({"paddingTop":"6rem"});
					    $("#wrapper").css({"background":"#f6f6f6","text-align":"center"});
					}
				},
				error:function(er){
					loading.hide();
					console.log(er);
				}
	    	});
		}
		
		function countTotal(){
			if($("#spinner").val() == '0'){
				$('#dismoney').html('0.00');
				disId = '';
				$('.fa-check-circle').toggleClass("fa-circle-o").toggleClass("fa-check-circle");
			}
			var paym = toDecimal($('#pspan').html()) * toDecimal($("#spinner").val()) - toDecimal($('#dismoney').html());
			$('#payMoney').html(toDecimal(paym));
		}
		
		function buyCou(){
			var loading = weui.loading('正在加载...');	//loading
			//校验
			var phone = $('#phone').val();
			if (phone.length == 11) {
				var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
				if (!reg.test(phone)) {
					weui.toast('请输入正确的手机号码',
						{
							duration : 1000,
							className : 'toast-warn',
							callback : function() {
								document.querySelector("#phone").value = "";
							}
						});
					loading.hide();
					return;
				}
			}else{
				weui.toast('请输入正确的手机号码',
					{
						duration : 1000,
						className : 'toast-warn',
						callback : function() {
							document.querySelector("#phone").value = "";
						}
					});
				loading.hide();
				return;
			}
			var bn = $("#spinner").val();
			if(!bn || bn == '0'){
				weui.toast('请确认购买数量！',
					{
						duration : 1000,
						className : 'toast-warn',
						callback : function() {
							document.querySelector("#phone").value = "";
						}
					});
				loading.hide();
				return;
			}
			
			
	  		$.ajax({
				type: "POST",
				url: "${ctx}/coupon/buy.json",
				data: "userId="+userId+"&phone="+$('#phone').val()+"&couponId="+'${coupon.id}'+"&buyNum="+$("#spinner").val()+"&bankId="+bankId
						+"&money="+$('#pspan').html()+"&dcId="+disId+"&disMoney="+$('#dismoney').html()+"&r="+Math.random(),
				success: function(resp){
					loading.hide();
					if(resp.orderInfo){
						oos = resp.orderInfo;
						MBC_PAY();
					}else if(resp.errMsg){
						weui.alert(resp.errMsg);
					}
				},
				error:function(er){
					loading.hide();
					console.log(er);
				}
	    	});
		}
		
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
		
		
		
		
		//保留两位小数  
		//功能：将浮点数四舍五入，取小数点后2位 
		function toDecimal(x) {
			var f = parseFloat(x);
			if (isNaN(f)) {
				return 0.00;
			}
// 			f = Math.round(x*100)/100;
			return f.toFixed(2);
		}
		
		/**返回首页**/
	  	function toHome(){
	  		window.location.href = '${ctx}'+localStorage.getItem("indexUrl");
	  	}
	</script>
</body>
</html>
