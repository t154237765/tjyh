<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title></title>
<link rel="stylesheet" href="${stax}/assets/css/select.css">
<link rel="stylesheet" href="${stax}/assets/lib/iconfont.css">
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
</head>
<body>
	<div class="header">
		<div class="left" onclick="window.history.back()">
			<i class="Hui-iconfont Hui-iconfont-arrow2-left"></i>返回
		</div>
		<div class="middle">选择完成</div>
	</div>
	<div class="container">
		<div class="success">
			<img src="${stax}/assets/images/wcup/success.png" style="width:0.65rem;height:0.65rem" alt=""> 选择完成
		</div>
		<p>您已完成${tomorrow}比赛队伍的选择，可在“我的竞猜”中查看，敬请期待${afterTomorrow}比赛公布结果</p>
		<ul id="dataul">
			<p style="color: #F2D100">您的选择为：</p>
<!-- 			
			<li>
				<div class="left">
					<p>场次：</p>
					<p>胜方选择：</p>
					<p>比分选择：</p>
				</div>
				<div class="right">
					<p>02:00</p>
					<p>阿根廷</p>
					<p>4:1</p>
				</div>
			</li> -->
		</ul>
	</div>
	
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
				var vli = '<li>'+
								'<div class="left">'+
									'<p>场次：</p>'+
									'<p>胜方选择：</p>'+
									'<p>比分选择：</p>'+
								'</div>'+
								'<div class="right">'+
									'<p>'+data[i].playTime+'</p>'+
									'<p>'+data[i].swin+'</p>'+
									'<p>'+data[i].agoal+':'+data[i].bgoal+'</p>'+
								'</div>'+
							'</li>';
				
				$('#dataul').append(vli);
			}
		}
	</script>
	
</body>
</html>
