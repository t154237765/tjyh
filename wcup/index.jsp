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
		<div class="left" onclick="toHome()">
			<i class="Hui-iconfont Hui-iconfont-arrow2-left"></i>返回
		</div>
		<div class="middle">足球盛会</div>
	</div>
	<div class="container">
		<div class="time" onclick='goSchedule();'>
			<img src="${stax}/assets/images/wcup/timer.png" alt="">
		</div>
		<div class="top">
			<p onclick='window.location.href="${ctx}/jsp/wcup/rule.jsp";'>活动规则</p>
			<p onclick='goMine();'>我的竞猜</p>
		</div>
		
		<ul id="dataul">
		<!-- 		
			<li>
				<ol>
					<li>
						<p class="data">6月26日</p>
						<p class="timer">02:00</p>
						<p class="type">小组赛</p>
					</li>
					<li>
						<div class="left">
							<img src="${stax}/assets/images/wcup/ensign/Australian.png"
								alt="">
							<p>澳大利亚</p>
						</div>
						<div class="middle">
							<p style="font-size: 0.58rem; color: #FFD995">vs</p>
							<p>
								<span></span>&nbsp;&nbsp;:&nbsp;&nbsp;<span></span>
							</p>
						</div>
						<div class="right">
							<img src="${stax}/assets/images/wcup/ensign/Peru.png" alt="">
							<p>秘鲁</p>
						</div>
					</li>
					<li><label>胜</label> <label>平局</label> <label>胜</label></li>
				</ol>
			</li> 
				-->
		</ul>
		<div class="button" id="subbtn">
			<p>提交选择</p>
		</div>
	</div>

	
		<!-- 弹框 -->
		<div class="pop-up1">
			<div class="box">
				<div class="close">
					<i class="Hui-iconfont Hui-iconfont-close2"></i>
				</div>
				<div class="text">
					至少对一场比赛进行选择才可以提交
					<label>确定</label>
				</div>
			</div>
		</div>
		
		<div class="pop-up2">
			<div class="box">
				<div class="close">
					<i class="Hui-iconfont Hui-iconfont-close2"></i>
				</div>
				<div class="text">
					
				</div>
			</div>
		</div>

		<div class="pop-up3">
			<div class="box">
				<div class="close">
					<i class="Hui-iconfont Hui-iconfont-close2"></i>
				</div>
				<div class="text">
					您还有未参与的赛程哦，是否提交 ?<br/>
					选择后不可更改哦!
					<br/>
					<label>确定</label>
				</div>
			</div>
		</div>

		<div class="pop-up4">
			<div class="box">
				<div class="close">
					<i class="Hui-iconfont Hui-iconfont-close2"></i>
				</div>
				<div class="text">
					是否提交所有竞猜?<br/>
					选择后不可以更改哦!
					<br/>
					<label>确定</label>
				</div>
			</div>
		</div>
		
	</body>
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script type="text/javascript">
		var data = "";
		
		$(function(){
			$("label").click(function(){
				$(".pop-up1").fadeOut(100)
			});
			$(".close i").click(function(){
				$(".pop-up1").fadeOut(100)
			})

			$(".close i").click(function(){
				$(".pop-up2").fadeOut(100)
			})

			$(".pop-up3 label").click(function(){
				$(".pop-up3").fadeOut(100);
				$(".pop-up4").show();
			});
			$(".close i").click(function(){
				$(".pop-up3").fadeOut(100)
			})

			$(".pop-up4 label").click(function(){
				$(".pop-up4").fadeOut(100);
				submitData();
			});
			$(".close i").click(function(){
				$(".pop-up4").fadeOut(100)
			});
			
			$.ajax({
                type: "GET",
                url: "${ctx}/wcup/getGamble.json",
                data: "userId="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
                success: function(resp){
                    if(resp.data && resp.data.length > 0){
                    	data = resp.data;
                    	fillData();
                    	
                    	if(resp.msg){
//                     		alert(resp.msg);
							$(".pop-up2 .text").html(resp.msg);
            				$(".pop-up2").show();
            				
                    		$("ol input").attr("disabled",true);
            				$("ol li label").click(function(){
//             					alert(resp.msg);
            					$(".pop-up2 .text").html(resp.msg);
            					$(".pop-up2").show();
            				});
            				unsub();
            				/**提交按钮**/
            				$("#subbtn").on("click",function(){
            					$(".pop-up2 .text").html(resp.msg);
            					$(".pop-up2").show();
            		    	});
                    	}
                    }else{
//                     	$(".container").css("background","url(${stax}/assets/images/wcup/bg.jpg) no-repeat 100% 100%");
//                     	$(".container").css("background-size","100% 100%");
//                     	$(".container").css("height","5.95rem");
                    	$("body").css("overflow","hidden");
        				$('#dataul').html("");
        				$('#dataul').append("<li class='without'> <p>活动已结束，近期将按照活动规则为符合条件用户瓜分3万津元宝。</p> </li>");
        				
//         				unsub();
        				$('#subbtn').hide();
        			}
                },
                error:function(er){
                    console.log(er);
                }
            });
		});
		
		function fillData(){
			
			var ischose = false;
// 			for(var i=data.length-1;i>=0;i--){
			for(var i=0;i<data.length;i++){
				var intputa = '<input type="number" id="inpa"/>';
				var intputb = '<input type="number" id="inpb"/>';
				if (data[i].agoal){
					intputa = '<input type="number" id="inpa" value="'+data[i].agoal+'"/>';
					ischose = true;
				}
				if (data[i].bgoal){
					intputb = '<input type="number" id="inpb" value="'+data[i].bgoal+'"/>';
					ischose = true;
				}
				
				var wid = data[i].wid ? data[i].wid : "";
				var lables = '<li><label da="1">胜</label> <label da="2">平局</label> <label da="3">胜</label></li>';
				if(wid != ""){
					if(wid == data[i].aid){
						lables = '<li><label class="active on">胜</label> <label>平局</label> <label>胜</label></li>';
					}else if(wid == data[i].bid){
						lables = '<li><label>胜</label> <label>平局</label> <label class="active on">胜</label></li>';
					}else{
						lables = '<li><label>胜</label> <label class="active on">平局</label> <label>胜</label></li>';
					}
					ischose = true;
				}
				
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
			
			if(!ischose){
// 				$('#subbtn').show();
				
				$("ol li label").click(function(){
					$(this).addClass("on").siblings().removeClass("on");
				});
				
// 				$(document).on("input propertychange",function(e){
				$('input').bind('input propertychange', function(e) {
			        if(e.type === "input" || e.orignalEvent.propertyName === "value"){         
			            this.value=this.value.replace(/[^0-9]/g,"");
			            if(this.value.length>3){
			            	this.value = this.value.substr(0,3);
			            }
			        }
			    });
				
				/**提交按钮**/
				$("#subbtn").on("click",function(){
					save();
		    	});
			}else{
				$("ol input").attr("disabled",true);
				$("ol li label").click(function(){
					
				});
				unsub();
			}
			
			fun();
		}
			
		function unsub(){
			$(".button").css("background","url(${stax}/assets/images/wcup/button1.png) no-repeat 100% 100%");
			$(".button").css("background-size","100% 100%");
		}
		
		var gList = [];
		
		function save(){
			gList = [];

			var unchoose = false;
			var gosub = true;
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
		 			+ "\",\"wid\":\"" + wid + "\"}";
		 			gList.push(str);
					
					console.log(sid + "  "+ ina + "  "+ inb + "  "+ wid);
				}
			});
			
			if(!gosub){
				$(".pop-up2 .text").html('请比分选择与输赢选择保持一致');
				$(".pop-up2").show();
				return;
			}
			
			if(gList == "" || gList.length <= 0){
				$(".pop-up1").show();
				return;
			}
			console.log(gList);
			
			if(unchoose) $(".pop-up3").show();
			else $(".pop-up4").show();
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
			
			$.post("${ctx}/wcup/bet.json",
				{
					"userId" : localStorage.getItem("userId"),
					"betList" : '['+ gList.toString()+ ']'
				}, function(data) {
					console.log(data);
					if(data.state){
						window.location.href = "${ctx}/wcup/selected.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
					}
					if(data.msg){
// 						alert(data.msg);
						$(".pop-up2 .text").html(data.msg);
    					$(".pop-up2").show();						
					}
				}
			);
		}
		
		function goSchedule(){
			window.location.href = "${ctx}/wcup/schedule.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
		}
		
		function goMine(){
			window.location.href = "${ctx}/wcup/mygamble.do?userId="+encodeURIComponent(localStorage.getItem("userId"));
		}
		
		/**返回首页**/
	  	function toHome(){
	  		window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
	  	}
	  	
	  	
	  	function fun(){
	  		$('ol li label').each(function(){
	  			if(!$(this).hasClass("active")){
			  		$(this).addClass("active")
				}
	  		});
// 			if(!$("ol li label").hasClass("active")){
// 		  		$("ol li label").addClass("active")
// 			}
	  	}
	  	
	</script>
</body>
</html>
