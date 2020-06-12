<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>慧查询</title>
  <meta name="keywords" content="user">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
  <style>
  *{margin:0;padding:0;list-style:none;}
  input[type=button], input[type=submit], input[type=file], button { cursor: pointer; -webkit-appearance: none; } 
  .titleBar-back img{width:0.18rem;}
  html,body{width:100%;background:#A6CBE8;}
  	.container{width:7.5rem;height:11.26rem;background:url(${stax}/assets/images/u0.jpg) no-repeat 100% 100%;background-size:100% 100%;margin-top:44px;}
  	.cont{widht:100%;text-align:center;margin:auto;display:flex;align-items:center;justify-content:center;margin-top:5.5rem;}
  	.inp{width:50%;margin-right:0.5rem;height:0.6rem;}
  	.query{width:1.2rem;height:0.6rem;text-align:center;background:aliceblue;}
  	.contact{background:#FFCC00;width:2.5rem;height:0.6rem;text-align:center;line-height:0.6rem;border-radius:0.5rem;font-size:0.3rem;margin:auto;margin-top:0.2rem;}
  	.hint{width:100%;height:100%;background:rgba(0,0,0,0.4);position:fixed;top:0;z-index:11;}
  	.hintCont{width:6rem;height:5rem;background:#fff;border-radius:0.2rem;position:absolute;top:4.5rem;left:0;right:0;margin:auto;}
  	.hintTitle{width:100%;display:flex;align-items:center;}
  	.hintTitle p{width:50%;text-align:center;font-size:0.3rem;color:#199ED8;font-weight:bold;margin-top:0.2rem;margin-bottom:0.2rem;}
  	ul{width:100%;height:3rem;overflow:auto;}
  	ul li{width:100%;display:flex;align-items:center;margin-bottom:0.1rem;}
  	ul li div{width:50%;text-align:center;font-size:0.3rem;}
  	ul li div:nth-child(2){display:flex;align-items:center;justify-content:center;font-size:0.3rem;}
  	.tel{width:0.3rem;margin-left:0.1rem;}
  	.phone{font-size:0.3rem;}
  	.close{width:3rem;height:0.7rem;background:#199ED8;border-radius:0.15rem;text-align:center;line-height:0.7rem;color:#fff;font-size:0.3rem;position:absolute;bottom:0.2rem;left:0;right:0;margin:auto;}
  	.listCont{width:6.6rem;height:3rem;background:#DDECF7;border:1px solid #000;margin:auto;margin-top:0.3rem;border-radius:0.15rem;visibility:hidden;overflow:auto;}
  	.listTitle div{display:flex;align-items:center;}
  	.listTitle div p:nth-child(1){margin-right:0.4rem;}
  	.listTitle p{margin-top:0.1rem;}
  	.listTitle , .lisTxt{padding:0 0.3rem;}
  	.lisTxt{margin-top:0.2rem;}
  	.ul{display:flex;}
  	.txt_right p{height:1.05rem;line-height:0.35rem;}
  	.txt_left {text-align:center;}
  	.txt_right{text-align:left;}
  	.left_list{vertical-align:middle;height:1.05rem;}
  	.txt_middle{width:1.2rem;display:flex;justify-content:center;}
  	.dot{width:0.18rem;height:.18rem;border-radius:0.18rem;background:#BEBEBC;margin:auto;}
  	.wire{width:2px;height:0.8rem;background:#DCDCDC;margin:auto;}
  	.wire:nth-child(2){height:0.75rem;}
  	.txt_middle ol{margin-top:0.01rem;}
  	.status{width:0.44rem;height:0.44rem;background:url(${stax}/assets/images/loaninfos.png) no-repeat 100% 100%;background-size:100% 100%;}
  	.txt_left p {
	    word-break: keep-all;
	    word-wrap: break-word; 
		}
  </style>
  <script src="${stax}/assets/js/jquery.min.js"></script>
  <script src="${stax}/assets/js/rem.js"></script>
</head>
<body id="box">
	<div class="titleBar">
         <div class="titleBar-back">
            <img src="${stax}/assets/images/history.png" />&nbsp;返回
         </div>
         <div class="titleBar-text am-text-truncate">慧查询</div>
    </div>
	<div class="container">
		<div class="cont">
			<input class="inp" type="text" placeholder="请输入您的合同编号">
			<button class="query">查询</button>
		</div>
		<p style="color:#fff;font-size:0.28rem;text-align:center;margin-top:0.2rem;">通过输入合同编号可查询最新的贷款进度~</p>
		<div class="listCont">
			<div class="listTitle">
				<!-- <p>合同编号：<span>121212121212121212</span></p>
				<div>
					<p>贷款银行：<span>津南支行</span></p>
					<p>联系人：<span>张三</span></p>
				</div> -->
			</div>
			<div class="lisTxt">
				<div class="ul">
					<div class="txt_left">
<!-- 						<div class="left_list"> -->
<!-- 							<p>2019.08.12</p> -->
<!-- 							<p>18:59:59</p> -->
<!-- 						</div> -->
						
					</div>
					<div class="txt_middle">
<!-- 						<ol> -->
<!-- 							<li class="status"></li> -->
<!-- 							<li> -->
<!-- 								<p class="wire"></p> -->
<!-- 								<p class="dot"></p> -->
<!-- 							</li> -->
<!-- 						</ol> -->
						<ol>
<!-- 							<li class="status"></li> -->
						</ol>
					</div>
					<div class="txt_right">
<!-- 						<p>已付款</p> -->
					</div>
				</div>
			</div>
		</div>
		
		<div class="contact">联系我们</div>
	</div>
	
	<!-- 联系我们 -->
	<div class="hint"style="display:none;">
		<div class="hintCont">
			<div class="hintTitle">
				<p>银行</p>
				<p>联系电话</p>
			</div>
			<ul>
<!-- 				<li> -->
<!-- 					<div>津南建行</div> -->
<!-- 					<div> -->
<!-- 						<p class="phone">15000000000</p> -->
<%-- 						<img class="tel" alt="" src="${stax}/assets/images/tel-01.png"> --%>
<!-- 					</div> -->
<!-- 				</li> -->
			</ul>
			<div class="close">我知道了</div>
		</div>
	</div>
</body>
	<script>
	var indexUrl = localStorage.getItem("homeUrl");
	$(".query").click(function(){
		//$(".listCont ol").empty();
		selectLoanInfos();
		$(".listCont").css("visibility","visible");
	});
	//上拉加载更多
	var off_on = true;
	$('ol').scroll(function() {
	    //当时滚动条离底部60px时开始加载下一页的内容
	    if (($(this)[0].scrollTop + $(this).height() + 60) >= $(this)[0].scrollHeight) {
	        //这里用 [ off_on ] 来控制是否加载 （这样就解决了 当上页的条件满足时，一下子加载多次的问题啦）
	        if (off_on) {
	            off_on = false;

	        }
	    }
	});
	
	//查询贷款记录
	function selectLoanInfos(){
		var contractNo = $(".inp").val();
		if(contractNo != ""){
			$.ajax({
		           type: "GET",
		           url: "${ctx}/loan/selectloaninfos.json",
		           data: "contractNo="+contractNo+"&r="+Math.random(),
		           success: function(resp){
		        	   console.log(resp.data);
		        	   $(".txt_right , .txt_middle ol , .txt_left , .listTitle").empty();
		               var li = "";
		               if(resp.data&&resp.data!=""){
		            	   var data = resp.data[0];
		            	   var leftTxt,middleTxt,rightTxt;
		            	   var date = '<p>合同编号：<span>'+data.contractNo+'</span></p><div><p>贷款银行：<span>'+data.loanBank+'</span></p><p>联系人：<span>'+data.userName
+'</span></p></div>';
							$(".listTitle").append(date);
							for(var i = 0; i < data.infos.length; i++){
								if(data.infos.length <= 1){
									var resultTime = data.infos[0].resultTime.split(" ");
									leftTxt = '<div class="left_list"><p>'+resultTime[0]+'<br>'+resultTime[1]+'</p></div>';
									middleTxt = '';
									rightTxt = '<div class="txt_right"><p>'+data.infos[0].curDegree.substring(2,data.infos[0].curDegree.length)+'</p></div>';
								}else{
									var resultTime = data.infos[i].resultTime.split(" ");
									leftTxt = '<div class="left_list"><p>'+resultTime[0]+'<br>'+resultTime[1]+'</p></div>';
									rightTxt = '<p>'+data.infos[i].curDegree.substring(2,data.infos[i].curDegree.length)+'</p>';
									
								}
								$(".txt_middle ol").html('<li class="status"></li>');
								$(".txt_left").append(leftTxt);
								
								$(".txt_right").append(rightTxt);
							};
							for(var i = 0; i < data.infos.length-1; i++){
								middleTxt = '<li><p class="wire"></p><p class="dot"></p></li>';
								
								$(".txt_middle ol").append(middleTxt);	
							}
							
		               }
		           },
		           error:function(er){
		               loading.hide();
		               console.log(er);
		           }
		        });
		}
	}
	
 	
	$(".contact").click(function(){
		$(".hint").show();
	});
	$(".close").click(function(){
		$(".hint").hide();
	});
	
	/* 联系我们  */
	var off_on2 = true;
	$('ul').scroll(function() {
	    //当时滚动条离底部60px时开始加载下一页的内容
	    if (($(this)[0].scrollTop + $(this).height() + 60) >= $(this)[0].scrollHeight) {
	        //这里用 [ off_on ] 来控制是否加载 （这样就解决了 当上页的条件满足时，一下子加载多次的问题啦）
	        if (off_on) {
	            off_on2 = false;
	        }
	    }
	});
	
	$(".titleBar-back").click(function(){
		window.location.href = '${ctx}/tjhui'+indexUrl;
		//window.history.back();
	})
	
	</script>
</html>
