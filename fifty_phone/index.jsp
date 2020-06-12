<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>暖冬优惠购</title>
    <!-- <link rel="stylesheet" href="assets/css/amazeui.min.css"> -->
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
    <style type="text/css">
    *{padding:0;margin:0;list-style:none;}
    html,body{width:100%;height:100%;}
	.titleBar-back .fa {font-size: 16px;color: #fff;vertical-align: baseline;margin-right: 5px;}
	.titleBar-back {color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height: 44px;line-height: 44px;padding-left: .4rem;position: absolute;left: 0;top: 0;bottom: 44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;}
	.titleBar {z-index: 990;position: fixed;top: 0;left: 0;width: 100%;height: 44px;background-color: #09b6f2;padding-left: 3rem;padding-right: 3rem;box-sizing: border-box;}
	.titleBar-back {color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height: 44px;line-height: 44px;padding-left: .6rem;position: absolute;left: 0;top: 0;bottom: 44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display:felx;align-items:center;}
	.titleBar-back img{width:0.3rem;}
	.titleBar-text{height: 44px;line-height: 44px;vertical-align: middle;color: #fff;font-size: 16px;text-align: center;}
	#box .content{width:100%;height:36.5rem;background: url(${stax}/assets/images/fifty_phone/background-01.jpg) no-repeat;background-size:100% 100%;margin-top:44px;background-color:#F75E60;position:relative;}
    #box .content .cBtn{width:12.8rem;height:1.8rem;background: url(${stax}/assets/images/fifty_phone/button-1.png) no-repeat;background-size:100% 100%;text-align:center;position:absolute;top:16.2rem;font-size:0.8rem;color:#fff;line-height:1.8rem;left:1.6rem;}
    #box .content .rule{width:14.08rem;height:14.46rem;background:#FEE7E7;position:absolute;top:19.5rem;font-size:0.46rem;color:#F55356;left:1rem;border-radius:1.4rem;overflow:hidden;}
	#box .content .ruleContent{width:90%;height:80%;padding:2% 5%;overflow:auto;}
	
	/* 继续支付样式  */
	.content2{width:100%;height:40.75rem;background: url(${stax}/assets/images/fifty_phone/background-02.jpg) no-repeat;background-size:100% 100%;margin-top:44px;background-color:#F75E60;position:relative;}
    .content2 .cBtn{width:12.8rem;height:1.8rem;background: url(${stax}/assets/images/fifty_phone/button-1.png) no-repeat;background-size:100% 100%;text-align:center;position:absolute;top:21.5rem;font-size:0.8rem;color:#fff;line-height:1.8rem;left:1.6rem;}
	.content2 .times{width:14.08rem;background:#FEC2C0;height:5.4rem;position:absolute;top:14.5rem;left:0.96rem;border-radius:0.2rem;}
	.content2 .times ul{width:100%;display:flex;align-items:center;justify-content:center;margin-top:8%;margin-bottom:4%;}
	.content2 .times .dot{width:0.768rem;height:0.768rem;background:linear-gradient(#726D6C, #C9BFBF);border-radius:0.768rem;border:0.15rem solid #fff;text-align:center;line-height:0.768rem;font-weight:600;font-size:0.56rem;color:#fff;}
	.content2 .times .wire{width:1.5rem;height:0.2rem;background:#fff;border-radius:0.768rem;}
	.content2 .times p{text-align:center;font-size:0.56rem;}
	.content2 .times span{color:red;}
	.content2 .rule{width:14.08rem;height:14.46rem;background:#FEE7E7;position:absolute;top:25rem;font-size:0.46rem;color:#F55356;left:1rem;border-radius:1.4rem;overflow:hidden;}
	.content2 .ruleContent{width:90%;height:80%;padding:2% 5%;overflow:auto;}
	.on{background:linear-gradient(#FE554C, #FD827E) !important;}
	
	/* 支付成功样式  */
	.content3{width:100%;height:40.75rem;background: url(${stax}/assets/images/fifty_phone/background-02.jpg) no-repeat;background-size:100% 100%;margin-top:44px;background-color:#F75E60;position:relative;}
    .content3 .cBtn{width:12.8rem;height:1.8rem;background: url(${stax}/assets/images/fifty_phone/button-2.png) no-repeat;background-size:100% 100%;text-align:center;position:absolute;top:21.5rem;font-size:0.76rem;color:#fff;line-height:1.8rem;left:1.6rem;}
	.content3 .times{width:14.08rem;background:#FEC2C0;height:5.4rem;position:absolute;top:14.5rem;left:0.96rem;border-radius:0.2rem;}
	.content3 .times ul{width:100%;display:flex;align-items:center;justify-content:center;margin-top:7%;margin-bottom:3%;}
	.content3 .times .dot{width:0.768rem;height:0.768rem;background:linear-gradient(#FE554C, #FD827E);border-radius:0.768rem;border:0.15rem solid #fff;text-align:center;line-height:0.768rem;font-weight:600;font-size:0.56rem;color:#fff;}
	.content3 .times .wire{width:1.5rem;height:0.2rem;background:#fff;border-radius:0.768rem;}
	.content3 .times p{text-align:center;font-size:0.56rem;}
	.content3 .times span{color:red;}
	.content3 .rule{width:14.08rem;height:14.46rem;background:#FEE7E7;position:absolute;top:25rem;font-size:0.46rem;color:#F55356;left:1rem;border-radius:1.4rem;overflow:hidden;}
	.content3 .ruleContent{width:90%;height:80%;padding:2% 5%;overflow:auto;}
	
	/* 登录框样式 */
	
	.bindPhone, .bgblack{width:100%;height:100%;position:fixed;background:rgba(0,0,0,0.5);top:0;left:0;}
	.bindPhone p{text-align:center;color:#D83B3D;padding-top:2%;}
	.bindPhone input{margin-top:5%;border-radius:0.1rem;}
	.alert-body{width:14.08rem;background:#fff;height:9rem;border-radius:0.2rem;margin:auto;margin-top:65%;padding：1rem;}
	.bpInput{width:80%;display:flex;align-items:center;justify-content:center;margin:auto;}
	#phone{background: url(${stax}/assets/images/fifty_phone/tel.png) no-repeat 2% 50%;background-size:0.6rem;padding-left:1rem;}
	.bpInput input{width:100%;height:1.4rem;border:1px solid #BFBFBF;}
	.bpCodeIpt{width:80%;display:flex;align-items:center;justify-content:space-between;margin:auto;}
	#testcode{width:65%;height:1.4rem;border:1px solid #BFBFBF;background: url(${stax}/assets/images/fifty_phone/password.png) no-repeat 3% 50%;background-size:0.8rem;padding-left:1.1rem;}
	#bpcodebtn{width:32%;height:1.4rem;border:0;background:#AAAAAA;color:#fff;}
	.am-btn{width:4.6rem;padding:3% 0;border:0;background:#D83B3D;color:#fff;border-radius:0.1rem;}
	.btnpos{width:100%;text-align:center;margin-top:5%;}
	.c-close-a{position: absolute;top:9.2rem;right: 1rem;background:url(${stax}/assets/images/close.png);width: 1rem;height: 1rem;background-size:contain;z-index: 999;}
    .bgblack p{font-size:0.8rem;text-align:center;}
    .bgblack .btnpos{width:100%;text-align:center;margin-top:-4%;} 
    </style>
</head>
<body>
<!-- 首页 -->
    <div id="box">
	    <div class="titleBar" >
		     <div class="titleBar-back" onclick="toHome()">
		         <img src="${stax}/assets/images/history.png" />&nbsp;返回
		     </div>
			<div class="titleBar-text am-text-truncate">首页</div>
		</div>
	    
	    <div class="content">
			<div class="cBtn">参与活动</div>
			<div class="rule">
				<p style="font-size:0.66rem;margin-top:0.3rem;font-weight:bold;text-align:center;">活动规则</p>
				<div class="ruleContent">
					温馨提示：携号转网手机号可能存在无法正常充值的情况，给您造成的不便请您谅解。<br>
					1.本活动仅限建行天津特邀用户参加，活动截止日期：2018.12.28 23:59:59<br>
					2.参与活动请使用手机银行签约号码进行登录验证；<br>
					3.本活动提供移动、联通、电信手机号段的快速充值；<br>
					4.根据活动提示完成指定支付交易后，系统自动提交充值申请完成充值，话费即时到账；<br>
					5.参与活动过程中，如提示：“您本期活动参与次数已用完”，请确认您的支付成功次数后，稍后几分钟再过来继续支付即可；<br>
					6.月初或月末充值量较大，话费到账时间可能会出现延迟，请耐心等待；<br>
					7.请仔细核对充值手机号码，交易无法取消或修改，已充值话费无法退回或转存其他号码；<br>
					8.本活动解释权归建行天津分行所有；<br>
					9.如有疑问请咨询客户服务热线400-810-9200。<br>
				</div>
			</div>
	    </div>
    </div>
    
<!-- 继续支付 -->
	<div id="continue" style="display:none;">
		<div class="titleBar">
		     <div class="titleBar-back" onclick="toHome()">
		         <img src="${stax}/assets/images/history.png" />&nbsp;返回
		     </div>
			<div class="titleBar-text am-text-truncate">暖冬优惠购</div>
		</div>
		<div class="content2">
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
				<p class="tel">充值号码：${userphone}</p>
				<p>还差<span class="buytime">3笔</span>，就差<span class="buytime">3笔</span>，<span>您的50元话费</span>还在等您</p>
			</div>
			<div class="cBtn">继续支付</div>
			<div class="rule">
				<p style="font-size:0.66rem;margin-top:0.3rem;font-weight:bold;text-align:center;">活动规则</p>
				<div class="ruleContent">
					温馨提示：携号转网手机号可能存在无法正常充值的情况，给您造成的不便请您谅解。<br>
					1.本活动仅限建行天津特邀用户参加，活动截止日期：2018.12.28 23:59:59<br>
					2.参与活动请使用手机银行签约号码进行登录验证；<br>
					3.本活动提供移动、联通、电信手机号段的快速充值；<br>
					4.根据活动提示完成指定支付交易后，系统自动提交充值申请完成充值，话费即时到账；<br>
					5.参与活动过程中，如提示：“您本期活动参与次数已用完”，请确认您的支付成功次数后，稍后几分钟再过来继续支付即可；<br>
					6.月初或月末充值量较大，话费到账时间可能会出现延迟，请耐心等待；<br>
					7.请仔细核对充值手机号码，交易无法取消或修改，已充值话费无法退回或转存其他号码；<br>
					8.本活动解释权归建行天津分行所有；<br>
					9.如有疑问请咨询客户服务热线400-810-9200。<br>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 充值成功 -->
	
	<div id="topUp" style="display:none;">
		<div class="titleBar">
		     <div class="titleBar-back" onclick="toHome()">
		         <img src="${stax}/assets/images/history.png" />&nbsp;返回
		     </div>
			<div class="titleBar-text am-text-truncate">暖冬优惠购</div>
		</div>
		<div class="content3">
			<div class="times">
				<ul>
					<li class="dot">0</li>
					<li class="wire"></li>
					<li class="dot">1</li>
					<li class="wire"></li>
					<li class="dot">2</li>
					<li class="wire"></li>
					<li class="dot">3</li>
					<li class="wire"></li>
					<li class="dot">4</li>
				</ul>
				<p class="tel">充值号码：${userphone}</p>
				<p>恭喜您，已完成4笔支付<span>已获得50元话费</span><br>已充值成功，敬请关注其他精彩活动</p>
			</div>
			<div class="cBtn">已充值成功，敬请关注其他精彩活动</div>
			<div class="rule">
				<p style="font-size:0.66rem;margin-top:0.3rem;font-weight:bold;text-align:center;">活动规则</p>
				<div class="ruleContent">
					温馨提示：携号转网手机号可能存在无法正常充值的情况，给您造成的不便请您谅解。<br>
					1.本活动仅限建行天津特邀用户参加，活动截止日期：2018.12.28 23:59:59<br>
					2.参与活动请使用手机银行签约号码进行登录验证；<br>
					3.本活动提供移动、联通、电信手机号段的快速充值；<br>
					4.根据活动提示完成指定支付交易后，系统自动提交充值申请完成充值，话费即时到账，且已支付的金额不退；<br>
					5.参与活动过程中，如提示：“您本期活动参与次数已用完”，请确认您的支付成功次数是否达到4次，如未达到，5分钟后重新点击“继续支付”即可；<br>
					6.月初或月末充值量较大，话费到账时间可能会出现延迟，请耐心等待；<br>
					7.请仔细核对充值手机号码，交易无法取消或修改，已充值话费无法退回或转存其他号码；<br>
					8.本活动解释权归建行天津分行所有；<br>
					9.如有疑问请咨询客户服务热线400-810-9200。<br>
				</div>
			</div>
		</div>
	</div>	
	

    
    <!-- 其他提示框 -->
    <div class="bgblack" style="display:none;">
   		<div class="weui-dialog weui-animate-fade-in">  
			<div class="weui-dialog__bd">亲，您确认要支付0.1元参与本活动吗？</div> 
			<div class="weui-dialog__ft">
			<a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary">确定</a>  
			</div> 
		</div>
    </div>
		
		
		
		
    <!--在这里编写你的代码-->

    <script src="${stax}/assets/js/jquery.min.js"></script>
    <script src="${stax}/assets/js/utils.js"></script>
    <script src="${stax}/assets/js/index.js"></script>
    <script src="${stax}/assets/js/weui.min.js"></script>

    <script type="text/javascript">
        var buytimes = "${buytimes}";//购买成功几笔
        var userphone = "${userphone}";
        var userId = localStorage.getItem("userId");
    	var bankId = localStorage.getItem("bankId");
    	var detailId = "${detailId}";
    	var pid ="${pid}";
    	var rmoney = "${rmoney}";
    	var successtime = "${successtime}";//订单有几笔
        $(function(){
       		if(buytimes == 0){
           		$(" #box").show();//参与活动
           		$("#continue").hide();//继续支付
           		$("#topUp").hide();//充值成功
           	}else if(buytimes > 0 && buytimes < 4){
           		$(" #box").hide();//参与活动
           		$("#continue").show();//继续支付
           		$("#topUp").hide();//充值成功
           		buytime();
           	}else if(buytimes == 4){
           		$("#box").hide();//参与活动
           		$("#continue").hide();//继续支付
           		$("#topUp").show();//充值成功
           	}
        });
    	
/***********************************************************参与活动***********************************************************/
    	
    	$("#box .cBtn").bind("click",function(){
    		$.ajax({
    			url:'${ctx}/huituan/findusertimes.json',
    			type:'get',
    			data:'uid='+encodeURIComponent(userId)+"&did="+detailId,
    			success:function(resp){
    				if(resp.msg){
    					weui.alert(resp.msg);
    				}else{
        				successtime = resp.successtime;
        				if(successtime == 4){
        	    			weui.alert("亲，您本期活动参与次数已用完!");
        	    		}else{
        	   				weui.confirm("亲，您确认要支付0.1元参与本活动吗？",function(){
        	   					pay()
        	   				},function(){
        	   					console.log("点击取消");
        	   				}
        	   					
        	   				);
        	    		}
    				}
    			}
    		});
    	});
    	
/***********************************************************继续去支付***********************************************************/
    	
    	//格式化用户剩余购买次数
    	function buytime(){
    		var time = 4-buytimes;
    		buytimes = parseInt(buytimes)+1;
    		$(".buytime").html(time+"次");
    		$(".dot:lt("+buytimes+")").addClass("on");
    	}
    	
    	$("#continue .cBtn").bind("click",function(){
    		$.ajax({
    			url:'${ctx}/huituan/findusertimes.json',
    			type:'get',
    			data:'uid='+encodeURIComponent(userId)+"&did="+detailId,
    			success:function(resp){
    				if(resp.msg){
    					weui.alert(resp.msg);
    				}else{
        				successtime = resp.successtime;
        				if(successtime == 4){
        	    			weui.alert("亲，您本期活动参与次数已用完!");
        	    		}else{
        	   				weui.confirm("亲，您确认要支付0.1元参与本活动吗？",
        	   					function(){	
        	   	   					pay();
        	   					}
        	   				);
        	    		}
    				}
    			}
    		});
    	});
      
/***********************************************************充值成功***********************************************************/
        
        
        
        
        
/***************************************************************************************************************************/
        
    	/**返回到支行活动页面**/
     	function toHome(){
     		var loading = weui.loading('正在加载...');	//loading
     		window.location.href = "${ctx}/huituan/index.do";
     	}
    	
     	var oos = "";
    	/**支付**/
        function pay(){
        	$.ajax({
    			type: "POST",
    			url: "${ctx}/huituan/buy.json",
    			data:"detailId="+detailId+"&pid="+pid+"&userId="+encodeURIComponent(userId)+"&bankId="+encodeURIComponent(bankId)+"&payMoney="+rmoney+"&bflag=1"+"&type=1"+"&r="+Math.random(),
   				success: function(resp){
	   				if(resp.errMsg){
	   					//weui.alert(resp.errMsg)
	   					$(".bgblack .weui-dialog__bd").text(resp.errMsg)
	   					$(".bgblack").show()
	   				}else if(resp.payUrl){
	   					oos = resp.payUrl;
// 	   					MBC_PAY();		
	   					MBS_DIRECT_PAY();
	   				}
    			},
    			error:function(er){
    				loading.hide();
    				console.log(er);
    			}
        	});
        }
    	
    	 $(".bgblack a").click(function(){
    		$(".bgblack").hide();
    	})
    	
        /***建行付款**/
//     	function MBC_PAY(){
//      		if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
//      			//苹果端
//      			window.location="/mbcpay.b2c";
//      		} else if (/(Android)/i.test(navigator.userAgent)) {
//     		    //安卓端
//      			window.mbcpay.b2c(oos);
//      		} else {
//     		   //pc端
//      		   alert('请到app上购买！');
//      		}; 
//     	}
//     	var oos = "";
//     	function MBC_PAYINFO(){
//     		  return "{" + oos + "}";
//     	}
    
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
 
    
    </script>
</body>
</html>