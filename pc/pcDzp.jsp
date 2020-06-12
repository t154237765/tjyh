<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    
    <title>大转盘</title>
    <link rel="stylesheet" href="${stax}/assets/css/pcDzp/index.css?v=369">
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
    <style type="text/css">
/*           #box{width:1920px;height:919px;padding-top:250px;background:url(${stax}/assets/images/pcDzp/introjyb.jpg) no-repeat 100% 100%;background-size:100% 100%;}
 */          
    	  .exchangeCont ul li:nth-child(1){background:url(${stax}/assets/images/pcDzp/charge-1.png) no-repeat 100% 100%;background-size:100% 100%;}
    	  .exchangeCont ul li:nth-child(2){background:url(${stax}/assets/images/pcDzp/charge-2.png) no-repeat 100% 100%;background-size:100% 100%;}
    	  .exchangeCont ul li:nth-child(3){background:url(${stax}/assets/images/pcDzp/charge-3.png) no-repeat 100% 100%;background-size:100% 100%;}
  		  .weui-dialog__btn_primary{color:#3177F3;}
  		  .weui-toast{width:12em;height:10em;left:0;right:0;margin:auto;top:300px;}
  		  @font-face{font-family:FZPWJT;src:url(${stax}/assets/fonts/FZPWJW.TTF);}
  		  @font-face{font-family:FZHTJT;src:url(${stax}/assets/fonts/FZHTJW.TTF);}
  		  @media(min-width: 1920px){
           	 #box{width:100%;height:919px;padding-top:250px;background:url(${stax}/assets/images/pcDzp/introjyb.jpg) no-repeat 100% 100%;background-size:100% 100%;}
  		   	.wheel{width:546px;height:546px;background:url(${stax}/assets/images/pcDzp/flor.png) no-repeat 100% 100%;background-size:100% 100%;}
  		   	.exchangeCont ul li{width:350px;height:138px;}
  		  }
  		  @media (min-width: 1681px) and (max-width: 1920px){
  		  	#box{width:100%;height:919px;padding-top:250px;background:url(${stax}/assets/images/pcDzp/introjyb.jpg) no-repeat 100% 100%;background-size:100% 100%;}
  		   	.wheel{width:546px;height:546px;background:url(${stax}/assets/images/pcDzp/flor.png) no-repeat 100% 100%;background-size:100% 100%;}
  		   	.exchangeCont ul li{width:350px;height:138px;}
  		  
  		  }
  		  @media (min-width: 1367px) and (max-width: 1680px){
           	 #box{width:1680px;background:url(${stax}/assets/images/pcDzp/introjyb.jpg) no-repeat 0 0;background-size:contain;}
  		   	.wheel{width:420px;height:420px;background:url(${stax}/assets/images/pcDzp/flor.png) no-repeat 100% 100%;background-size:100% 100%;left:260px !important}
  		   	.rule{width:400px;height:335px;font-size:14px;}
  		   	.rule{margin-top:10px;left:850px;}
  		   	.prizeImg{margin-left:42%;}
  		   	.content .wheel .pointer{width:110px;}
  		   	.prizeImg img{width:90%;}
  		   	.ruleTitle{width:130px;height:42px;font-size:18px;line-height:42px;margin-top:-63px;}
  		   	.exchange{margin-top:400px;}
  		   	.exchangeCont ul li{width:252px;height:93.36px;}
  		   	.exchangeTitle{width:183.2px;height:48px;font-size:18px;line-height:48px;}
  		   	.exchangeCont{width:1000px;height:189px;margin:auto;}
  		   	.exRecord{right:150px;width:115.2px;height:37.6px;line-height:37.6px;font-size:18px;}
  		   	.exchangeCont ul p{width:80px;margin-right:10px;font-size:16px;}
  		   	.header{width:100%;height:234px;}
  		  }
  		  @media (min-width: 1025px) and (max-width : 1367px){
  		  .header{width:100%;height:180px;}
           	 #box{width:1366px;background:url(${stax}/assets/images/pcDzp/introjyb.jpg) no-repeat 0 0;background-size:contain;}
  		   	.wheel{width:360px;height:360px;background:url(${stax}/assets/images/pcDzp/flor.png) no-repeat 100% 100%;background-size:100% 100%;left:260px !important}
  		   	.rule{width:390px;height:290px;font-size:14px;}
  		   	.rule{margin-top:10px;left:750px;}
  		   	.content .wheel .pointer{width:90px;}
  		   	.prizeImg img{width:65%;margin-left:0%;}
  		   	.ruleTitle{width:130px;height:42px;font-size:18px;line-height:42px;margin-top:-63px;}
  		   	.exchange{margin-top:360px;}
  		   	.exchangeCont ul li{width:252px;height:93.36px;}
  		   	.exchangeTitle{width:183.2px;height:48px;font-size:18px;line-height:48px;}
  		   	.exchangeCont{width:935px;height:189px;margin:auto;}
  		   	.exRecord{right:150px;width:115.2px;height:37.6px;line-height:37.6px;font-size:18px;}
  		   	.exchangeCont ul p{width:80px;margin-right:10px;font-size:16px;}
  		  }
  		  @media (max-width : 1024px){
  		  .header{width:100%;height:0;}
  		  	#box{width:1024px;background:url(${stax}/assets/images/pcDzp/introjyb.jpg) no-repeat 0 0;background-size:contain;}
  		   	.content .wheel .pointer{width:71px;}
  		   	.wheel{width:288px;height:288px;background:url(${stax}/assets/images/pcDzp/flor.png) no-repeat 100% 100%;background-size:100% 100%;left:190px !important}
  		   	.content{margin-top:13%;}
  		   	.rule{width:320px;height:210px;font-size:12px;margin-top:15%;}
  		   	.prizeImg{width:60px;margin-top:14%;margin-left:46%;}
  		   	.ruleTitle{width:110px;height:38px;font-size:14px;line-height:38px;margin-top:-60px;}
  		   	.drawNum{font-size:16px;bottom:-30px;}
  		   	.exchange{margin-top:260px;width:1024px;}
  		   	.exchangeCont{width:73%;height:140px;margin:auto;}
  		   	.exchangeCont ul li{width:184.6px;height:74.688px;}
  		   	.exchangeNum{padding-top:16px;font-size:14px;}
  		   	.exRecord{width:70px;height:25px;line-height:25px;font-size:12px;right:145px;}
  		   	.exchangeTitle{width:110px;height:35px;line-height:35px;font-size:14px;top:-20px;}
  		   	.exchangeCont ul p{width:60px;margin-right:6px;font-size:12px;height:24px;line-height:24px;}
  		  }
    </style>
    <script src="${stax}/assets/js/excanvas.js"></script>
    <script src="${stax}/assets/js/html5shiv.js"></script>
    <script src="${stax}/assets/js/respond.js"></script>
</head>
<body>
    <!--在这里编写你的代码-->
    <div id="box">
   		<div class="header"></div>
    	<div class="Top">
    		<div class="content">
	            <div class="wheel">
	                <canvas class="item" id="wheelCanvas" width="422px" height="422px"></canvas>
	                <img class="pointer" src="${stax}/assets/images/pcDzp/pointer.png" />
	                <p class="drawNum">当天剩余<span class="todayTimes">${todayTimes}次</span>抽奖机会</p>
	            </div> 
	            
	        </div>
	        <div class="prizeImg">
	        	<img src="${stax}/assets/images/pcDzp/prizeList.png" />
	        </div>
	        <div class="rule">
	        	<div class="ruleTitle">活动规则</div>
	        	<div class="ruleCont">
	        		<p>1.活动时间：2019年9月-12月</p>
	        		<p>2.活动内容：</p>
					<p>（1）本活动只限天津建行客户参与。</p>
					<p>（2）客户通过建行个人网银，成功完成转账、投资理财（基金、理财产品）、缴费充值交易（不含全国话费充值）、信用卡业务后，即可在交易结果页面点击“网银话费大作战”广告，进行一次抽奖，每人每天最多抽2次。</p>
					<p>（3）客户获得的话费券，可通过个人网银活动页面兑换专区兑换。如果您是建行手机银行客户，也可以通过悦享生活-天津惠-专享活动-网银话费兑换页面进行兑换。</p>
					<p>（4）客户获得的话费将在24小时内充值到参与活动的手机号中。</p>
					<p>（5）若您做完交易抽奖时页面仍提示您需要完成交易再参与抽奖，请将浏览器全部关闭，重新登录网银完成交易即可正常抽奖。</p>
	        		<p>3.关于话费：</p>
	        		<p>携号转网手机号可能存在无法正常充值的情况，给您造成的不便请您谅解。由于月初月末，订单交易量比较大，运营商充值系统繁忙偶尔存在延迟到账或者充值失败的情况，请联系客服为您处理。客服电话：4008109200。</p>
	        		<p>郑重说明：</p>
	        		<p>（1）本平台所有话费均不直接参与运营商活动。</p>
	        		<p>（2）平台为自动充值，一旦付款成功就无法修改或者撤销订单，只能最终充值结果。在网上提交的充值内容，是具备法律效应的交易指令。若因个人原因造成损失，平台恕不承担责任，并且不承诺找回损失的义务。</p>
	        		<p>（3）购买前请查询要充值号码的话费余额，如已停机的，请查询欠费多少，以免万一充值后话费依然不足，不能正常开机，造成不必要的误会。</p>
	        		<p>（4）若交易成功后没有收到短信，建议您用充值号码拨打运营商客服电话查询（移动：10086、联通：10010、电信：10000）最近缴费充值记录。 </p>
	        		<p>4.活动声明： 活动过程中，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。</p>
	        		<p>5.商品问题客服电话：4001570096，支付问题客服电话：022-58750200，咨询时间：周一至周五9:30至17:00。</p>
	        		<p></p>
	        	</div>
	        </div>
    	</div>
    	<div class="exchange">
    		<div class="exchangeTitle">兑换专区</div>
	        <div class="exchangeCont">
	        	<p class="exchangeNum">当前拥有<span></span>兑换券</p>
	        	<div class="exRecord">兑换记录</div>
	        	<ul>
<!-- 	        		<li><p>点击兑换</p></li> -->
<!-- 	        		<li><p>点击兑换</p></li> -->
<!-- 	        		<li><p>点击兑换</p></li> -->
	        	</ul>
	        </div>
    	</div>
    </div>
    
    <!-- 登录框  -->
    <div class="bindPhone" style="display:none;">
   		<div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                <div class="c-close-a"><img src="${stax}/assets/images/pcDzp/close.png" /></div>
                <p style="color:#333;font-size:26px;text-align:center;margin-bottom:20px;margin-top:20px;">绑定手机号</p>
               	<div class="bpInput">
               		<p>手机号：</p>
		            <input id="phone" type="tel" name="" maxlength="11" pattern="[0-9]*" placeholder="请输入手机号">
		        </div>
		        <div class="bpCodeIpt">
		       		<p>验证码：</p>
		            <input placeholder="请输入验证码" id="testcode" type="text" name=""
		                onKeyUp="if(this.value.length>4){this.value=this.value.substr(0,4)};this.value=this.value.replace(/[^\d]/g,'');">
		                <input class="bpcode" id="bpcodebtn" type="button" value="获取验证码" onclick="sendCode()";/>
		        </div>
                <div class="btnpos">
                    <button class="am-btn am-btn-sm am-center am-btn-warning jianbianbtn alert_close" onclick="register();" >登录</button>
                </div>
		<p style="color:red;text-align: center;margin-top: 10px;">*请使用天津本地手机号注册</p>
            </div>
        </div>
    </div>
    
    <!-- 中奖弹窗 -->
    <div class="win_body" style="display:none;">
    	<div class="win_box">
    		<div class="close"><img src="${stax}/assets/images/pcDzp/close.png" /></div>
    		<p style="color:#333;font-size:26px;text-align:center;margin-bottom:20px;margin-top:20px;">中奖啦</p>
    		<div class="win_cont">
    		
    		</div>
    		<div class="btn">
    			<button>确定</button>
    		</div>
    	</div>
    </div>
    
    <!-- 其他弹唱 -->
    <div class="tishi_body" style="display:none;">
    	<div class="tishi_box">
    		<div class="close"><img src="${stax}/assets/images/pcDzp/close.png" /></div>
    		<div class="tishi_cont">
    			恭喜您，获得10元话费，话费将在24小时内充值到您参与活动的手机号中
    		</div>
    		<div class="tishiBtn">
    			<button>确定</button>
    		</div>
    	</div>
    </div>
    
    <!-- 中奖纪录 -->
    <div class="prizeList_body" style="display:none;">
    	<div class="prizeList_box">
    		<div class="close"><img src="${stax}/assets/images/pcDzp/close.png" /></div>
    		<p style="color:#333;font-size:26px;text-align:center;margin-bottom:10px;margin-top:20px;">中奖纪录</p>
    		<div class="prizeList_cont">
    			<div class="prizeList_title">
    				<p>中奖时间</p>
    				<p>中奖奖品</p>
    			</div>
    			<ul>
    			</ul>
    		</div>
    		<div class="prizeListBtn">
    			<button>确定</button>
    		</div>
    	</div>
    </div>
    
    <!-- 兑换纪录 -->
    <div class="exchangeList_body" style="display:none;">
    	<div class="exchangeList_box">
    		<div class="close"><img src="${stax}/assets/images/pcDzp/close.png" /></div>
    		<p style="color:#333;font-size:26px;text-align:center;margin-bottom:10px;margin-top:20px;">兑换纪录</p>
    		<div class="exchangeList_cont">
    			<div class="exchangeList_title">
    				<p>兑换时间</p>
    				<p>中奖奖品</p>
    				<p>支付金额</p>
    			</div>
    			<ul>
    			</ul>
    		</div>
    		<div class="exchangeListBtn">
    			<button>确定</button>
    		</div>
    	</div>
    </div>
    
    <script src="${stax}/assets/js/jquery.min.js"></script>
    <script src="${stax}/assets/js/amazeui.min.js"></script>
    <script src="${stax}/assets/js/jQueryRotate.js"></script>
    <script src="${stax}/assets/js/index.js?v=1"></script>
    <script src="${stax}/assets/js/weui.min.js"></script>
    <script> 
 		
    console.log(window.screen.width)
        //基本数据
       	var activityId ="${acId}";//活动id
       	var todayTimes = "${todayTimes}"; //次数 
       	var prodDatas = ${prodDatas}; // 可兑换商品 
        var uid ="${uId}";
        var bid = "${bId}";
		var detailId = 0;  //中奖id
		var remt = 0; //剩余次数
		var startIndex = 0;	//中奖记录分页用
		var exIndex = 0; //兑奖记录分页用
		var byd = '${byd}';
		var gameId = '${gameId}';
		var errorMsg;
		var isUser = false;
		var prizeList = ${awards};
        var count = prizeList.length;
        var onSending = false;
        var store = $.AMUI.store;
        var userCode = "${userCode}";

        var timers =null;
        if(bid&&bid!=""){
        	sessionStorage.setItem("bid",bid);
        }
        if(uid&&uid!=""){
        	sessionStorage.setItem("uid",uid);
        }
		if(bid){
			isUser =true;
			getuserInfos();
			resetCodeNum();
		}else{
			isUser = false;
		}
		showProds(prodDatas);
		function showProds(prodDatas){
			var li = "";
			for(var i=0; i< prodDatas.length; i++){
				console.log(prodDatas[i].pId);
				li += "<li><p id="+prodDatas[i].pId+" onclick='exphone(this)'>点击兑换</p></li>";
			}
			$(".exchangeCont ul").append(li);
		}
		
		//页面加载完毕,重置用户信息
		function getuserInfos(){
			if(isUser){
				$.ajax({
					type: "GET",
					url: "${ctx}/netsilver/resetuserinfos.json",
					data: "userId="+encodeURIComponent(sessionStorage.getItem("uid")),
					success: function(resp){
						prizeList = resp.awards;
						count = prizeList.length;
						resetPrizeList();
			            drawWheelCanvas(prizeList, prizeList.length);//渲染转盘
			            $(".todayTimes").text(resp.todayTimes+"次");
					}
				});
			}
		}
		//获取用户话费券金额
		function resetCodeNum(){
			$.ajax({
				type: "GET",
				url: "${ctx}/netsilver/resetcodenum.json",
				data: "userId="+encodeURIComponent(sessionStorage.getItem("uid")),
				success: function(resp){
					$(".exchangeNum span").html(resp.codeMoney+"元");
				}
			});
		}
		
		var addr = '${addr}';
		var cango = false;
	  	if(addr){
	  		if(addr.indexOf('天津') > -1){
	  			cango = true;
	  		}
	  	}
        $(function() {
        	errorMsg = '${msg}';
        	 if (errorMsg && errorMsg != '') {
                  weui.alert(errorMsg);
                  return;
        	}  
       	    if (errorMsg && errorMsg != '') {
                // 抽取按钮按钮点击触发事件
                $('.pointer').click(function() {
                    weui.alert(errorMsg);
                });
            } else {
                // 抽取按钮按钮点击触发事件
                $('.pointer').click(function() {
                	if(!isUser){
                  		$(".bindPhone").css("display","block");
                  	}else{
                  		play();
                  	}
                });
            }
        });
        
      	/*验证手机号*/
        function checkPhone(num){
        	var phone = parseInt(num);
    	    var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
    	    if(!reg.test(phone)){
    	        weui.toast('请输入正确的手机号码', {
    	            duration: 1000,
    	            className: 'toast-warn',
    	            callback: function(){
    	                //document.querySelector("#phone").value = "";
    	            }
    	        });
    	        return false;
    	    }    
    	    return true;
        }

      	
      	/**绑定手机登录**/
      	function register(){
      		
      		var phone = $('#phone').val();
      		var ccode = $('#testcode').val();
      		if(!checkPhone(phone))return;
      		if(!ccode){
      			weui.toast('请输入验证码', {
    	            duration: 1000,
    	            className: 'toast-warn',
    	            callback: function(){
    	            }
    	        });
      			return;
      		}
      		var loading = weui.loading('正在加载...');	//loading
      		$.ajax({
    			type: "GET",
    			url: "${ctx}/netsilver/register.json",
    			data: "phone="+phone+"&code="+ccode+"&activityId="+encodeURIComponent(activityId)+"&userCode="+encodeURIComponent(userCode)+"&r="+Math.random(),
    			success: function(resp){
    				loading.hide();
    				if(resp.msg){
    					$(".bindPhone").hide();
    					$("#testcode").val("");
    					weui.alert(resp.msg);
    				}else{
    					$('.bindPhone').fadeOut(200);
    					isUser = true;
    					sessionStorage.setItem("bid",resp.bId);
    					sessionStorage.setItem("uid",resp.uId);
    					getuserInfos();
    					resetCodeNum();
    				}
    			},
    			error:function(er){
    				loading.hide();
    				console.log(er);
    			}
        	});
      	}
      	

        /*验证手机号,通过则发送短信*/
        $(document).on("input oninput","#phone",function(e){
        	
             if(e.type === "input" || e.orignalEvent.propertyName === "value"){         
                 this.value=this.value.replace(/\D/gi,"");
                 
 	                if(this.value.length == 11){
 	                	
 	                if(checkPhone(this.value)){
 	                	$('#bpcodebtn').attr("disabled",false);
 	                	$("#bpcodebtn").css("background","#2F79F4");  
						
 	                }
 	            }else if(this.value.length < 11){
 	            	$("#bpcodebtn").css("background","#959595"); 
 	            	$("#bpcodebtn").attr("disabled",true);
 	            }
          	 }
         });
        
        function sendCode(){
        	$("#bpcodebtn").attr("disabled",true);
             var phone = $("#phone").val();
             var loading = weui.loading('正在加载...');	//loading
             	$.ajax({
             		type:"POST",
             		url:"${ctx}/tjhui/getcode.json?phone="+$('#phone').val(),
             		success: function(resp){
             			loading.hide();
             			$("#phone").attr("disabled",true)
             			if(resp.msg != ""){
             				weui.alert(resp.msg);
//              				getCode();
//              				$("#bpcodebtn").css("background","#959595"); 
             				
             			}else{
             				getCode();
             			}
             		},
             		error:function(er){
             			loading.hide();
             			console.log(er);
             		}
             	});
        }
    var timer;
     var oBtn = document.getElementById("bpcodebtn");
     function getCode(){
     	clearInterval(timer);
     	/*验证码倒计时*/
            if(checkPhone($("#phone").val())){           
 			var s = 60;
               timer = setInterval(function(){            	  
                    s--;
                    $("#bpcodebtn").css("background","#959595"); 
                    $("#bpcodebtn").attr("disabled",true);              
                    oBtn.value = s+"秒后重发";
                    if(s == 0){
                    	clearInterval(timer);
                    	oBtn.value = "获取验证码";
                    	$("#phone").attr("disabled",false)
                    	$("#bpcodebtn").css("background","#2F79F4"); 
                    	$("#bpcodebtn").attr("disabled",false);
                    }
                },1000);
 			
         };
     }
     
     /* 关闭  */
     $(".c-close-a img").click(function(){
    	 $(".bindPhone").hide();
     });
     
     $(".close img").click(function(){
    	 $("#box").css("position","");
    	 $(".exchangeList_body , .prizeList_body , .win_body , .tishi_body").hide();
     });
     $(".exchangeListBtn button , .prizeListBtn button").click(function(){
    	 $("#box").css("position","");
    	 $(".exchangeList_body , .prizeList_body").hide();
     });
     $(".tishiBtn button , .btn button").click(function(){
    	 $(".win_body , .tishi_body").hide();
     })

     	function resetPrizeList(){
     		for (var i = 0; i < prizeList.length; i++) {
                if (i % 2 == 0){
                	prizeList[i].color = "#140129";
                    prizeList[i].bgcolor = "#fff";
                }else{
                    prizeList[i].color = "#140129";
                    prizeList[i].bgcolor = "#DBE6FF";
                }  
                var tempic = new Image();
                tempic.src = "${ctx}/"+prizeList[i].picUrl;
                prizeList[i].img = tempic;
                tempic.onload = function(){
                	 drawWheelCanvas(prizeList, prizeList.length);
                };
            };
            
     	}
       window.onload = function() {
        	resetPrizeList();
        };

       
        
         /*****************************************展示中奖记录********************************************/
        
         $(".prizeImg img").click(function(){
        	 myPrize();
         })
         /*查询并展示中奖记录 */
         function myPrize(){
       		if(!isUser){
       			$(".bindPhone").css("display","block");
           	}else{
           		startIndex = 0;
            	$(".prizeList_body").css("display","block");
            	$("#box").css("position","fixed");
            	$.ajax({
            		type : "post",
    				url : "${ctx}/netsilver/receiveinfos.json",
    				data : "userId="+encodeURIComponent(sessionStorage.getItem("uid"))+"&start="+startIndex,
    				success : function(resp) {   					
    					if(resp.msg != "" || resp.msg){
    						startIndex = resp.datas.length;
        					var li="";
    						for(var i = 0; i< resp.datas.length; i++){
        						li+="<li><p>"+resp.datas[i].createTime+"</p><p>"+resp.datas[i].name+"</p></li>";
    						}
        					$(".prizeList_cont ul").append(li);
    					}
    					
    				}
            	});
           	}
    		
         };
         
         /* 中奖记录内容的滚动 */
    		var off_on = true;
    	    $('.prizeList_cont ul').scroll(function() {
    	        //当时滚动条离底部60px时开始加载下一页的内容
    	        if (($(this)[0].scrollTop + $(this).height() + 60) >= $(this)[0].scrollHeight) {
    	            //这里用 [ off_on ] 来控制是否加载 （这样就解决了 当上页的条件满足时，一下子加载多次的问题啦）
    	            if (off_on) {
    	                off_on = false;
	       	             $.ajax({
	                 		type : "post",
	         				url : "${ctx}/netsilver/receiveinfos.json",
	         				data : "userId="+encodeURIComponent(sessionStorage.getItem("uid"))+"&start="+startIndex,
	         				success : function(resp) {   					
	         					if(resp.msg != "" || resp.msg){
	         						startIndex += resp.datas.length;
	             					var li="";
	         						for(var i = 0; i< resp.datas.length; i++){
	             						li+="<li><p>"+resp.datas[i].createTime+"</p><p>"+resp.datas[i].name+"</p></li>";
	         						}
	             					$(".prizeList_cont ul").append(li);
	             					off_on = true;
	         					}
	         					
	         				}
	                 	});
    	            }
    	        }
    	    });
         
        /*****************************************兑奖纪录********************************************/
		$(".exRecord").click(function(){
			if(!sessionStorage.getItem("uid")){
       			$(".bindPhone").css("display","block");
           	}else{
           		exIndex = 0;
            	$(".exchangeList_body").css("display","block");
            	$("#box").css("position","fixed");
            	$.ajax({
            		type : "post",
    				url : "${ctx}/netsilver/exinfos.json",
    				data : "userId="+encodeURIComponent(sessionStorage.getItem("uid"))+"&start="+exIndex,
    				success : function(resp) {
    					if(resp.exdatas && resp.exdatas != ""){
    						exIndex += resp.exdatas.length;
        					var li="";
        					for(var i = 0; i< resp.exdatas.length; i++){
        						li+="<li><p>"+resp.exdatas[i].exchangeTime+"</p><p>"+resp.exdatas[i].proName+"</p><p>"+resp.exdatas[i].payMoney+"</p></li>";
        					}
        					$(".exchangeList_cont ul").append(li);
    					}
    				}
            	});
           	}
		});
        
		$('.exchangeList_cont ul').scroll(function() {
		    //当时滚动条离底部60px时开始加载下一页的内容
		    if (($(this)[0].scrollTop + $(this).height() + 40) >= $(this)[0].scrollHeight) {
		        clearTimeout(timers);
		        //这里还可以用 [ 延时执行 ] 来控制是否加载 （这样就解决了 当上页的条件满足时，一下子加载多次的问题啦）
		        timers = setTimeout(function() {
		        	$.ajax({
	            		type : "post",
	    				url : "${ctx}/netsilver/exinfos.json",
	    				data : "userId="+encodeURIComponent(sessionStorage.getItem("uid"))+"&start="+exIndex,
	    				success : function(resp) {
	    					if(resp.exdatas && resp.exdatas != ""){
	    						exIndex += resp.exdatas.length;
	        					var li="";
	        					for(var i = 0; i< resp.exdatas.length; i++){
	        						li+="<li><p>"+resp.exdatas[i].exchangeTime+"</p><p>"+resp.exdatas[i].proName+"</p><p>"+resp.exdatas[i].payMoney+"</p></li>";
	        					}
	        					$(".exchangeList_cont ul").append(li);
	    					}
	    				}
	            	});
		            
		        }, 300);
		    }
		});
         
		/*****************************************兑换话费********************************************/
		function exphone(e){
			if(!sessionStorage.getItem("uid")){
       			$(".bindPhone").css("display","block");
           	}else{
           		$.ajax({
	                type : "POST",
	                url : "${ctx}/netsilver/checkcodenum.json",
	                data : "userId="+encodeURIComponent(sessionStorage.getItem("uid"))+"&prodId="+encodeURIComponent(e.id),
	                success : function(resp) {
	                	if(resp.status=="0"){
	                		if(resp.isPay&&resp.isPay=="1"){
	                			weui.confirm(resp.msg,function(){
	                				exphonebycode(e);
	                			},function(){
	        	   			   });
	                		}else{
	                			weui.alert(resp.msg);
	                		}
	                	}else if(resp.status=="1"){
	                		exphonebycode(e);
	                	}
	                },
	                error : function(data) {
	                    loading.hide();
	                    alert("网络错误，请检查您的网络设置！");
	                }
           		});
           	}
        }
		
		function exphonebycode(e){
			$.ajax({
                type : "POST",
                url : "${ctx}/netsilver/exphonebycode.json",
                data : "userId="+encodeURIComponent(sessionStorage.getItem("uid"))+"&prodId="+encodeURIComponent(e.id)+"&type=pc",
                success : function(resp) {
                   if(resp.status=="1"){
                	   resetCodeNum();
                	   weui.alert(resp.msg+"兑换成功");
                   }else if(resp.status=="0"){
                	   if(resp.payUrl&&resp.payUrl!=""){
                		   window.location.href = resp.payUrl;
                	   }else{
                		   weui.alert(resp.msg);
                	   }
                   }
                },
                error : function(data) {
                    alert("网络错误，请检查您的网络设置！");
                }
            });
		}
        /*****************************************抽奖********************************************/
       
        
        function play() {
            var loading = weui.loading('loading', { className : 'loading' }); //loading
            $.ajax({
                type : "POST",
                url : "${ctx}/netsilver/play.json",
                data :"userId="+encodeURIComponent(sessionStorage.getItem("uid")),
                success : function(resp) {
                    loading.hide();
                    if(resp.status=="1"){
                    	$(".todayTimes").text(resp.todayTimes+"次");
                    }else if(resp.status=="0"){
                    	$(".tishi_body .tishi_cont").html(resp.msg);
                    	$(".tishi_body").show();
                    	 //weui.alert(resp.msg);
                         return;
                    }
                    turnWheel.bRotate = true;
                    if (resp.relt > 0) {
                        for (var i = 0; i < prizeList.length; i++) {
                            if (prizeList[i].id == resp.relt) {
                                // 开始抽奖
                                detailId = prizeList[i].id;
                                rotateFunc(i, prizeList[i].name);
                                resetCodeNum();
                                break;
                            }
                        }
                    }else{
                    	weui.alert("抽奖失败！");
                    }
                },
                error : function(data) {
                    loading.hide();
                    alert("网络错误，请检查您的网络设置！");
                }
            });
        }
        
        //旋转转盘 item:奖品序号，从0开始的; txt：提示语 ,count 奖品的总数量;
        var rotateFunc = function(item, tip) {
            // 应该旋转的角度，旋转插件角度参数是角度制。
            var baseAngle = 360 / count;
            // 旋转角度 == 270°（当前第一个角度和指针位置的偏移量） - 奖品的位置 * 每块所占的角度 - 每块所占的角度的一半(指针指向区域的中间)
            angles = 360 * 3 / 4 - (item * baseAngle) - baseAngle / 2; // 因为第一个奖品是从0°开始的，即水平向右方向
            $('#wheelCanvas').stopRotate();
            // 注意，jqueryrotate 插件传递的角度不是弧度制。
            // 哪个标签调用方法，旋转哪个控件
            $('#wheelCanvas').rotate(
                    {
                        angle : 0,
                        animateTo : angles + 360 * 5, // 这里多旋转了5圈，圈数越多，转的越快
                        duration : 8000,
                        callback : function() { // 回调方法
                            if (prizeList[item].money && prizeList[item].money > 0) {
                            	if(prizeList[item].prodCode == "phone"){
                            		$(".win_body").show();
                            		//weui.alert("恭喜您获得话费"+prizeList[item].name);
                            		$(".win_body .win_cont").html("<p>恭喜您，获得<span style='color:#2F79F4;'>"+prizeList[item].name+"</span>，话费将在24小时内充值到您参与活动的手机号中</p>")
                            	}else if(prizeList[item].prodCode == "phone_code"){
                            		//weui.alert("恭喜您获得话费券"+prizeList[item].name);
                            		$(".win_body").show();
                            		$(".win_body .win_cont").html("<p>恭喜您，获得<span style='color:#2F79F4;'>"+prizeList[item].name+"</span>，您可直接在活动下方的兑换专区兑换，手机银行客户可以通过，悦享生活-天津惠-专项活动进行兑换领取</p>")
                            	}                
                            }else {
                            	$(".tishi_body .tishi_cont").html("很遗憾，您本次未中奖。");
                            	$(".tishi_body").show();
                            	//weui.alert("很遗憾，您本次未中奖。");
                            }
                            turnWheel.bRotate = !turnWheel.bRotate;
                        }
                       
                    });
        };

        /*
         * 渲染转盘
         * */
        function drawWheelCanvas(data, times) {
            // 获取canvas画板，相当于layer？？
            var canvas = document.getElementById("wheelCanvas");
            //    var canvas = ($("#wheelCanvas")).get()[0]; // 注意，jQuery获取的是包装过的对象，不是DOM对象,可以进行转换

            // 计算每块占的角度，弧度制
            var baseAngle = Math.PI * 2 / times;
            // 获取上下文
            var ctx = canvas.getContext("2d");

            var canvasW = canvas.width; // 画板的高度
            var canvasH = canvas.height; // 画板的宽度
            //在给定矩形内清空一个矩形
            ctx.clearRect(0, 0, canvasW, canvasH);
            //strokeStyle 绘制颜色
            ctx.strokeStyle = "#000"; // 红色
            //font 画布上文本内容的当前字体属性
            //ctx.font = '16px Microsoft YaHei';
              ctx.font = '18px Microsoft YaHei';
            // 注意，开始画的位置是从0°角的位置开始画的。也就是水平向右的方向。
            // 画具体内容
            for (var index = 0; index < times; index++) {
                // 当前的角度turnWheel.startAngle
                var angle = turnWheel.startAngle + index * baseAngle;
                // 填充颜色
                ctx.fillStyle = data[index].bgcolor;

                // 开始画内容
                // ---------基本的背景颜色----------
                ctx.beginPath();
                /*
                 * 画圆弧，和IOS的Quartz2D类似
                 * context.arc(x,y,r,sAngle,eAngle,counterclockwise);
                 * x :圆的中心点x
                 * y :圆的中心点x
                 * sAngle,eAngle :起始角度、结束角度
                 * counterclockwise : 绘制方向,可选，False = 顺时针，true = 逆时针
                 * */
                ctx.arc(canvasW * 0.5, canvasH * 0.5, turnWheel.outsideRadius,
                        angle, angle + baseAngle, false);
                ctx.arc(canvasW * 0.5, canvasH * 0.5, turnWheel.insideRadius,
                        angle + baseAngle, angle, true);
                ctx.stroke();
                ctx.fill();
                //保存画布的状态，和图形上下文栈类似，后面可以Restore还原状态（坐标还原为当前的0，0），
                ctx.save();

                /*----绘制奖品内容----重点----*/
                // 红色字体
                ctx.fillStyle = data[index].color;//"#ff2c09";
                var rewardName = data[index].name;
                var line_height =20;
                // translate方法重新映射画布上的 (0,0) 位置
                // context.translate(x,y);
                // 见PPT图片，
                var translateX = canvasW * 0.5
                        + Math.cos(angle + baseAngle / 2)
                        * turnWheel.textRadius;
                var translateY = canvasH * 0.5
                        + Math.sin(angle + baseAngle / 2)
                        * turnWheel.textRadius;
                ctx.translate(translateX, translateY);

                // rotate方法旋转当前的绘图，因为文字适合当前扇形中心线垂直的！
                // angle，当前扇形自身旋转的角度 +  baseAngle / 2 中心线多旋转的角度  + 垂直的角度90°
                ctx.rotate(angle + baseAngle / 2 + Math.PI / 2);

                /** 下面代码根据奖品类型、奖品名称长度渲染不同效果，如字体、颜色、图片效果。(具体根据实际情况改变) **/
                // canvas 的 measureText() 方法返回包含一个对象，该对象包含以像素计的指定字体宽度。
                // fillText() 方法在画布上绘制填色的文本。文本的默认颜色是黑色. fillStyle 属性以另一种颜色/渐变来渲染文本
                /*
                 * context.fillText(text,x,y,maxWidth);
                 * 注意！！！y是文字的最底部的值，并不是top的值！！！
                 *
                 *
                 * */
                 var imgPrize = new Image();
                 imgPrize = data[index].img;
               if(rewardName == "谢谢参与"){
                	
                	/* rewardName = rewardName.substring(0, 2) + "||" + rewardName.substring(2);
                    var rewardNames = rewardName.split("||");
                    
                    for (var j = 0; j < rewardNames.length; j++) {                   	
                        ctx.fillText(rewardNames[j], -ctx.measureText(rewardNames[j]).width / 2, j * 10);

                    } */
                    ctx.fillText(rewardName, -ctx.measureText(rewardName).width / 2, 65);
                    ctx.drawImage(imgPrize, -25, -20, 56, 56);
                }else {
                    //在画布上绘制填色的文本。文本的默认颜色是黑色
                    ctx.fillText(rewardName, -ctx.measureText(rewardName).width / 2, 55);
                    ctx.drawImage(imgPrize, -40, -20, 74, 38);//-30, 10, 65, 43
                }
                //添加对应图标	
                      
               
                //         console.log(index + "    "  + imgPrize.src);

                //还原画板的状态到上一个save()状态之前
                ctx.restore();
                
                //reload();
                //window.location.reload();
                /*----绘制奖品结束----*/

            };

        }

    	$(function () { 
    	  var isPageHide = false; 
    	  window.addEventListener('pageshow', function () { 
    	    if (isPageHide) { 
    	      window.location.reload(); 
    	    } 
    	  }); 
    	  window.addEventListener('pagehide', function () { 
    	    isPageHide = true; 
    	  }); 

    	});
    
    	
    </script>
</body>
</html>