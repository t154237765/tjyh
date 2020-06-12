<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
<title></title>
<link rel="stylesheet" href="${stax}/assets/css/index.css?v=1">
<link rel="stylesheet" href="${stax}/assets/lib/iconfont.css?v=1">
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
</head>
<body>
	<div class="header">
		<div class="middle">比赛结果</div>
	</div>
	<div class="container">
		<div class="time">
			<img src="${stax}/assets/images/wcup/timer.png" alt="">
		</div>
		<div class="top">
			<p>
				<select id="datesel">
				</select>
			</p>
			<p onclick='getData();'>查询</p>
		</div>
		
		<ul id="dataul">
			
		</ul>
		<div class="button" id="subbtn">
			<p>提交结果</p>
		</div>
		
		
		<div class="pop-up3">
			<div class="box">
				<div class="close">
					<img src="${stax}/assets/images/wcup/close.png" alt="">
				</div>
				<div class="text">
					<div style="color: black">
						您还有未参与的赛程哦，是否提交 ?<br/>
						选择后不可更改哦!
						<br/>
					</div>
					<label>确定</label>
				</div>
			</div>
		</div>
		
		
	</div>
	

	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		var datesel = ${data};
		var data = "";
		
		$(function(){
			if(datesel.length > 0){
				for(var i=0; i<datesel.length; i++){
					var selObj = $("#datesel");
				    var value=datesel[i].playDate;
				    selObj.append("<option value='"+value+"'>"+value+"</option>");
				}
			}
			
			$(".pop-up3 label").click(function(){
				submitData();
			});
			$(".close img").click(function(){
				$(".pop-up3").fadeOut(100)
			})
			
		});
		
		function getData(){
			var value=$("#datesel").val();
			$.ajax({
                type: "POST",
                url: "${ctx}/wcup/getGame.json",
                data: "dat="+value+"&r="+Math.random(),
                success: function(resp){
                    if(resp.data && resp.data.length > 0){
                    	data = resp.data;
                    	console.log(data);
                    	fillData();
                    }else{
        				$('#dataul').html("");
        				$('#dataul').append("<li> <p>这天没有比赛哦</p> </li>");
        			}
                },
                error:function(er){
                    console.log(er);
                }
            });
		}
		
		function fillData(){
			$('#dataul').html('');
// 			for(var i=data.length-1;i>=0;i--){
			for(var i=0;i<data.length;i++){
				var intputa = '<input type="number" id="inpa"/>';
				var intputb = '<input type="number" id="inpb"/>';
// 				if (data[i].teamaGoal){
// 					intputa = '<input type="number" id="inpa" value="'+data[i].teamaGoal+'"/>';
// 				}
// 				if (data[i].teambGoal){
// 					intputb = '<input type="number" id="inpb" value="'+data[i].teambGoal+'"/>';
// 				}
				
// 				var wid = data[i].winId ? data[i].winId : "";
				var lables = '<li><label da="1">胜</label> <label da="2">平局</label> <label da="3">胜</label></li>';
// 				if(wid != ""){
// 					if(wid == data[i].teamaId){
// 						lables = '<li><label da="1" class="active on">胜</label> <label da="2">平局</label> <label da="3">胜</label></li>';
// 					}else if(wid == data[i].teambId){
// 						lables = '<li><label da="1">胜</label> <label da="2">平局</label> <label da="3" class="active on">胜</label></li>';
// 					}else if(wid == 0){
// 						lables = '<li><label da="1">胜</label> <label da="2" class="active on">平局</label> <label da="3">胜</label></li>';
// 					}
// 				}
				
				var vli = '<li>'+
								'<ol>'+
									'<li>'+
										'<input type="hidden" id="sid" value="'+data[i].sid+'"/>'+
										'<p class="data">'+data[i].playDate+'</p>'+
										'<p class="timer">'+data[i].playTime+'</p>'+
										'<p class="type">'+data[i].playName+'</p>'+
									'</li>'+
									'<li>'+
										'<div class="left">'+
											'<img src="${stax}'+data[i].apic+'" alt="">'+
											'<p>'+data[i].aname+'</p>'+
										'</div>'+
										'<div class="middle">'+
											'<p style="font-size: 0.58rem; color: #FFD995">vs</p>'+
											'<p>'+
												intputa+'&nbsp;&nbsp;:&nbsp;&nbsp;'+intputb+
											'</p>'+
										'</div>'+
										'<div class="right">'+
											'<img src="${stax}'+data[i].bpic+'" alt="">'+
											'<p>'+data[i].bname+'</p>'+
										'</div>'+
									'</li>'+
									lables+
								'</ol>'+
							'</li>';
				
				$('#dataul').append(vli);
			}
			
			$('#subbtn').show();
			
			fun();
			
			$("ol li label").click(function(){
				$(this).addClass("on").siblings().removeClass("on");
				
			});
		}
		
		var gList = [];
		
		function save(){
			gList = [];

			var unchoose = false;
			var gosub = true;
			var resulttext = "";
			$('#dataul ol').each(function(){
				var sid = $(this).find('#sid').val();
				var ina = $(this).find('#inpa').val();
				var inb = $(this).find('#inpb').val();
				var wid = $(this).find('.on').attr('da');
				if(ina == null || ina == "" || ina == undefined || inb == null || inb == "" || inb == undefined
						 || wid == null || wid == "" || wid == undefined){
					unchoose = true;
				}else{
					if(!checkSide(ina, inb, wid)){
						gosub = false;
						return;
					}
				}
				
				if(wid == undefined) wid = "";
				
				if(ina != "" || inb != "" || wid != ""){
		 			var str = "{" + "\"sid\":\"" + sid
		 			+ "\",\"ina\":\"" + ina
		 			+ "\",\"inb\":\"" + inb
		 			+ "\",\"wid\":" + wid + "}";
		 			gList.push(str);
					
					console.log(sid + "  "+ ina + "  "+ inb + "  "+ wid);
				}
				
				var lt = $(this).find('.left').find('p').html();
				var rt = $(this).find('.right p').html();
				
// 				console.log(lt + '-' + rt + '-->' + ina + ":"+ inb);
				resulttext += lt + '-' + rt + '-->' + ina + ":"+ inb + '<br/>';
			});
			
			if(gList == "" || gList.length <= 0){
				alert('无数据提交');
				return;
			}
			console.log(gList);
			
			if(!gosub){
				alert('比分和胜负不符');
				return;
			}
			
			if(unchoose){
				alert('还有未填的');
				return;
			}else{
				$('.pop-up3 .text div').html(resulttext);
				$('.pop-up3').show();
			}
		}
		
		function checkSide(ina, inb, wid){
			if(ina > inb && wid == 1) return true;
			if(ina == inb && wid == 2) return true;
			if(ina < inb && wid == 3) return true;
			return false;
		}
		
		var isgo = false;
		function submitData(){
			
			if(isgo) return;
			isgo = true;
			console.log('submitData');
			
			$.post("${ctx}/wcup/setResult.json",
				{
					"betList" : '['+ gList.toString()+ ']'
				}, function(data) {
					if(data.state) alert('提交成功');
					if(data.msg) alert(data.msg);
				}
			);
		}
		
		function fun(){
			if(!$("ol li label").hasClass("active")){
		  		$("ol li label").addClass("active")
			}
	  	}
		
		$(function(){
		  	
			
			/**提交按钮**/
			$("#subbtn").on("click",function(){
				save();
	    	});
		})
	</script>
</body>
</html>
