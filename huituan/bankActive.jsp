<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>网银话费大作战</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css" />
  	<style type="text/css">
        *{
        	padding:0;
        	margin:0;
        	list-style:none;
        }
        @font-face{font-family:FZPWJT;src:url(${stax}/assets/fonts/FZPWJW.TTF);}
        @font-face{font-family:FZDHJT;src:url(${stax}/assets/fonts/fzdhjt.ttf);}
        html,body{width:100%;height:100%;background:#2D7DF4;}
		#box{width:100%;height:9.78rem;padding-top:2.26rem;background:url(${stax}/assets/images/qrqm/bankBack.jpg) no-repeat 100% 100%;background-size:100% 100%;}
		.titleBar{width:90%;padding:0% 5%;height:0.88rem;z-index:11;font-size:0.3rem;color:#fff;display:flex;align-items:center;text-align:center;background:#08B6F2;}
        .titleBar-back{display:flex;align-items:center;width:25%;}
        .titleBar-text{width:50%;text-align:center;font-size:0.36rem;}
        .titleBar-back img{width:0.16rem;}
        .boxCont{width:6.6rem;height:7.9rem;padding-top:0.5rem;background:#fff;border-radius:0.5rem;margin:auto;}
        .exchangeTitle{font-family:FZPWJT;font-size:0.26rem;color:#fff;width:2.3rem;height:0.6rem;background:#F9612C;border-radius:0.2rem;text-align:center;line-height:0.6rem;margin:auto;margin-top:-8.7rem;}
		.top{width:100%;display:flex;align-items:end;justify-content:space-around;}
		.Div1 , .Div3{width:1.74rem;height:0.57rem;text-align:center;line-height:0.57rem;background:#457EFF;border-radius:0.1rem;font-size:0.3rem;color:#fff;}
		.Div2{font-size:0.18rem;color:#457EFF;margin-top:-0.12rem;}
		.Div2 span{font-size:0.24rem;color:#FA453E;}
		.boxCont ul{width:90%;margin:auto;}
		.boxCont ul li{display:flex;align-items:center;justify-content:flex-end;margin:auto;margin-top:0.2rem;}
		.boxCont ul li:nth-child(1){width:5.5rem;height:2.1rem;background:url(${stax}/assets/images/pcDzp/charge-1.png) no-repeat 100% 100%;background-size:100% 100%;}
    	.boxCont ul li:nth-child(2){width:5.5rem;height:2.1rem;background:url(${stax}/assets/images/pcDzp/charge-2.png) no-repeat 100% 100%;background-size:100% 100%;}
    	.boxCont ul li:nth-child(3){width:5.5rem;height:2.1rem;background:url(${stax}/assets/images/pcDzp/charge-3.png) no-repeat 100% 100%;background-size:100% 100%;}
		.boxCont li p{font-size:0.28rem;color:#D11C15;width:1.5rem;margin-right:0.3rem;height:0.47rem;background:#FFF6D9;border-radius:0.1rem;text-align:center;line-height:0.47rem;font-family:FZDHJT;}

		/* 中奖记录  */
		.prizeList_body , .exchangeList_body{width:100%;height:100%;background:rgba(0,0,0,0.4);position:fixed;top:0;}
		.prizeList_box , .exchangeList_box{width:6.6rem;height:6rem;background:#fff;border-radius:0.15rem;position:absolute;top:4rem;left:0;right:0;margin:auto;}
		.close img{width:0.6rem;position:absolute;top:-0.3rem;right:-0.2rem;}
		.prizeList_cont , .exchangeList_cont{width:90%;padding:0% 5%;}
		.prizeList_title , .exchangeList_title{width:100%;display:flex;align-items:center;}
		.prizeList_title p{width:50%;text-align:center;font-size:0.3rem;color:#2F79F4;}
		.exchangeList_title p{width:33%;text-align:center;font-size:0.3rem;color:#2F79F4;}
		.prizeList_cont ul , .exchangeList_cont ul{width:100%;height:3.5rem;overflow:auto;}
		.prizeList_cont ul li , .exchangeList_cont ul li{width:100%;display:flex;align-items:center;margin-top:0.24rem;}
		.prizeList_cont li p{width:50%;text-align:center;font-size:0.3rem;}
		.exchangeList_cont li p{width:33%;text-align:center;font-size:0.3rem;}
		.prizeListBtn , .exchangeListBtn{width:100%;text-align:center;}
		.prizeListBtn button , .exchangeListBtn button{width:1.74rem;height:0.57rem;text-align:center;line-height:0.57rem;background:#457EFF;border-radius:0.1rem;font-size:0.3rem;color:#fff;border:0;margin:auto;margin-top:0.2rem;}
		.weui-dialog__btn_primary{color:#08B6F2;}
</style>

</head>
<body>
	<div class="titleBar" >
		<div class="titleBar-back">
		    <img src="${stax}/assets/images/history.png" />&nbsp;返回
		</div>
		<div class="titleBar-text am-text-truncate">网银话费大作战</div>
	</div>
    <div id="box">
    	<div class="boxCont">
    		<div class="top">
    			<div class="Div1">中奖纪录</div>
    			<div class="Div2">当前拥有<span>0元</span>兑换券</div>
    			<div class="Div3">兑换纪录</div>
    		</div>
    		<ul>
<!--     			<li><p>立即兑换</p></li> -->
<!--     			<li><p>立即兑换</p></li> -->
<!--     			<li><p>立即兑换</p></li> -->
    		</ul>
    	</div>
    	<div class="exchangeTitle">兑换专区</div>
    </div>
    
    <!-- 中奖纪录 -->
    <div class="prizeList_body" style="display:none;">
    	<div class="prizeList_box">
    		<div class="close"><img src="${stax}/assets/images/pcDzp/close.png" /></div>
    		<p style="color:#333;font-size:0.4rem;text-align:center;margin-bottom:0.1;margin-top:0.2;">中奖纪录</p>
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
    		<p style="color:#333;font-size:0.4rem;text-align:center;margin-bottom:0.1rem;margin-top:0.2rem;">兑换纪录</p>
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
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/rem.js"></script>
<script>
	
    var uid = localStorage.getItem("userId");
    var startIndex1 = 0;
    var startIndex2 =0;
    var timers =null;
    /* 获取话费券  */
	$.ajax({
		type : "post",
		url : "${ctx}/netsilver/resetcodenum.json",
		data : "userId="+encodeURIComponent(localStorage.getItem("userId")),
		success : function(resp) {   				
			$(".Div2 span").html(resp.codeMoney+"元")
							
		}
	});
	//中奖记录
	function prizeList(){
		$.ajax({
    		type : "post",
			url : "${ctx}/netsilver/receiveinfos.json",
			data : "userId="+encodeURIComponent(localStorage.getItem("userId"))+"&start="+startIndex1,
			success : function(resp) {   					
				console.log(resp)
				
				$(".prizeList_cont ul").empty();
				if(resp.msg && resp.msg != ""){
					weui.alert(resp.msg)
				}else{
					startIndex1 = 5;
					var li="";
					for(var i = 0; i< resp.datas.length; i++){
						li+="<li><p>"+resp.datas[i].createTime+"</p><p>"+resp.datas[i].name+"</p></li>";
					}
					$(".prizeList_cont ul").append(li);
				}
			}
    	});
	};
	$(".Div1").click(function(){
		startIndex1 = 0;
		$(".prizeList_body").show();
		prizeList();	
	});
	$('.prizeList_cont ul').scroll(function() {
	    //当时滚动条离底部60px时开始加载下一页的内容
	    if (($(this)[0].scrollTop + $(this).height() + 40) >= $(this)[0].scrollHeight) {
	        clearTimeout(timers);
	        //这里还可以用 [ 延时执行 ] 来控制是否加载 （这样就解决了 当上页的条件满足时，一下子加载多次的问题啦）
	        timers = setTimeout(function() {
	        	
	            $.ajax({
	        		type : "post",
	    			url : "${ctx}/netsilver/receiveinfos.json",
	    			data : "userId="+encodeURIComponent(localStorage.getItem("userId"))+"&start="+startIndex1,
	    			success : function(resp) { 
	    				if(resp.msg && resp.msg != ""){
	    					weui.alert(resp.msg)
	    				}else{
	    					startIndex1 += 5;
	    					var li="";
	    					for(var i = 0; i< resp.datas.length; i++){
	    						li+="<li><p>"+resp.datas[i].createTime+"</p><p>"+resp.datas[i].name+"</p></li>";
	    					}
	    					$(".prizeList_cont ul").append(li);
	    				}
	    			}
	        	});
	            
	        }, 300);
	    }
	});
	
	
	
	var off_on = true;
	 $('.exchangeList_cont ul').scroll(function() {
	        if (($(this)[0].scrollTop + $(this).height() + 40) >= $(this)[0].scrollHeight) {
	            //这里用 [ off_on ] 来控制是否加载 （这样就解决了 当上页的条件满足时，一下子加载多次的问题啦）
	            if (off_on) {
	                off_on = false;
	                $.ajax({
	            		type : "post",
	        			url : "${ctx}/netsilver/exinfos.json",
	        			data : "userId="+encodeURIComponent(localStorage.getItem("userId"))+"&start="+startIndex2,
	        			success : function(resp) {  
	        				startIndex2 += 5;
	        				if(resp.msg && resp.msg != ""){
	        					weui.alert(resp.msg)
	        				}else{
	        					var li="";
	        					for(var i = 0; i< resp.exdatas.length; i++){
	        						li+="<li><p>"+resp.exdatas[i].exchangeTime+"</p><p>"+resp.exdatas[i].proName+"</p><p>"+resp.exdatas[i].payMoney+"元</p></li>";
	        					}
	        					$(".exchangeList_cont ul").append(li);
	        					off_on = true;
	        				}
	        			}
	            	});
	            }
	        }
	    });
	
	
	/* 兑换记录  */
	function exchangeList(){
		$.ajax({
    		type : "post",
			url : "${ctx}/netsilver/exinfos.json",
			data : "userId="+encodeURIComponent(localStorage.getItem("userId"))+"&start="+startIndex2,
			success : function(resp) {   
				startIndex2 = 5;
				$(".exchangeList_cont ul").empty();
				if(resp.msg && resp.msg != ""){
					weui.alert(resp.msg)
				}else{
					var li="";
					for(var i = 0; i< resp.exdatas.length; i++){
						li+="<li><p>"+resp.exdatas[i].exchangeTime+"</p><p>"+resp.exdatas[i].proName+"</p><p>"+resp.exdatas[i].payMoney+"元</p></li>";
					}
					$(".exchangeList_cont ul").append(li);
				}
				
				
			}
    	});
	};
	
	
	$(".Div3").click(function(){
		startIndex2 = 0;
		$(".exchangeList_body").show();
		exchangeList();
	})
	
	/* 获取兑换商品信息 */
	getproducts();
	function getproducts(){
		$.ajax({
    		type : "post",
			url : "${ctx}/netsilver/getproducts.json",
			success : function(resp) {   					
				console.log(resp)
				if(resp.prodDatas || resp.prodDatas != ""){
					for(var i = 0; i < resp.prodDatas.length ; i++){
						var element = "<li><p id='"+resp.prodDatas[i].pId+"'>立即兑换</p></li>";
						$(".boxCont ul").append(element)
					}
				};
				$(".boxCont ul li p").click(function(){
					var prodId = $(this).attr("id");
					$.ajax({
		                type : "POST",
		                url : "${ctx}/netsilver/checkcodenum.json",
		                data : "userId="+encodeURIComponent(localStorage.getItem("userId"))+"&prodId="+encodeURIComponent(prodId),
		                success : function(resp) {
		                	if(resp.status=="0"){
		                		if(resp.isPay&&resp.isPay=="1"){
		                			weui.confirm(resp.msg,function(){
		                				exphonebycode(prodId);
		                			},function(){
		        	   			   });
		                		}else{
		                			weui.alert(resp.msg);
		                		}
		                	}else if(resp.status=="1"){
		                		exphonebycode(prodId);
		                	}
		                },
		                error : function(data) {
		                    loading.hide();
		                    alert("网络错误，请检查您的网络设置！");
		                }
		       		});
				})
			}
    	});
	}
	
	function exphonebycode(e){
		$.ajax({
            type : "POST",
            url : "${ctx}/netsilver/exphonebycode.json",
            data : "userId="+encodeURIComponent(localStorage.getItem("userId"))+"&prodId="+encodeURIComponent(e)+"&type=app",
            success : function(resp) {
               if(resp.status=="1"){
            	   resetCodeNum();
            	   weui.alert(resp.msg+"兑换成功");
               }else if(resp.status=="0"){
            	   if(resp.payUrl&&resp.payUrl!=""){
              	       oos = resp.payUrl;
 					   MBS_DIRECT_PAY();
            	   }else{
            		   weui.alert(resp.msg);
            	   }
               }
            },
            error : function(data) {
                loading.hide();
                alert("网络错误，请检查您的网络设置！");
            }
        });
	}
	
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

	
	$(".exchangeListBtn button , .prizeListBtn button , .close img").click(function(){
		$(".exchangeList_body , .prizeList_body").hide();
	});
	
	$(".titleBar-back").click(function(){
		window.history.back();
	})
	
</script>
</body>
</html>
