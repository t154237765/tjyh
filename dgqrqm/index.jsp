<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>代工千人千面</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${ctx}/assets/css/weui.min.css" />
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
        	background:url(${ctx}/assets/images/dgqrqm.jpg) no-repeat 100% 100%;
        	background-size:100% 100%;
        	height:19.79rem;
        	position:relative;
        }
        .titleBar{width:90%;padding:0% 5%;height:0.88rem;z-index:11;font-size:0.3rem;color:#fff;display:flex;align-items:center;text-align:center;background:#08B6F2;position:fixed;top:0;}
        .titleBar-back{display:flex;align-items:center;width:25%;}
        .titleBar-text{width:100%;text-align:center;font-size:0.36rem;}
        .titleBar-back img{width:0.16rem;}
        .task{width:65%;margin:auto;background:#0D5ACD;font-size:0.3rem;position:absolute;top:3rem;left:0;right:0;text-align:center;color:#fff;padding:1% 0%;}
		.activeStart{background:#FCCA4C;width:80%;height:0.8rem;line-height:0.8rem;font-size:0.36rem;color:#fff;position:absolute;top:9rem;left:0;right:0;text-align:center;margin:auto;border-radius:0.1rem;font-weight:bold;}   
		.activeRule{width:86%;height:6.8rem;position:absolute;top:10.5rem;background:#E9F6FE;border-radius:0.5rem;margin:auto;left:0;right:0;padding:0% 2%;overflow:auto;padding-bottom:2%;}
		.title{text-align:center;font-size:0.36rem;color:#266CD0;font-weight:bold;margin-top:0.36rem;margin-bottom:0.1rem;}
		.activeRule div{font-size:0.3rem;}
		.activeRule::-webkit-scrollbar{
		    display: none;
		}
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
		
		
		/*登陆弹出框*/
.weui-dialog .weui-dialog__btn_primary {
	background: #1abfff;
	width: 5rem;
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
	border: 1px solid #0066b3;
	color: #0066b3;
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
	background: #0066b3;
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
/* 弹出框美化 */
.weui-skin_android .weui-dialog__bd:first-child{text-align: center;}
.weui-skin_android .weui-dialog__ft{text-align: center;padding: 0 1.8em .7em 1.4em;}
.weui-skin_android .weui-dialog__btn:last-child{line-height: 1.5rem;width: 4rem;height: 1.5rem;}
.c-panel-image{margin:0 auto;}

		.pull-up , .zhezhao , .err-div{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.4);z-index:33333;}
		.pull-up .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;padding-bottom:0.6rem;}
		.zhezhao .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;}
		.err-div .cont{width:80%;background:#fff;margin:auto;margin-top:4.4rem;border-radius:0.2rem;padding-bottom:0.5rem;}
		.pull-up .tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.zhezhao .zhezhao-tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.err-div .err-tishi{font-size:0.36rem;width:90%;text-align:center;padding:0% 5%;}
		.tishi p{padding:16% 0%;}
		.err-tishi p{padding:16% 0%;}
		.zhezhao-tishi p{padding:16% 0%;}
		.confirm1{width:3rem;height:0.8rem;line-height:0.8rem;border-radius:0.5rem;text-align:center;font-size:0.36rem;border:1px solid #0066b3;color:#0066b3;margin:auto;}
		.button{display:flex;align-items:center;justify-content:space-around;text-align:center;}
		.confirm2 , .cancel{font-size:0.36rem;width:50%;padding:5% 0%;border-top:1px solid #ccc;}
		.confirm2{border-left:1px solid #ccc;color:green;}
</style>
</head>
<body>
    <div class="box">
    	<div class="titleBar" >
		     <%-- <div class="titleBar-back" onclick="toHome()">
		         <img src="${stax}/assets/images/history.png" />&nbsp;返回
		     </div> --%>
			<div class="titleBar-text am-text-truncate">首页</div>
		</div>
		<div class="task">
			<p>支付得话费，20元话费等您来领！</p>
		</div>
		<div class="activeStart">
			<p>参与活动</p>
		</div>
		
		<!-- 支付次数 -->
		<div class="payTime" style="display:none;">
			<div class="times">
				<ul>
					<li class="dot on">0</li>
					<li class="wire"></li>
					<li class="dot">1</li>
					<li class="wire"></li>
					<li class="dot">2</li>
					<li class="wire"></li>
					<li class="dot">3</li>
					<li class="wire"></li>
					<li class="dot">4</li>
				</ul>
				<p class="tel">充值号码：<span class="chargePhone"></span></p>
				<p>还差<span class="buytime">3笔</span>，就差<span class="buytime">3笔</span>，<span>您的20元话费</span>还在等您</p>
			</div>
			<div class="cBtn">继续支付</div>
		</div>
		
		<!--支付完成  -->
		<div class="paySuccess" style="display:none;">
			<div class="times">
				<ul>
					<li class="dot on">0</li>
					<li class="wire"></li>
					<li class="dot on">1</li>
					<li class="wire"></li>
					<li class="dot on">2</li>
					<li class="wire"></li>
					<li class="dot on">3</li>
					<li class="wire"></li>
					<li class="dot on">4</li>
				</ul>
				<p class="tel">充值号码：<span class="chargePhone"></span></p>
				
				<p>恭喜您，已完成<span style="color:red;">4笔</span>支付已获得<span style="color:red;">20元</span>话费<br>已充值成功，敬请关注其他精彩活动</p>
			</div>
			<div class="successBtn">已成功充值，敬请关注其他精彩活动</div>
		</div>
		
		<div class="activeRule">
			<p class="title">活动规则</p>
			<div>
				<p style="color:red;">温馨提示：携号转网手机号可能存在无法正常充值的情况，给您造成的不便请您谅解</p>
				<p>活动规则：</p>
				<p>1.本活动仅限建行天津特邀用户参加，活动时间：2019年1月-2019年3月； </p>
				<p>2.根据活动提示完成指定支付任务后，即可领取20元话费，话费即时到账，且已支付的金额不退；</p>
				<p>3.注册天津惠当天，最多可以完成支付任务2次；</p>
				<p>4.参与活动过程中，如提示：<span style="color:red;">“您本期活动参与次数已用完”，请确认您的支付成功次数是否达到4次，如未达到，5分钟后重新点击“继续支付”，继续完成支付任务即可</span>；</p>
				<p>5.本活动提供移动、联通、电信手机号段的快速充值； </p>
				<p>6.月初或月末充值量较大，话费到账时间可能会出现延迟，请耐心等待；  </p>
				<p>7.本活动解释权归建行天津分行所有，如有疑问请咨询客户服务热线400-810-9200。</p>
			</div>
		</div>
    </div>
    
    
    <div class="js_dialog" id="iosDialog1"
		style="opacity: 1; display: none;">
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
				<p>该手机号已绑定其他建行账户</p>
			</div>
			<div class="confirm1">确定</div>
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
				<p>亲，您确认要支付0.01元参与本活动吗？</p>
			</div>
			<div class="button">
				<div class="cancel">取消</div>
				<div class="confirm2">确定</div>
			</div>
		</div>
	</div>
	
    
<script src="${ctx}/assets/js/jquery.min.js"></script>
<script src="${ctx}/assets/js/weui.min.js"></script>
<script src="${ctx}/assets/js/rem.js"></script>
<script>
	var did = "${did}";
	var bid = "${bid}";
	var pid = "${pid}";
	var rmoney = "${rmoney}";
	var bankid = "${bankid}";
	var userId = "${userId}";
	var ihs = "${ihs}";
	var dg = "${dg}";
	
	if(did){
		localStorage.setItem("did", did);
	}
	if(pid){
		localStorage.setItem("pid", pid);
	}
	if(bid){
		localStorage.setItem("bid", bid);
	}
	if(bankid){
		localStorage.setItem("bankId", bankid);
	}
	if(ihs&&ihs!=""){
		localStorage.setItem("userId", userId);
	}
	
	$(function(){
		$(".err-div").hide();
		findUserTimes();
	});
	
	$(".cancel").click(function(){
		$(".zhezhao").hide();
	});
	$(".confirm2").click(function(){
		$(".zhezhao").hide();
		pay();
	});
	/***********************************************************查询用户的购买信息***********************************************************/	
	function findUserTimes(){
		if(ihs&&ihs!=""){
			$.ajax({
				url:'${ctx}/bytaskgetphonecharge/finduserbuyinfos.json',
				type:'post',
				data:'uid='+encodeURIComponent(localStorage.getItem("userId"))+
					 '&did='+localStorage.getItem("did")+
					 '&pid='+localStorage.getItem("pid")+'&r='+Math.random(),
				success:function(resp){
					if(resp.errMsg != ""){
						$(".err-tishi p").html(resp.errMsg);
						$(".err-div").show();
					}else{
						if(resp.successtime == 0){
			           		$(".activeStart").show();//参与活动
			           		$(".payTime").hide();//继续支付
			           		$(".paySuccess").hide();//充值成功
			           	}else if(resp.successtime > 0 && resp.successtime < 4){
			           		$(".activeStart").hide();//参与活动
			           		$(".payTime").show();//继续支付
			           		$(".activeRule").css("top","12.5rem");
			           		$(".paySuccess").hide();//充值成功
			           		$(".task").html("任务：支付<span style='color:#FBDC03;'>4</span>笔，每笔只要<span style='color:#FBDC03;'>1</span>分钱。");
			           		buytime(resp.successtime);
			           	}else if(resp.successtime == 4){
			           		$(".activeStart").hide();//参与活动
			           		$(".payTime").hide();//继续支付
			           		$(".activeRule").css("top","12.5rem");
			           		$(".paySuccess").show();//充值成功
			           		$(".task").html("任务：支付<span style='color:#FBDC03;'>4</span>笔，每笔只要<span style='color:#FBDC03;'>1</span>分钱。");
			           	}
					}
					
				}
			});
		}
	}
	
	/***********************************************************参与活动***********************************************************/
	//点击参与按钮。判断用户存不存在，不存在则弹出注册框。
	$(".activeStart").click(function(){
		$.ajax({
			url:'${ctx}/bytaskgetphonecharge/checkuser.json',
			type:'post',
			data:'bid='+localStorage.getItem("bid")+'&r='+Math.random(),
			success:function(resp){
				if(resp.ih&&resp.ih!=""){
					$(".chargePhone").html(resp.userphone);
					checkusercanstillbuy();
				}else{
					$("#iosDialog1").show();
				}
			}
		});
	});
	function checkusercanstillbuy(){
		$.ajax({
			url:'${ctx}/bytaskgetphonecharge/checkusercanstillbuy.json',
			type:'post',
			data:'uid='+encodeURIComponent(localStorage.getItem("userId"))+
				 '&did='+localStorage.getItem("did")+
				 '&pid='+localStorage.getItem("pid")+'&r='+Math.random(),
			success:function(resp){
				if(resp.errMsg != ""){
					$(".err-tishi p").html(resp.errMsg);
					$(".err-div").show();
				}else{
					$(".zhezhao").show();
				}
			}
		});
	}
	/***********************************************************继续去支付***********************************************************/
	//格式化用户剩余购买次数
   	function buytime(successtime){
   		var time = 4-successtime;
   		successtime = parseInt(successtime)+1;
   		$(".buytime").html(time+"笔");
   		$(".dot:lt("+successtime+")").addClass("on");
   	}
	$(".cBtn").click(function(){
		checkusercanstillbuy();
	});
	
	
	/***********************************************************支付***********************************************************/
    function pay(){
    	$.ajax({
			type: "POST",
			url: "${ctx}/huituan/buy.json",
			data:"detailId="+localStorage.getItem("did")+"&pid="+localStorage.getItem("pid")+
				 "&userId="+encodeURIComponent(localStorage.getItem("userId"))+
				 "&bankId="+encodeURIComponent(localStorage.getItem("bankId"))+
				 "&payMoney="+rmoney+"&bflag=1"+"&dg="+encodeURIComponent(dg)+"&r="+Math.random(),
				success: function(resp){
   				if(resp.errMsg){
   					$(".err-tishi p").html(resp.errMsg);
					$(".err-div").show();
   				}else if(resp.payUrl){
   					oos = resp.payUrl;
   					MBC_PAY();						
   				}
			},
			error:function(er){
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
			$.ajax({
				type : "GET",
				url : "${ctx}/bytaskgetphonecharge/checkcode.json",
				data : "phone="+phone+"&code="+ccode +"&bid="+localStorage.getItem("bid")+"&r=" + Math.random(),
				success : function(resp) {
					if (resp.errMsg != "") {
						$(".err-tishi p").html(resp.errMsg);
						$(".err-div").show();
						$("#iosDialog1").hide();
					}
					if (resp.uid) {
						localStorage.setItem("userId", resp.uid);
					}
				},
				error : function(er) {
					console.log(er);
				}
			});
		}
	}
	
</script>
</body>
</html>