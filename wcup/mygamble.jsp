<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title></title>
<link rel="stylesheet" href="${stax}/assets/css/mySelect.css">
<link rel="stylesheet" href="${stax}/assets/lib/iconfont.css">
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
</head>
<body>
	<div class="header">
		<div class="left" onclick="window.history.back()">
			<i class="Hui-iconfont Hui-iconfont-arrow2-left"></i>返回
		</div>
		<div class="middle">我的竞猜</div>
	</div>
	
	<div class="top">
		<div class="success">
			 我的战果：<span>${gold}锭</span>&nbsp;&nbsp;
			<img src="${stax}/assets/images/wcup/jinyuanbao.png" alt="" style="width:0.57rem;height:0.44rem;">
		</div>
	</div>
	<div class="container">
		
		<ul id="dataul">
			<!-- 
			<p> 
				比赛结果：埃及<span style="color: #FFD995; font-size: 0.36rem;">&nbsp;&nbsp;vs&nbsp;&nbsp;</span>意大利&nbsp;&nbsp;<label
					style="color: #FFD995;">3:1</label>
			</p>
			<li>
				<div class="left">
					<p>日期：</p>
					<p>场次：</p>
					<p>胜方选择：</p>
					<p>比分选择：</p>
					<p>猜输赢津元宝奖励：</p>
					<p>猜比分津元宝奖励：</p>
				</div>
				<div class="right">
					<p>6月15号</p>
					<p>20：00</p>
					<p>埃及胜</p>
					<p>3:1</p>
					<p>1锭</p>
					<p>5锭</p>
				</div>
			</li>
			-->
		</ul>
		
	</div>
	<div class="bottom"></div>
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		var data = ${data};
		
		$(function(){
			if(data.length > 0){
				fillData();
			}
		});
		
		function fillData(){
			for(var i=0;i<data.length;i++){
// 			for(var i=data.length-1;i>=0;i--){
				var prel = "未公布", winBet = "未公布", winPoints = "未公布";
				if(data[i].goala && data[i].goalb){
					prel = data[i].goala+':'+data[i].goalb;
					winBet = data[i].winBet;
					winPoints = data[i].winPoints;
				}
				var vli = '<p>比赛结果：'+data[i].teama+'<span style="color: #FFD995; font-size: 0.36rem;">&nbsp;&nbsp;vs&nbsp;&nbsp;</span>'+data[i].teamb+'&nbsp;&nbsp;'+
								'<label style="color: #FFD995;">'+prel+'</label>'+
							'</p>'+
							'<li>'+
								'<div class="left">'+
									'<p>日期：</p>'+
									'<p>时间：</p>'+
									'<p>胜方选择：</p>'+
									'<p>比分选择：</p>'+
									'<p>猜输赢津元宝奖励：</p>'+
									'<p>猜比分津元宝奖励：</p>'+
								'</div>'+
								'<div class="right">'+
									'<p>'+data[i].playDate+'</p>'+
									'<p>'+data[i].playTime+'</p>'+
									'<p>'+data[i].betName+'</p>'+
									'<p>'+data[i].betPoints+'</p>'+
									'<p>'+winBet+'</p>'+
									'<p>'+winPoints+'</p>'+
								'</div>'+
							'</li>';
				
				$('#dataul').append(vli);
			}
		}
	</script>
</body>
</html>
