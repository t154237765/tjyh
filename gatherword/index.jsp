<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>天津集字</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css" />
  	<style type="text/css">
        *{
        	padding:0;
        	margin:0;
        	list-style:none;
        }
        html,body{
        	width:100%;
        	height:100%;
        }
        .box{
        	background:url(${stax}/assets/images/jiziBack.png) no-repeat 100% 100%;
        	background-size:100% 100%;
        	height:26.52rem;
        	margin-top:0.8rem;
        	position:relative;
        }
        .titleBar{width:90%;padding:0% 5%;height:0.88rem;z-index:11;font-size:0.3rem;color:#fff;display:flex;align-items:center;text-align:center;background:#08B6F2;position:fixed;top:0;}
        .titleBar-text{width:100%;text-align:center;}
		/* 继续支付样式  */
		.payTime{position:absolute;width:100%;}
		.payTime .times{width:6.6rem;background:#DDEDFF;height:2.5rem;position:absolute;top:8rem;left:0;right:0;margin:auto;border-radius:0.2rem;font-size:0.24rem;color:#333;text-align:center;}
		.payTime .times ul{width:100%;display:flex;align-items:center;justify-content:center;margin-top:6%;margin-bottom:4%;}
		.payTime .times .dot{width:0.45rem;height:0.45rem;background:linear-gradient(#726D6C, #C9BFBF);border-radius:0.45rem;border:0.1rem solid #fff;text-align:center;line-height:0.45rem;font-weight:600;font-size:0.3rem;color:#fff;}
		.payTime .times .wire{width:0.6rem;height:0.1rem;background:#fff;}
		.payTime .on{background:linear-gradient(#5480E3, #68A5E0) !important;}
		.payTime .cBtn{background:#FCCA4C;width:80%;height:0.8rem;line-height:0.8rem;font-size:0.36rem;color:#fff;position:absolute;top:11rem;left:0;right:0;text-align:center;margin:auto;border-radius:0.1rem;font-weight:bold;}   
		.payTime .tel{margin-bottom:2%;}
		
		.paySuccess{position:absolute;width:100%;}
		.paySuccess .times{width:6.6rem;background:#DDEDFF;height:2.5rem;position:absolute;top:8rem;left:0;right:0;margin:auto;border-radius:0.2rem;font-size:0.24rem;color:#333;text-align:center;}
		.paySuccess .times ul{width:100%;display:flex;align-items:center;justify-content:center;margin-top:4%;margin-bottom:3%;}
		.paySuccess .times .dot{width:0.45rem;height:0.45rem;background:linear-gradient(#726D6C, #C9BFBF);border-radius:0.45rem;border:0.1rem solid #fff;text-align:center;line-height:0.45rem;font-weight:600;font-size:0.3rem;color:#fff;}
		.paySuccess .times .wire{width:0.6rem;height:0.1rem;background:#fff;}
		.paySuccess .on{background:linear-gradient(#5480E3, #68A5E0) !important;}
		.paySuccess .successBtn{background:#B1B1B1;width:80%;height:0.8rem;line-height:0.8rem;font-size:0.36rem;color:#fff;position:absolute;top:11rem;left:0;right:0;text-align:center;margin:auto;border-radius:0.1rem;font-weight:bold;}   
      	/* 弹出框美化 */

		.pull-up , .zhezhao , .err-div{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.4);z-index:33333;}
		.pull-up .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;padding-bottom:0.6rem;}
		.zhezhao .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;}
		.err-div .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;padding-bottom:0.5rem;}
		.pull-up .tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.zhezhao .zhezhao-tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.err-div .err-tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.tishi p{padding:16% 0%;}
		.tishi p span{color:#CE3633;}
		.err-tishi p{padding:16% 0%;}
		.zhezhao-tishi p{padding:16% 0%;}
		.confirm1{width:2.5rem;height:0.8rem;line-height:0.8rem;border-radius:0.1rem;text-align:center;font-size:0.36rem;background:#CE3633;color:#fff;margin:auto;}
		.button{display:flex;align-items:center;justify-content:space-around;text-align:center;padding-bottom:0.4rem;}
		.confirm2 , .cancel{font-size:0.3rem;width:2.4rem;padding:5% 0%;color:#fff;height:0.2rem;line-height:0.2rem;border-radius:0.1rem;}
		.confirm2{background:#CE3936;}
		.cancel{background:#A0A0A0;}
		
		.jizi{width:7.3rem;padding:2% 0%;background:url(${stax}/assets/images/jizi.png) no-repeat 100% 100%;background-size:100% 100%;height:5.2rem;position:absolute;top:5.2rem;right:0;left:0;margin:auto;}
   		ul{width:90%;display:flex;align-items:center;justify-content:space-between;font-size:0.56rem;color:#999;font-weight:bold;padding:0% 5%;margin-top:0.2rem;}
   		ul li{width:0.98rem;height:0.98rem;background:url(${stax}/assets/images/border.png) no-repeat 100% 100%;background-size:100% 100%;text-align:center;line-height:0.98rem;}
		.jizi div{width:100%;margin:auto;text-align:center;margin-top:0.34rem;}
		.jizi img{width:2.32rem;height:0.82rem;}
		.jizi p{font-size:0.28rem;color:#FBDB97;text-align:center;margin-top:0.2rem;}
		.jizi p span{color:#fff;}
		.prize{width:100%;text-align:center;position:relative;top:11rem;}
		.prize .img{width:4rem;height:0.84rem;text-align:center;margin:auto;margin-bottom:0.3rem;}
		.prize .img img{width:100%;}
		.prizeCont{width:6.6rem;position:absolute;right:0;left:0;margin:auto;background:#CE3936;}
		ol{width:92%;padding:2% 4%;color:#CE3936;margin-bottom:0.1rem;margin-top:0.3rem;}
		ol li{width:96%;padding:1% 2%;background:#FFEECA;display:flex;justify-content:space-between;border-radius:0.1rem;margin-bottom:0.2rem;align-items:center;}
		ol li div{width:0.9rem;height:0.66rem;background:url(${stax}/assets/images/yuanbao.png) no-repeat 100% 100%;background-size:100% 100%;font-size:0.3rem;font-weight:bold;color:#FB513B;line-height:0.9rem;}
		ol li p{font-size:0.3rem;font-weight:bold;}
		ol li p span{font-size:0.36rem;}
		.rule{width:100%;text-align:center;position:relative;top:17rem;}
		.rule .img{width:4rem;height:0.84rem;text-align:center;margin:auto;margin-bottom:0.3rem;}
		.rule .img img{width:100%;}	
		.ruleCont{width:6.2rem;height:5.9rem;padding:0.2rem;position:absolute;right:0;left:0;margin:auto;background:#CE3936;font-size:0.24rem;text-align:start;overflow:auto;color:#FBDB97;}	
		.on{color:#B12727;}
		/*登陆弹出框*/
		.weui-dialog .weui-dialog__btn_primary {
			background: #1abfff;
			width: 3rem;
			margin: 0 auto;
			height: 1.8rem;
			color: #fff;
			border-radius: 5px;
			margin-bottom: 1rem;
			line-height: 1.8rem;
			font-size: .8rem;
		}
		
		.weui-dialog .weui-dialog__btn_primary {
			background: #fff;
			border: 1px solid #CE3633;
			background:#CE3633;
			color: #fff;
			border-radius: 1rem;
		}
		
		#iosDialog1 .weui-cell {
			padding: 0;
		}
		
		#iosDialog1 .weui-cell__bd {
			background: #eee;
			padding: 0.2rem 0 0.2rem 0.1rem;
			font-size: .7rem;
		}
		
		#iosDialog1 .weui-vcode-btn {
			border: 0;
			background: #aaa;
			color: #fff;
			font-size:0.3rem;
			border-radius: 3px;
			height:0.8rem;
			line-height: 0.8rem;
		}
		
		#iosDialog1 .weui-cell_vcode {
			margin-top:0.2rem;
		}
		
		#iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after {
			border: 0
		}
		
		#iosDialog1 button.c-c-b {
			background: #CE3633;
		}
		
		.js_dialog input.weui-input {
			color: #333;
			font-size:0.3rem;
		}
		
		.buyNote {
			float: right;
			margin-right: 15px;
		}
		
		.weui-tab {
			height: auto;
		}
		
		.weui-dialog {
			overflow: visible;
		}
		
		#c-login-close,#c-login-close2,#c-zhifu-close{
			position: absolute;
			top:-0.7rem;
			right:0rem;
			font-size:0.6rem;
			color: #fff;
		}
		
		#c-intro-wrapper {
			padding: 0 5px;
		}
		
		.weui-cells:before,.weui-cells:after {
			border: 0;
		}
		.weui-toast__content{
			font-size:0.36rem;
		}
		.weui-loading_toast {font-size:20px;}
		/* 弹出框美化 */
		.weui-skin_android .weui-dialog__bd:first-child{text-align: center;}
		.weui-skin_android .weui-dialog__ft{text-align: center;padding: 0 1.8em .7em 1.4em;}
		.weui-skin_android .weui-dialog__btn:last-child{line-height: 1.5rem;width: 4rem;height: 1.5rem;}
		.c-panel-image{margin:0 auto;}
		.titleBar-back{color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height:44px;line-height:44px;padding-left:.4rem;position: absolute;left: 0;top:0;bottom:44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display:flex;align-items:center;}
		.titleBar-back .fa{font-size:16px;color:#fff;vertical-align: baseline;margin-right:5px;}
		.titleBar-text{height:44px;line-height:44px;vertical-align: middle;color:#fff;font-size:16px;text-align:center;}
		.titleBar-back img{width:0.15rem;}
</style>

</head>
<body>
    <div class="box">
    	<div class="titleBar" >
			<div class="titleBar-back" onclick="goHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
			<div class="titleBar-text am-text-truncate">集字赢大奖</div>
		</div>
		
		<div class="jizi">
			<ul style="margin-top:6%;">
				<li class="pm1">建</li>
				<li class="pm2">行</li>
				<li class="pm3">天</li>
				<li class="pm4">津</li>
				<li class="pm5">惠</li>
				<li class="pm6">祝</li>
			</ul>
			<ul>
				<li class="pm7">您</li>
				<li class="pm8">春</li>
				<li class="pm9">节</li>
				<li class="pm10">快</li>
				<li class="pm11">乐</li>
				<li class="pm_end">！</li>
			</ul>
			<div>
				<img src="${stax}/assets/images/jiziBtn.png" id="gwBtn"/>
			</div>
			<p>今天剩余参与次数：<span class="remainNums">4次</span></p>
			<p>随机支付0.1-1元，实时退款，集字得大奖！</p>
		</div>
		<div class="prize">
			<div class="img">
				<img src="${stax}/assets/images/prize.png"/>	
			</div>
			<div class="prizeCont">
				<ol>
					<li>
						<p><span>特等奖：</span>建行天津惠祝您春节快乐</p>
						<div>3888</div>
					</li>
					<li>
						<p><span>一等奖：</span>天津惠祝您春节快乐</p>
						<div>1000</div>
					</li>
					<li>
						<p><span>二等奖：</span>祝您春节快乐</p>
						<div>500</div>
					</li>
					<li>
						<p><span>三等奖：</span>春节快乐</p>
						<div>100</div>
					</li>
					<li>
						<p><span>参与奖：</span>得字即可</p>
						<div>1</div>
					</li>
				</ol>
			</div>
		</div>
		<div class="rule">
			<div class="img">
				<img src="${stax}/assets/images/rule.png" />	
			</div>
			<div class="ruleCont">
				1、活动时间：2019年2月1日-2019年2月28日。 <br>
				2、活动内容： <br>
				（1）活动期间每位用户每天可以参与4次； <br>
				（2）支付一次可获得一次抽取机会，支付金额0.1-1元金额随机，即时退款（储蓄卡：支付次日退回；信用卡：支付次日起1-2个工作日退回）；<br>
				（3）每笔支付，无论成功，均扣减一点体力值； <br>
				3、中奖规则 <br>
				（1）特等奖：成功集字“建行天津惠祝您春节快乐”，奖励津元宝3888锭，一等奖：成功集字“天津惠祝您春节快乐”，奖励津元宝1000锭，二等奖：成功集字“祝您春节快乐”，奖励津元宝500锭，三等奖：成功集字“春节快乐”，奖励津元宝100锭，参与奖：集字成功但未能组成“建行天津惠祝您春节快乐”、“天津惠祝您春节快乐”、“祝您春节快乐”、“春节快乐”其中一句，无论集字字数，均只奖励津元宝1锭。 <br>
				（2）每个客户在活动期间各奖级不能兼得，即获得特等奖客户不能兼得一等奖、二等奖、三等奖、参与奖，获得一等奖客户不能兼得二等奖、三等奖、参与奖，获得二等奖客户不能兼得三等奖、参与奖，获得三等奖客户不能兼得参与奖； <br>
				4、奖励发放 <br>
				活动结束后10个工作日内，统一发放津元宝，您可在天津惠“个人中心”津元宝明细中查询津元宝奖励情况。<br>
				5、活动声明：<br>
				活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。<br>
				6.本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。
				
			</div>
		</div>
    </div>
    
    
    <div class="js_dialog" id="iosDialog1"
		style="opacity: 1;display:none;">
		<div class="weui-mask"></div>
		<div class="weui-dialog" style="max-width:335px;">
			<i class="weui-icon-cancel" id="c-login-close"></i>
			<div class="weui-dialog__bd c-f-s-16"
				style="color: #333; padding-top: 1.7em;">

				请绑定手机号码
				<div class="weui-cells weui-cells_form">

					<div class="weui-cell">
						<div class="weui-cell__bd">
							<input id="phone" class="weui-input" type="tel" maxlength="11"
								pattern="[0-9]*" placeholder="请输入您的手机号码">
						</div>
					</div>
					<div class="weui-cell weui-cell_vcode">
						<div class="weui-cell__bd" style="line-height: 1;">
							<input class="weui-input" type="number" pattern="[0-9]*"
								id="ccode" oninput='checkLength(this,4);' maxlength="4"
								placeholder="请输入验证码">
						</div>
						<div class="weui-cell__ft">
							<button id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
						</div>
					</div>

				</div>
			</div>
			<div class="weui-dialog__ft c-btn-noline">
				<a href="javascript:;"
					class="weui-dialog__btn weui-dialog__btn_primary c-c-b2"
					style="line-height:0.8rem; height:0.8rem; flex: none;font-size:0.3rem;margin:5% auto" onclick="dialogbtn();">绑定</a>
			</div>
		</div>
	</div>
	
	<!--提示框  -->
	<div class="pull-up" style="display:none;">
		<div class="cont">
			<i class="weui-icon-cancel" style="color: #fff; font-size: 1.2rem;margin-bottom:0.1rem;position:absolute;top:3.8rem;font-size:0.6rem;right:0.5rem"></i>
			<div class="tishi">
				<p class="award_p">恭喜您获得“<span class="award">"天"</span>”</p>
			</div>
			<div class="confirm1 again">我知道了</div>
		</div>
	</div>
	
	<!--错误提示框  -->
	<div class="err-div" style="display:none;">
		<div class="cont">
			<i class="weui-icon-cancel" style="color: #fff; font-size: 1.2rem;margin-bottom:0.1rem;position:absolute;top:3.8rem;font-size:0.6rem;right:0.5rem"></i>
			<div class="err-tishi">
				<p></p>
			</div>
			<div class="confirm1">确定</div>
		</div>
	</div>
	
	<!-- 确定支付 -->
	<div class="zhezhao" style="display:none;">
		<div class="cont">
			<div class="zhezhao-tishi">
				<p>亲，您需要支付0.1-1元体验金支付金额将及时退回至支付账户</p>
			</div>
			<div class="button">
				<div class="cancel">取消</div>
				<div class="confirm2">确定</div>
			</div>
		</div>
	</div>
	
    
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
<script>
	
	/***********************************************************加载页面信息***********************************************************/
 	var buyerId = "${buyerId}";
 	var isLuckyDraw = false;//有没有抽奖,true已抽奖,false未抽奖
 	var orderNo = '';
 	$(function(){
 		getbuyerinfos();
 	});
 	function getbuyerinfos(){
 		$.ajax({
 			url:'${ctx}/gatherword/getbuyerinfos.json',
 			type:'post',
 			data:'buyerId='+encodeURIComponent(buyerId)+'&r='+Math.random(),
 			success:function(resp){
 				console.log(resp);
 				if(resp.msg!=""){
 					$(".err-tishi p").html(resp.msg);
					$(".err-div").show();
 				}else{
 					var noLuckyDraw = resp.noLuckyDraw;
 					var buyer = resp.buyer;
 					if(buyer.pm1>0) {
 						$(".pm1").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm2>0) {
 						$(".pm2").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm3>0) {
 						$(".pm3").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm4>0) {
 						$(".pm4").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm5>0) {
 						$(".pm5").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm6>0) {
 						$(".pm6").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm7>0) {
 						$(".pm7").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm8>0) {
 						$(".pm8").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm9>0) {
 						$(".pm9").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm10>0) {
 						$(".pm10").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					if(buyer.pm11>0) {
 						$(".pm11").addClass("on");
 						$(".pm_end").addClass("on");
 					}
 					$(".remainNums").html(resp.remainNums+"次");
 					if(noLuckyDraw!= ""&&noLuckyDraw=="1"&&resp.orderNo){
 						isLuckyDraw = false;
 						goluckyDraw(resp.orderNo);
 					}else{
 						isLuckyDraw = true;
 					}
 					$("#gwBtn").click(function(){
 						gwBtn();
 					});
 				}
 			}
 		});
 	}
 	/***********************************************************抽奖***********************************************************/
 	function goluckyDraw(orderNo){
 		var loading = weui.loading('正在加载...');	//loading
		$.ajax({
			url:'${ctx}/gatherwordaward/newyearaward.json',
			type:'post',
			data:'buyerId='+encodeURIComponent(buyerId)+'&orderNo='+orderNo+'&r='+Math.random(),
			success:function(resp){
				loading.hide();
				if(resp.sta&&resp.sta!=""){
					//不做处理.
					return;
				}else if(resp.msg!=""){
					$(".err-tishi p").html(resp.msg);
					$(".err-div").show();
				}else{
					if(resp.award.indexOf("谢谢参与") != -1){
						$(".award_p").html(resp.award);
						$(".pull-up").show();
					}else{
						$(".award").html(resp.award);
						$(".pull-up").show();
					}
				}
			}
		});
 	}
 	//抽完奖之后，重新加载
 	$(".again").click(function(){
 		getbuyerinfos();
 	});
	/***********************************************************去集字***********************************************************/
	function gwBtn(){
		//校验用户体力值及参与次数
		if(isLuckyDraw){
			$.ajax({
				url:'${ctx}/gatherword/cucgw.json',
				type:'post',
				data:'buyerId='+encodeURIComponent(buyerId)+'&r='+Math.random(),
				success:function(resp){
					if(resp.msg!=""){
						$(".err-tishi p").html(resp.msg);
						$(".err-div").show();
					}else{
						$(".zhezhao").show();
					}
				},
				error : function(er) {
					loading.hide();
					console.log(er);
				}
			});
		}
	}
	
	$(".cancel").click(function(){
		$(".zhezhao").hide();
	});
	
	$(".confirm2").click(function(){
		goBuy();
	});
	
	/***********************************************************去支付***********************************************************/
	var oos = "";
	//进行支付
	function goBuy() {
		var loading = weui.loading('正在加载...'); //loading
		$.ajax({
			type : "POST",
			url : "${ctx}/gatherword/goBuy.json",
			data : "buyerId=" + encodeURIComponent(buyerId)+"&r="+Math.random(),
			success : function(resp) {
				loading.hide();
				if (resp.msg != ""){
					$(".err-tishi p").html(resp.msg);
					$(".err-div").show();
				}else if (resp.payUrl) {
					oos = resp.payUrl;
					MBS_DIRECT_PAY();
				}
			},
			error : function(er) {
				loading.hide();
				console.log(er);
			}
		});
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
	
	/***********************************************************用户注册***********************************************************/
	function checkLength(obj, n) {
		//obj.value = obj.value.replace(/\D/g,'')
		if (obj.value.length > n) {
			obj.value = obj.value.substr(0, n);
		}
	}
	
	$("#c-login-close").on("click",function(){
		$("#iosDialog1").hide();
	});
	$(".pull-up i , .confirm1").on("click",function(){
		$(".pull-up").hide();
	});
	$(".err-div i , .err-div .confirm1").on("click",function(){
		$(".err-div").hide();
	});
	
	function dialogbtn(){
		register();
	}

	/*验证手机号*/
	function checkPhone(num) {
		var phone = parseInt(num);
		var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
		if (!reg.test(phone)) {
			$(".tishi p").html("请输入正确的手机号");
			$(".pull-up").show();
			$("#phone").val("");
			return false;
		}
		return true;
	}
	
	/*验证手机号*/
	$(document).on("input propertychange", "#phone", function(e) {
		if (e.type === "input" || e.orignalEvent.propertyName === "value") {
			this.value = this.value.replace(/\D/gi, "");
			if (this.value.length == 11) {
				var phone = parseInt(this.value);
				var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
				if (reg.test(phone)) {
					$('#bpcodebtn').attr("disabled", false);
					$("#bpcodebtn").addClass("c-c-b");
				}
			} else {
				$('#bpcodebtn').attr("disabled", true);
				$("#bpcodebtn").removeClass("c-c-b");
			}
		}
	});
	getCode(); 
	//发送短信
	var bClick = false;
	var timer;
	function getCode() {
		/*验证码倒计时*/
		var oBtn = document.getElementById("bpcodebtn");
		oBtn.onclick = function() {
			if (bClick == false && checkPhone($("#phone").val())) {
				$('#phone').attr("disabled", true);
				bClick = true;
				$.ajax({
					type : "GET",
					url : "${ctx}/bytaskgetphonecharge/dgsendcode.json",
					data : "phone="+$('#phone').val()+
						   "&bid="+localStorage.getItem("bid")+
						   "&r="+ Math.random(),
					success : function(resp) {
						if (resp.errMsg != "") {
							console.log(resp.errMsg);
							$(".err-tishi p").html(resp.errMsg);
							$(".err-div").show();
							$("#iosDialog1").hide();
						}else {
							$("#bpcodebtn").removeClass("c-c-b");
							var s = 60;
							timer = setInterval(function() {
								s--;
								oBtn.innerHTML = s + "秒后重发";

								if (s == 0) {
									initTimer();
								}
							}, 1000);
						}
					},
					error : function(er) {
						$('#phone').attr("disabled", false);
						console.log(er);
					}
				});
			}
		};
	}

	function initTimer() {
		bClick = false;
		$('#phone').attr("disabled", false);
		clearInterval(timer);
		$('#bpcodebtn').html("获取验证码").addClass("c-c-b");
	}
	/**绑定手机**/
	function register() {
		var phone = $('#phone').val();
		var ccode = $('#ccode').val();
		if (!checkPhone(phone))
			return;
		if (!ccode) {
			$(".tishi p").html("请输入验证码");
			$(".pull-up").show();
		}else{
			$(".err-tishi p").html(resp.errMsg);
			$(".err-div").show();
			$("#iosDialog1").hide();
		}
	}
	function goHome(){
		window.location.href = "${ctx}/tjhui/tjhuiindex.do";
	}
	
</script>
</body>
</html>
