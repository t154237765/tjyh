<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>幸运锦鲤</title>

<link rel="stylesheet" href="${stax}/assets/css/fancycarp.css">
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
<!-- <link rel="stylesheet" href="${stax}/assets/css/swiper.min.css" > -->
<style>
	.swiper-button-next{top:4.9rem;left:4.8rem;}
	.swiper-button-prev{left:2.4rem;top:4.9rem;}
	.weui-dialog__btn{
		color:#fff;
	}
	.weui-loading_toast {font-size:24px;}
	.weui-dialog__btn_primary{color:#08B6F2;}
	.c-login-close {
		position: absolute;
		top: -0.6rem;
		right: -0.2rem;
		color: #fff;
		font-size: 0.56rem;
	}
	.weui-toast{top:35%;}
	.toast-warn{font-size:24px;}
	.c-c-b{background:#ccc !important;}
	.box {
		width: 100%;
		height: 16.5rem;
		background: url(${stax}/assets/images/fancycarp/background.jpg) no-repeat
			100% 100%;
		background-size: 100% 100%;
		margin-top: 0.88rem;
		padding-top: 2.2rem;
		font-family: FZDaHei-B02S;
	}
	.txt {
		width: 6.2rem;
		padding: 0 0.3rem;
		height: 1.16rem;
		padding-top: 0.3rem;
		background: url(${stax}/assets/images/fancycarp/txtBack.png) no-repeat
			100% 100%;
		background-size: 100% 100%;
		margin: auto;
		text-align: center;
		line-height: 0.4rem;
		margin-top: 0.3rem;
	}
	.rankimgList {
		width: 100%;
		height: 11.46rem;
		background: url(${stax}/assets/images/fancycarp/listBack.jpg) no-repeat
			100% 100%;
		background-size: 100% 100%;
		padding-top: 0.6rem;
	}
	.listCont {
		width: 6.1rem;
		height: 7.42rem;
		background: url(${stax}/assets/images/fancycarp/listTxt.png) no-repeat
			100% 100%;
		background-size: 100% 100%;
		padding: 0.6rem 0.25rem 0rem;
		margin: auto;
		text-align: center;
	}
	.rankimgTitle {
		width: 2.4rem;
		height: 0.7rem;
		background: url(${stax}/assets/images/fancycarp/listTitle.png) no-repeat
			100% 100%;
		background-size: 100% 100%;
		position: relative;
		left: 0;
		right: 0;
		margin: auto;
		top: 0.3rem;
	}
	.swiper-wrapper .swiper-slide:nth-child(1){
		color:red;
		font-weight:bold;
	}

</style>
</head>
<body>
	<div class="home">
		<div class="titleBar">
			<div class="titleBar-back" onclick="toHome()">
				<img src="${stax}/assets/images/history.png" />&nbsp;返回
			</div>
	        <div class="titleBar-text am-text-truncate">幸运锦鲤</div>
	    </div>
		<div class="box">
			<div class="title">
				<p>竞猜每周六AU9999收盘价</p>
				<p>赢取<span>幸运大奖</span></p>
<!-- 				<p>活动时间：2019.03.31-2019.04.03</p> -->
			</div>
			<div class="nav">
				<div>
					<img src="${stax}/assets/images/fancycarp/2-0-tag1.png" />
				</div>
				<div>
					<img src="${stax}/assets/images/fancycarp/2-0-tag2.png" />
				</div>
				<div>
					<img src="${stax}/assets/images/fancycarp/2-0-tag3.png" />
				</div>
			</div>
			<div class="jyb1">
				<img src="${stax}/assets/images/fancycarp/jyb-1.png" />
			</div>
			<div class="cont" style="height:2.5rem;">
				<p class="p1">第${exNum}期收盘价竞猜</p>
				<div class="question">
					<img src="${stax}/assets/images/fancycarp/question.png" />
				</div>
				<div class="inp">
					<input type="text" maxlength="6" placeholder="请输入竞猜收盘价" onkeyup="this.value=this.value.replace(/[^\d\.\/]/ig,'')"/>
					<button>竞猜</button>
				</div>
				<span>注意：本期输入后不可修改了哟（例：xxx.xx）</span>
			</div>
			<div class="jyb2">
				<img src="${stax}/assets/images/fancycarp/jyb-2.png" />
			</div>
			<div class="txt">
				<p>绑定邀请人，中奖后邀请人也可获得488元大奖 </p>
				<p>仅限2019年新注册天津惠用户可绑定且开奖前绑定有效。</p>
			</div>
		</div>
	</div>
	
	<!-- 排行榜 -->
	<div class="rankimg" style="display:none;">
		<div class="titleBar">
			<div class="titleBar-back" >
				<img src="${stax}/assets/images/history.png" />&nbsp;返回
			</div>
	        <div class="titleBar-text am-text-truncate">幸运锦鲤</div>
	    </div>
	    <div class="rankimgList">
	    	<div class="rankimgTitle"></div>
	    	<div class="listCont">
	    		<div class="list-title">
	    					<p>竞猜手机号</p>
	    					<p>竞猜数值</p>
	    					<p>竞猜时间</p>
	    					<p>邀请人手机号</p>
	    				</div>
		    	<div class="swiper-container">
		    		<div class="swiper-wrapper">

		    		</div>
		    	</div>
		    	<a href='#'>本期竞猜结果</a>
	    		<div class="bottom">
	    			<div class="btn_left swiper-button-prev"></div>
	    			<div class="bottom_txt">第一期</div>
	    			<div class="btn_right swiper-button-next"></div>
	    		</div>
	    	</div>	    	
	    </div>
	</div>
	
	
	<!-- 中奖列表-->
	<div class="shop" style="display:none;">
		<div class="prizeCont">
			<p class="prizeTitle"
				style="color: #333; font-size: 0.36rem; text-align: center; margin: 2% 0%;">我的中奖</p>
			<i class="weui-icon-cancel c-login-close"></i>
			<div class="shopList">
				<div>
					<p class="left">奖品名称</p>
					<p class="right">中奖时间</p>
				</div>
			
				<ul class = "myprize">
				
				</ul>
				
			</div>
			<div class="prizeBtn">我知道了</div>
		</div>
	</div>
	
	<!-- 规则-->
	<div class="rule" style="display:none;">
		<div class="ruleCont">
			<p class="ruleTitle"
				style="color: #333; font-size: 0.36rem; text-align: center; margin: 2% 0%;">活动规则</p>
			<i class="weui-icon-cancel c-login-close"></i>
			<div class="ruleTxt">
				<p>1. 活动时间：2019年4月-2019年5月26日，每周1期，每期竞猜从周一6:00开始，当周周五22:00结束。 </p>
				<p>2. 客户在“幸运锦鲤”活动界面，输入数值：XXX.XX，竞猜当期建行账户贵金属Au9999周六收盘价，每人每期可以参与1次，输入竞猜数值后不可更改。 </p>
				<p>3. 客户需支付1分钱，使竞猜生效。支付金额退换支付账户。 如实际未支付成功但提示本期已竞猜，请稍后再试。</p>
				<p>4. 每期客户输入的竞猜数值，与当期周六AU9999收盘价比较，绝对值相差数值最小，且本期提交时间最早的客户，可以获得4888锭津元宝“幸运大锦鲤”。</p>
				<p>5. 如果“幸运大锦鲤”获得者，填写了邀请人信息，那么其邀请人可以额外获得488锭津元宝“幸运小锦鲤”奖，“幸运大锦鲤”获得者的邀请人信息，需在获奖当期竞猜结束前填写，否则无效。</p>
				<p>6. 建行账户贵金属Au9999价格，可以通过建行手机银行-投资理财-账户贵金属-Au9999查看日线图。 </p>
				<p>7. 每期“幸运大锦鲤”和“幸运小锦鲤”津元宝奖励，将于10个工作日内发放，如遇法定节假日顺延。 </p>
				<p>8. 每位客户只能获得一次“幸运大锦鲤”奖，因此已获得“幸运大锦鲤”的客户，将不能再参加幸运锦鲤活动，请您理解。</p>
				<p>9. 活动声明:活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。 </p>
				<p>10.博雅融联客服电话：400-810-9200，天津建行客服电话：022-2340-0200。</p>
				
			</div>
			<div class="ruleBtn">我知道了</div>
		</div>
	</div>
	
	<!-- 支付选项 -->
	<div class="weui-mask pay" style="display:none;">
    	<div class="box-cont">
    		<div class="txt-cont">
	    		亲，支付0.01分后，竞猜生效。 猜中就能获得4888锭津元宝锦鲤大奖！
	    	</div>
	    	<div class="btn-cont">
	    		<button class="closeMask">取消</button>
	    		<button class="trueMask">确定</button>
	    	</div>
    	</div>
    </div>
    
    <!-- 竞猜提示 -->
	<div class="weui-mask zhezhao1" style="display:none;">
    	<div class="box2-cont">
    		<div class="txt2-cont">
	    		您竞猜的收盘价与当前价位差距较大 请您确认竞猜收盘价。
	    	</div>
	    	<div class="btn2-cont">
	    		<button class="closeMask">我意已决</button>
	    		<button class="trueMask">容我三思</button>
	    	</div>
    	</div>
    </div>
    
    <!-- 问题 -->
	<div class="weui-mask zhezhao3" style="display:none;">
		<div class="questionTxt">
			<p>您可以通过建行手机银行-投资理财-账户 贵金属-Au999查看收盘价走势图</p>
			<button>确定</button>
		</div>
	</div>
    
    <!-- 竞猜结果 -->
	<div class="weui-mask zhezhao2" style="display:none;">
		<div class="result">
			<p>第一期竞猜结果</p>
			<img src="" />
			<button>确定</button>
		</div>
	</div>
	
	<!-- 提示 -->
	<div class="weui-mask tishi" style="display:none;">
		<div class="prizeCont">
			<p class="prizeTitle"
				style="color: #333; font-size: 0.36rem; text-align: center; margin: 2% 0%;">我的中奖</p>
			<i class="weui-icon-cancel c-login-close"></i>
			<div class="shopList">
				<div>
					<p class="left">奖品名称</p>
					<p class="right">中奖时间</p>
				</div>
				<ul class = "myprize">
<!-- 					<li> -->
<!-- 						<p class="l">二等奖“话费半价购”</p> -->
<!-- 						<p class="r">2018-03-05 23:00:00</p> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<p class="l">二等奖“话费半价购”</p> -->
<!-- 						<p class="r">2018-03-05 23:00:00</p> -->
<!-- 					</li> -->
				</ul>
			</div>
			<div class="prizeBtn">我知道了</div>
		</div>
	</div>


	<!-- 登录 -->
	<div class="sign1 js_dialog" id="iosDialog1" style="display:none;">
         	<i class="weui-icon-cancel" id="c-login-close"></i>
        	<div class="Scont">
        		<p style="margin:5% auto;text-align:center;color:#000;font-size:0.36rem;">手机验证注册</p>
                <div>
                	<input id="phone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*" placeholder="请输入您的手机号码">
                </div>
                <div>
                	<input style="width:54%;" class="weui-input" type="text" pattern="[0-9]*" id="ccode"
						oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码" onkeypress="keyPress()">
                	<button class="Sbtn1" id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
                </div>
               <!--  <div>
                	<input id="iuphone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*" placeholder="邀请人手机号（可不填）">
                </div>
                <p style="text-align:center;color:red;font-size:0.3rem;">邀请人填写后不可更改哟~</p> -->
                <button class="Sbtn2" id="btn">注册</button>
        	</div>	
        </div>
	
	<script src="${stax}/assets/js/jquery.min.js"></script>
    <script src="${stax}/assets/js/rem.js"></script>
    <script type="text/javascript" src="${stax}/assets/js/weui.min.js"></script>
<!--     <script src="${stax}/assets/js/swiper.min.js"></script> -->	
	
    <script>   
	var bankId = "${bankId}";
    var bankuid = "${bid}";
    var userId = "${userId}";
	var wg = "${wg}";
	if(wg&&wg!=""){
		bankid = localStorage.getItem("bankId");
		bankuid = localStorage.getItem("bankuid");
		userId = localStorage.getItem("userId");
	}
    
	if(bankId){
		localStorage.setItem("bankId", bankId);
	}
	if(bankuid){
		localStorage.setItem("bankuid", bankuid);    		    		
	}
	
	if(userId){
		localStorage.setItem("userId", userId);    		    		
	}
    
   
    var msg = "${msg}";
    var status = "${status}";
    var isranking = "${isranking}";
	var userId = "${userId}"; 
    
    if(msg&&msg!=""){
    	weui.alert(msg);
    	$(".inp button").addClass("c-c-b");
    	$(".inp input").attr("disabled","disabled");
    }

    if(userId && userId==" "){
    	$(".inp button").addClass("c-c-b");
    }
    
    if(status && status=="1"){
    	$(".inp button").addClass("c-c-b");
    }
    
    if(status && status=="2"){
    	$(".inp button").addClass("c-c-b");
    	$(".inp input").val("${exCode}");
    	$(".inp input").attr("disabled","disabled");
    }
    
    if(isranking && isranking=="1"){
    	$(".inp button").addClass("c-c-b");
    	$(".inp input").attr("disabled","disabled");
    }
    
  	//用浏览器存储
  	var indexUrl = "${indexUrl}";
  	if(indexUrl) localStorage.setItem("homeUrl", '${indexUrl}');
    
    var rankingind = ${rankingind}; // 总期数
    var a="${exNum}"; //当前期数；
    var ba = 0;
    if(rankingind && rankingind.length>0) ba = rankingind.length;
    var li_len = parseInt($('.swiper-slide').width())+parseInt($('.swiper-slide').css('marginRight'))+'px';
    
    /* 容器的宽度 */
    
    /* 显示当前期数 */   
    $(".swiper-wrapper").css("marginLeft",a*li_len+"px");
    
    $(".swiper-button-next").click(function(){
   		ba++;
   		if(!rankingind){
   			console.log('no rankingind');
   			ba--;
   			return;
   		}
   		if($.inArray(ba, rankingind) < 0){
   			console.log('no ba num');
   			ba--;
   			return;
   		}
		showpaihang(ba);
    });  
    $(".swiper-button-prev").click(function(){  
    	ba--;
    	if(!rankingind){
   			console.log('no rankingind');
   			ba++;
   			return;
   		}
    	if($.inArray(ba, rankingind) < 0){
   			console.log('no ba num'+ba);
   			ba++;
   			return;
   		}
		showpaihang(ba);
    });
    function chinanum(num){
    	console.log(num)
	    var china = new Array('零','一','二','三','四','五','六','七','八','九');
	    var arr = new Array();
	    var english = num.split("")
	    for(var i=0;i<english.length;i++){
	        arr[i] = china[english[i]];
	    }
	    return arr.join("")
	}
    
    
    $(".question").click(function(){
    	$(".zhezhao3").show();
    })
    $(".questionTxt button").click(function(){
    	$(".zhezhao3").hide();
    })
    
    
    
    /* 竞猜 */
    $(".inp button").click(function(){
    	
    	if(msg&&msg!=""){
        	weui.alert(msg);
        	$(".inp button").addClass("c-c-b");
        	$(".inp input").attr("disabled","disabled");
        	return;
        }
    	
    	if(userId && userId==" "){
    		$("#btn").click(function(){
    			register();
    		})
    		return;
    	 }
    	
    	if(status && status=="1"){
    	    weui.alert("竞猜时间为每周一6点至周五22点");
    		return;
    	 }
    	if(status && status=="2"){
    	    weui.alert("本期您已参与过竞猜了哦！");
    		return;
    	 }
    	
        if(isranking && isranking=="1"){
    	    weui.alert("您已经参与过该活动了！");
    		return;
        }
    	
		if(userId==""&&bankuid!=""){
			//登录
			$("#iosDialog1").show();
		}else{
	    	var result = $(".inp input").val();
	    	if(result == ""){
	    		weui.alert("请输入您的竞猜结果");
	    		return ;
	    	}
	    	if(result< 100 || result > 500){
	    		$(".zhezhao1").show();
	    		$(".zhezhao1 .closeMask").click(function(){
	    			$(".zhezhao1").hide();
	    			$(".pay").show();
	    			
	    		})
	    		$(".zhezhao1 .trueMask").click(function(){
	    			$(".zhezhao1").hide();
	    		})
	    	}else{
	    		$(".pay").show();
	    		
	    	}
		}
   	
    })
    $(".pay .trueMask").click(function(){
    	$(".pay").hide();
    })
    /* 取消支付 */
    $(".box-cont .closeMask").click(function(){
    	$(".pay").hide();
    })
    
    /* 确认支付 */
    $(".box-cont .trueMask").click(function(){
    	paykoi();
    })
    
    
    $(".zhezhao2 button").click(function(){
    	$(".zhezhao2").hide();
    })
    
    $(function(){
	    /* 规则 */
	    $(".nav div:nth-child(1)").click(function(){
	    	$(".rule").show();
	    })
	    /* 排行榜 */
	    $(".nav div:nth-child(2)").click(function(){
	    	showpaihang(ba);
	    })
    })
    
    function showpaihang(num){
		//console.log(num+"*****");
    	if(num <= 0){
			num = 1;
		}else{
	    	$.ajax({
				url:'${ctx}/luckykoi/findLuckyKoiRanking.json',
				type:'post',
				data:'uid='+encodeURIComponent(userId)+'&num='+num+'&r='+Math.random(),
				success:function(resp){
	                $(".swiper-wrapper").empty();
					for(var i=0;i<resp.parList.length;i++){
						console.log(resp)
						var oDate = new Date(Number(resp.parList[i].createTime))
						var oMonth = oDate.getMonth()+1
				    	var oDay = oDate.getDate()
				    	var oHour = oDate.getHours()
				    	var oMin = oDate.getMinutes()
				    	var oMint = addZero(oMin);
						var list="";
						var iphone = resp.parList[i].iphone ? resp.parList[i].iphone : '';
						if(resp.parList[i].phone == "我"){
						    list += '<div style="font-weight:bold;"><p>'+resp.parList[i].phone+'</p><p>'+resp.parList[i].codeNum+'</p><p>'+oMonth+"."+oDay+"&nbsp;"+oHour+':'+oMint+'</p><p>'+iphone+'</p></div>';							
						}else{
						    list += '<div><p>'+resp.parList[i].phone+'</p><p>'+resp.parList[i].codeNum+'</p><p>'+oMonth+"."+oDay+"&nbsp;"+oHour+':'+oMint+'</p><p>'+iphone+'</p></div>';							
						}
					    //list += '<div><p>'+resp.parList[i].phone+'</p><p>'+resp.parList[i].codeNum+'</p><p>'+oMonth+"."+oDay+"&nbsp;"+oHour+':'+oMint+'</p><p>'+iphone+'</p></div>';
					    var swiperSlide = $("<div class='swiper-slide'>"+list+"</div>");
						$(".swiper-wrapper").append(swiperSlide)//替换
						$(".result img").attr("src",resp.picurl);
					}
		    	}
		    });
		}
    	//$(".result img").attr("src",resp)
		var numstr = chinanum(num+'');
		$('.bottom_txt').html('第'+numstr+'期');
    	$(".rankimg").show();
    	$(".home").hide();
    	/* 本期竞猜结果 */
        $(".rankimgList a").click(function(){
    		$(".result p").html("第"+numstr+"期竞猜结果")
        	$(".zhezhao2").show();
        })
	}
    
    //补零操作
    function addZero(num){
		if(parseInt(num)<10){
			num= '0'+num;
		}
		return num;
	}
	
    /* 我的中奖*/
    $(".nav div:nth-child(3)").click(function(){ //ajax 请求接口返回数据组装替换 html
    	$.ajax({
			url:'${ctx}/luckykoi/findMyPrize.json',
			type:'post',
			data:'userId='+encodeURIComponent(userId)+'&r='+Math.random(),
			success:function(resp){
				console.log(resp); 
                $(".myprize").empty();
                if(resp.daList && resp.daList.length > 0){
					for(var i=0;i<resp.daList.length;i++){
						var str = "";
						str +='<li>';
						str +='<p class="l">'+ resp.daList[i].activityName +'</p>';
						str +='<p class="r">'+ resp.daList[i].createTime +'</p>';
						str +='</li>';
						$(".myprize").append(str); //替换
// 						 console.log(str); //打印
					}
                }
            }
		});

    	$(".shop").show();//最终展示一开始css标签div隐藏
    });
	$("#btn").click(function(){
		register();
	})
	
	function keyPress() {    
        var keyCode = event.keyCode;    
        if ((keyCode >= 48 && keyCode <= 57))    
       {    
            event.returnValue = true;    
        } else {    
              event.returnValue = false;    
       }    
    }
	
	var bClick = false;
	var timer;
	getCode();
    function getCode(){
    	/*验证码倒计时*/
        var oBtn = document.getElementById("bpcodebtn");
        oBtn.onclick = function(){
            if(bClick == false && checkPhone($("#phone").val())){
		        $('#phone').attr("disabled",true);
	            bClick = true;
	            clearInterval(timer);
            	var loading = weui.loading('正在加载...');	//loading
            	$.ajax({
        			type: "GET",
        			url: "${ctx}/tjhui/getcode.json",
        			data: "phone="+$('#phone').val()+"&bid="+bankuid+"&r="+Math.random(),
        			success: function(resp){
        				loading.hide();
        				console.log(resp)
        				if(resp.msg && resp.msg.length > 0){
        					$("#iosDialog1").hide();
        					weui.alert(resp.msg);
        					$("#iosDialog1").hide();
        					initTimer();
        				}else{
        					$("#bpcodebtn").removeClass("c-c-b");
        					console.log(11)
        					var s = 60;
        	                timer = setInterval(function(){
        	                    s--;
        	                    oBtn.innerHTML = s+"秒后重发";
        	                    
        	                    if(s == 0){
        	                    	initTimer();
        	                    } 
        	                },1000);
        				}
        			},
        			error:function(er){
        				loading.hide();
        				$('#phone').attr("disabled",false);
        				console.log(er);
        			}
            	});
            } 
        };
    }
    
    function initTimer(){
    	bClick = false;
    	$('#phone').attr("disabled",false);
        clearInterval(timer);
        $('#bpcodebtn').html("获取验证码").addClass("c-c-b");
    }
    
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

    /*验证手机号*/
    $(document).on("input propertychange","#phone",function(e){
        if(e.type === "input" || e.orignalEvent.propertyName === "value"){         
            this.value=this.value.replace(/\D/gi,"");
            if(this.value.length == 11){
                if(checkPhone(this.value)){
                	$('#bpcodebtn').attr("disabled",false);
                	$("#bpcodebtn").addClass("c-c-b");
                }
            }else{
            	$('#bpcodebtn').attr("disabled",true);
            	$("#bpcodebtn").removeClass("c-c-b");
            }
        }
    });
  	
    function checkLength(obj,n){
        //obj.value = obj.value.replace(/\D/g,'')
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }
    
  	/**绑定手机**/
  	function register(){
  		
  		var phone = $('#phone').val();
  		var ccode = $('#ccode').val();
  		var iuphone = $("#iuphone").val();
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
			url: "${ctx}/tjhui/register.json",
			data: "phone="+phone+"&code="+ccode+"&bankId="+encodeURIComponent(localStorage.getItem("bankId"))
					+"&bankuid="+localStorage.getItem("bankuid")+"&iuphone="+iuphone+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.msg){
					$("#iosDialog1").hide();
					weui.alert(resp.msg,function(){
						$("#iosDialog1").show();
						$("#ccode").val("");
					});
					initTimer();
				}else if(resp.user){
					setUserLocal(resp.user);
					$('#user_ingot_num').html(resp.user.ingotnum);
					$('#iosDialog1').fadeOut(200);
					if (resp.exists && resp.exists == "n") {
			  			if(resp.isolduser&&resp.isolduser!=""){
							weui.alert(resp.isolduser);
						}
					}
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
  	}
  	
    function setUserLocal(user){
    	//用浏览器存储
		localStorage.setItem("userId", user.id);
		localStorage.setItem("userPhone", user.phone);
		localStorage.setItem("ssdid", user.ssdid);
		userId = user.id;
    }
  	
    
    
    
   $("#c-login-close").click(function(){
	   $("#iosDialog1").hide();
   })
    
    /* 关闭浮层 */
    $(".c-login-close , .prizeBtn , .ruleBtn").click(function(){
    	$(".shop , .rule").hide();
    })
    
    /* 返回 */
    $(".rankimg .titleBar-back").click(function(){
    	$(".rankimg").hide();
    	$(".home").show();
    })
    
    
    //支付
    var oos = "";
    var ispay = false;
    function paykoi(){
		console.log(userId);
    	var result = $(".inp input").val();
    	if(result == ""){
    		weui.alert("请输入您的竞猜结果");
    		return ;
    	}
		
		if(ispay) return;
		ispay = true;
		$.ajax({
			type:"POST",
			url:"${ctx}/luckykoi/buy.json",
			data:{
				"code":result,
				"userId":userId,
				"r":Math.random()
			},
			success:function(req){
				ispay = false;
				if (req.msg && req.msg != null) {
					weui.alert(req.msg);
				} else if (req.orderInfo) {
					oos = req.orderInfo;
					MBS_DIRECT_PAY();
				}
				
				
			},
			error:function(er){
				ispay = false;
				weui.alert("网络超时！");
				console.log(e);
			}
		})
		
		
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
    
    
    var isqrqm = "${isqrqm}";
    /**返回首页**/
  	function toHome(){
  		if(userId && userId!=""){
	    	window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
  		}else{
  			window.history.back();
  		}
    	
  	}
    
	</script>
</body>
</html>