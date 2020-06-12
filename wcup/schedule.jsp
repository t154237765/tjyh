<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>


<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title></title>
<link rel="stylesheet" href="${stax}/assets/css/calendar.css">
<link rel="stylesheet" href="${stax}/assets/lib/iconfont.css">
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
</head>
<body>
	<div class="header">
		<div class="left" onclick="window.history.back()">
			<i class="Hui-iconfont Hui-iconfont-arrow2-left"></i>返回
		</div>
		<div class="middle">赛程时间表</div>
	</div>
	<div class="container">
		<p class="title">赛程时间表（北京时间）</p>
		<div style="overflow:scroll;height:12rem;" class="box">
		<table id="datatl">
 			<tr>
				<td>场次</td>
				<td>北京日期</td>
				<td>比赛时间</td>
				<td>对阵双方</td>
			</tr>
<!--			<tr>
				<td>1</td>
				<td>6月9日</td>
				<td>23:00</td>
				<td>俄罗斯-沙特</td>
			</tr>
			<tr>
				<td>1</td>
				<td>6月9日</td>
				<td>23:00</td>
				<td>俄罗斯-沙特</td>
			</tr>
			<tr>
				<td>1</td>
				<td>6月9日</td>
				<td>23:00</td>
				<td>俄罗斯-沙特</td>
			</tr>
			<tr>
				<td>1</td>
				<td>6月9日</td>
				<td>23:00</td>
				<td>俄罗斯-沙特</td>
			</tr>
			<tr>
				<td>1</td>
				<td>6月9日</td>
				<td>23:00</td>
				<td>俄罗斯-沙特</td>
			</tr>
			<tr>
				<td>1</td>
				<td>6月9日</td>
				<td>23:00</td>
				<td>俄罗斯-沙特</td>
			</tr>
			<tr>
				<td>1</td>
				<td>6月9日</td>
				<td>23:00</td>
				<td>俄罗斯-沙特</td>
			</tr>
			<tr>
				<td>1</td>
				<td>6月9日</td>
				<td>23:00</td>
				<td>俄罗斯-沙特</td>
			</tr>
			<tr>
				<td>1</td>
				<td>6月9日</td>
				<td>23:00</td>
				<td>俄罗斯-沙特</td>
			</tr> -->
		</table>
		</div>
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
				var vli = '<tr>'+
								'<td>'+data[i].ind+'</td>'+
								'<td>'+data[i].playDate+'</td>'+
								'<td>'+data[i].playTime+'</td>'+
								'<td>'+data[i].name+'</td>'+
							'</tr>';
				$('#datatl').append(vli);
			}
		}
	</script>
</body>
</html>
