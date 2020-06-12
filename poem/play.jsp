<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title></title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
    	.pk-wrapper{padding: 2rem 1rem 0;}
        .pk-wrapper h1{font-weight:700;font-size: 1.2rem;font-family: "黑体";margin-bottom:2.4rem;}
        .pk-wrapper h1 span{font-weight:700;font-size: 1.4rem;}
        .pk-wrapper h3{font-size: .7rem;color:#666;text-align: left;}
        .button-sp-area{width:70%;margin-top:1rem;}
        .button-sp-area a{padding:.4rem 0;}
        #actInfo{position:absolute;left:0;top:18rem;}
        #actInfo div{float:left;}
        .pk-wrapper .actInfo{background: #f29b76;width: 3.2rem;height:1.4rem;line-height:1.4rem;font-size: .7rem;color:#fff;display: inline-block;}
        .pk-wrapper .triangle{background: #f29b76;display: inline-block;width:0; height:0; border:.7rem solid; border-color: #f6f6f3 #f6f6f3 #f6f6f3 #f29b76;}
        .weui-dialog__bd:first-child{padding-top:1rem;color: #0066b3;}
        .weui-cells_form{border: 0;color:#666;font-size: 14px;background: #eee;}
        .weui-cells_form .textarea{background: none;}
        .weui-textarea-counter{display: none;}
        .weui-textarea{background: transparent;}
        .weui-cells:after{border:0;}
        #iosDialog3 img{width: 2.5rem;margin-right: .2rem;display: inline-block;}
        #iosDialog3 img:last-child{margin-right: 0;}
        .pk-wrapper .answer{width:12rem;background: #eee;font-size: .8rem;color:#666;text-align: left;padding:.2rem .8rem;margin:.8rem 0;}
        .pk-wrapper .active{background: #b5b5b5}
        .pk-wrapper .active span{color: #fff}
        .btn{position: absolute;top: 0;left: 0;right: 0;bottom: 0;width: 100%;opacity: 0;}
        .weui-dialog__title,.weui-dialog__bd,.weui-dialog__btn_primary{color:#0066b3} 
        .weui-dialog__bd{color:#000; line-height: 1.5;}
    </style>
</head>
<body>

    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="shutdown();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate"><span  id="sta"></span></div>
            <!-- <div class="titleBar-close" onclick="shutdown();">关闭</div> -->
        </div>
        <!-- <div class="titleBar-close">关闭</div> -->

        <div class="c-content">
	        <img src="" id="pkbg">
			<div class="pk-wrapper" id="dataArea1">
				<h1>闯关倒计时：<span id="time" class="countdown c-c-r"></span></h1>
                <div class="pk-wrapper" id="dataArea" style="margin-top:2.2rem;">
                
                </div>
            </div>
		</div>

        <div class="js_dialog" id="iosDialog2" style="opacity: 1;display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd c-c-b c-f-s-16"><span class="c-c-b">活动规则</span>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell" style="padding:0 5px;background: #fff;text-align: left;">
                            <div class="weui-cell__bd" style="max-height: 13rem;overflow-y: auto;">
                                即日起至7月15日，在平台参与诗词大会闯关活动，在规定时间内回答正确7道问题完成闯关，支付1分钱即可参与抽奖，一共7关，奖品关关丰富，闯关遇阻还可分享关卡到微信好友/朋友圈邀请好友帮忙闯关，奖品有限，先到先得，赶快行动吧
注意事项：
1.活动所得奖品可以在个人中心-我的奖品中查看
2.活动所得奖品可以在个人中心-我的奖品中查看
3.活动所得奖品可以在个人中心-我的奖品中查看

                            </div>
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-6">关闭</a>
                </div>
            </div>
        </div>

        <div class="js_dialog" id="iosDialog3" style="opacity: 1;display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd c-c-b c-f-s-16"><span class="c-c-b award-title">恭喜您闯关成功！请抽奖</span>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell" style="padding:0 5px;background: #fff;text-align: left;">
                            <div class="weui-cell__bd" style="max-height: 13rem;overflow-y: auto;text-align: center;margin: 0 auto;">
                                <img id="gift1" src="${stax}/assets/images/3-2gift.jpg" onclick="award(1);">
                                <img id="gift2" src="${stax}/assets/images/3-2gift.jpg" onclick="award(2);">
                                <img id="gift3" src="${stax}/assets/images/3-2gift.jpg" onclick="award(3);">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-6" onclick="playContinue();">继续闯关</a>
                </div>
            </div>
        </div>
    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=13"></script>
<script src="${stax}/assets/js/clipboard.js"></script>
<script src="${stax}/assets/js/jhshare.js"></script>
<script>
var quesList; //问题、选项
var paramMap; //其他参数
var index = 0; //获取list数据的下标
var quesNum=1; //计数,对比闯关题数量
var userId = localStorage.getItem("userId"); //用户id
var indexUrl = localStorage.getItem("homeUrl"); //返回首页的URL
var jsonList = []; //存储答题数据
var jsonMap = {};  //存储闯关明细数据
var jsonPker = {}; //存储闯关者表数据
var timeLeft = 0;  //倒计时
//var stationNum; //存储当前闯关数
//var status; //存储闯关状态
var poemPker;
var bankId = localStorage.getItem("bankId");
//var staNum;
var t;
var shareTxt;
var shareUrl;
var giftIndex = "${giftIndex}";

//设置第几题
var N = [
         "零","一", "二", "三", "四", "五", "六", "七", "八", "九"
     ];
var EN = [
         "A", "B", "C", "D", "E", "F", "G", "H"
     ];

   $(function(){
	  //alert(location.href);
	  //alert(localStorage.getItem("userId"));
	   //根据userid发送ajax查询数据
// 	   weui.alert("诗词大会已结束，敬请期待更多精彩活动。");
// 	   return;
	   $.ajax({
		   type:"GET",
		   url:"${ctx}/poem/pkerUser.json?",
		   data:"userId="+encodeURIComponent(userId)+"&r="+Math.random(),
		   success:function(req){
			   if(req.msg!=""&&req.msg!=null){
   					weui.alert(req.msg);
					return;
				}
			   poemPker=req.poemPker;
			   //bankId = req.bankId;
			   
			   $("title").html("第"+req.staNum+"关"); 
			   $("#sta").html("第"+req.staNum+"关");
			   
			   
			   if(req.poemPker.stationNum%7==1){
					 $("#pkbg").prop("src","${stax}/assets/images/pk-bg1.jpg");
				 }else if(req.poemPker.stationNum%7==2){
					 $("#pkbg").prop("src","${stax}/assets/images/pk-bg2.jpg");
				 }else if(req.poemPker.stationNum%7==3){
					 $("#pkbg").prop("src","${stax}/assets/images/pk-bg3.jpg");
				 }else if(req.poemPker.stationNum%7==4){
					 $("#pkbg").prop("src","${stax}/assets/images/pk-bg4.jpg");
				 }else if(req.poemPker.stationNum%7==5){
					 $("#pkbg").prop("src","${stax}/assets/images/pk-bg5.jpg");
				 }else if(req.poemPker.stationNum%7==6){
					 $("#pkbg").prop("src","${stax}/assets/images/pk-bg6.jpg");
				 }else if(req.poemPker.stationNum%7==0){
					 $("#pkbg").prop("src","${stax}/assets/images/pk-bg7.jpg");
				 }
			   
			   
			   
			   /* 闯完未支付,支付未抽奖 */
			   	 if (req.poemPker.status=="3" && giftIndex != "") {
			   		$("#iosDialog3").css("display","block");
			   		 award(giftIndex);
			   	 } else if(req.poemPker.status=="2"||req.poemPker.status=="3"){	 
					$("#iosDialog3").css("display","block");
				
				 /* 回到首页 */
				 }else if(req.poemPker.status=="4"){
					window.location.href = '${ctx}/tjhui/'+indexUrl;
					
				/* 闯关中，加载数据  */  
				 }else if(req.poemPker.status=="1"){			 
					 $('#dataArea').empty();
					 $.ajax({
							type:"POST",
							url:"${ctx}/poem/getQues.json?pkerId="+encodeURIComponent(req.poemPker.id)+"&stationNum="+encodeURIComponent(req.poemPker.stationNum)+"&userId="+encodeURIComponent(userId)+"&r="+Math.random(),
							success:function(data){
								if(data.msg!=""&&data.msg!=null){
				    				weui.alert(data.msg);
									return;
								}
								quesList=data.quesList;
								paramMap=data.paramMap;
								jsonMap.pkerId = data.paramMap.id;
								jsonMap.stationNum = data.paramMap.stationNum;
								jsonPker.id = data.paramMap.id;
								jsonPker.poemId = data.paramMap.poemId;
								jsonPker.stationNum = data.paramMap.stationNum;
								addData();
								timeLeft = data.paramMap.challengeTime;
								countTime();
							}			
						 });
				 }
			   
			   
				
				 
				 shareTxt = '建设银行诗词大会，答题抽奖得好礼，我闯到了第'+req.staNum+'关，请大神帮忙过关';
				 shareUrl = encodeURIComponent('http://tianjin.boyaunite.com/poem/helper.do?pd='+encodeURIComponent(req.pd)+'&n='+encodeURIComponent(req.n));
			  	
		   },
		   error : function(err) {
               loading.hide();
               weui.alert("网络错误，请检查您的网络设置！");
               //onPlayed = false;
           }
	   
	   })
	   	   
	   
	 
	/*  status = ${poemPker.status};
	
	 stationNum = ${poemPker.stationNum};   */

 
        $("#pkbg").width(window.innerWidth);
        $("#pkbg").height(window.innerHeight-44);
		

        
        //console.log('${pd}')
        //console.log(encodeURIComponent('${pd}'))
        /*弹出框3*/
        /* var $iosDialog3 = $('#iosDialog3');
        $('#iosDialog3').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });
        $('.titleBar').on('click', function(){
            $iosDialog3.fadeIn(200);
        }); */ 
        /*弹出框2*/
        var $iosDialog2 = $('#iosDialog2');
        $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });
        $('.weui-navbar-down').on('click', function(){
            $iosDialog2.fadeIn(200);
        }); 

        // 倒计时
        /* var oCd=document.querySelectorAll('.countdown');
        //alert(oCd);
        //未来时间
        var oDate = new Date();
        oDate.setTime(oDate.getTime()+10000)

        function checkTime(i){ //将0-9的数字前面加上0，例1变为01 
         if(i<10) {i = "0" + i;} 
         return i; 
        } 

        function checkDay(i){
            if(!i){return ''}else{i = i + "天"}
            return i;
        }

        function countDown(){
            var now=new Date();
            if(oDate.getTime()<=now.getTime()){
                clearInterval(sTime);
                return;
            }
            var s=parseInt((oDate.getTime()-now.getTime())/1000);
            var d=parseInt(s/86400);
            s%=86400;
            var h=parseInt(s/3600);
            s%=3600;
            var m=parseInt(s/60);
            s%=60;
            for(var i=0;i<oCd.length;i++){
                oCd[i].innerHTML=checkTime(m)+"'"+checkTime(s)+'"';
            }
        }
        countDown();
        var sTime = setInterval(countDown,999); */
     
   });

   
   
   
	//倒计时设置
   function countTime() {
		var startMinutes = parseInt(timeLeft / 60);
		var startSec = parseInt(timeLeft - startMinutes * 60);
		document.getElementById('time').innerHTML = startMinutes + "\'"
				+ startSec + "\"";
		t = setTimeout('countTime() ', 1000);
	
		if (timeLeft == 0) {
			window.clearTimeout(t);
			jsonMap.takeTime = ((paramMap.challengeTime)-timeLeft);
			jsonMap.status = 2;//闯关状态，1成功2失败
	      	  //发送ajax存储数据
	      	  ajaxData();
		        
		        weui.confirm('闯关失败！<br/>快分享给好友帮忙闯关吧！', {
		            title: '',
		            buttons: [{
		                label: '重新闯关',
		                type: 'default',
		                onClick: function(){ window.location.href="${ctx}/poem/playPage.do"; }
		            }, {
		                label: '分享好友',
		                type: 'primary',
		                onClick: function(){
		                	toShare('诗词大会', shareTxt, shareUrl, 'http://tianjin.boyaunite.com/assets/images/poem_share.jpg');
		                	return false;}
		            }]
		        });
		        weui.confirm('闯关失败！', {
		            title: '',
		            buttons: [{
		                label: '重新闯关',
		                type: 'default',
		                onClick: function(){ window.location.href="${ctx}/poem/playPage.do"; }
		            }]
		        });
			  	
		}
		timeLeft = timeLeft - 1;
	}

	
	var curId = 0;
   //加载问题和选项
   function addData(){	     
	   	$('#dataArea').empty();
		da =             			
				'<h3>第'+N[quesNum]+'题：'+quesList[index].content+'</h3>';
		if(quesList[index].id != curId){
			curId= quesList[index].id;
		}
		var j=0;
	   for(var i=index; i<quesList.length;i++){
		   if(quesList[i].id == curId){
			   da+='<div class="answer action-btn" onclick="answerClick('+i+');"><span>'+EN[j]+'. '+quesList[i].opts+'</span></div>';
			   index++;
			   j++;
		   }
	   }
                             
		$('#dataArea').append(da);	

   }
   
 
   
   //点击选项答题
   function answerClick(th){
	var isAnswer = quesList[th].isAnswer;	
	//答题错误
	  if(isAnswer==0){
      		var obj = {};
      		obj.pkerId = paramMap.id;
      		obj.quesId = quesList[th].id;
      		obj.optsId = quesList[th].opId;
      		obj.opts = quesList[th].opts;
      		jsonList.push(obj);
    	
    		jsonMap.takeTime = ((paramMap.challengeTime)-timeLeft);
    		jsonMap.status = 2;//闯关状态，1成功2失败
    		//发送ajax存储数据
    		ajaxData();
    		window.clearTimeout(t); //停止倒计时	
	        weui.confirm('闯关失败！<br/>快分享给好友帮忙闯关吧！', {
	            title: '',
	            buttons: [{
	                label: '重新闯关',
	                type: 'default',
	                onClick: function(){ window.location.href="${ctx}/poem/playPage.do"; }
	            }, {
	                label: '分享好友',
	                type: 'primary',
	                onClick: function(){ toShare('诗词大会', shareTxt, shareUrl,
	        		'http://tianjin.boyaunite.com/assets/images/poem_share.jpg');
	                return false;}
	            }]
	        });
	        weui.confirm('闯关失败！', {
	            title: '',
	            buttons: [{
	                label: '重新闯关',
	                type: 'default',
	                onClick: function(){ window.location.href="${ctx}/poem/playPage.do"; }
	            }]
	        });
	   //答题正确             
	  }else{		
		  quesNum+=1;//计算题数量
		  var obj = {};
    	  obj.quesId = quesList[th].id;
    	  obj.optsId = quesList[th].opId;
    	  obj.opts = quesList[th].opts;
    	  jsonList.push(obj);
		  //判断是否是最后一题,如果是
		  if(quesNum>paramMap.quesNum){			  	
		        jsonPker.status = 2;//闯关状态，1闯关中2闯完未支付3支付未选奖品4结束
		        jsonMap.takeTime = ((paramMap.challengeTime)-timeLeft);
		        jsonMap.status = 1;//闯关状态，1成功2失败	
		        window.clearTimeout(t); //停止倒计时	
		        //发送ajax存储数据
		        ajaxJsonPker();	
   
		  }else{
			  //加载答题数据
			  addData();
		  }		  
	  }	  
   }
 
   var oos = "";
   var count=0;
   /* 抽奖单击事件 */
   function award(index){
	   if(count==0){
		   //闯完未支付
		   if(poemPker.status==2){
			 //跳转支付界面
			 		$("#iosDialog3").hide();
			 		weui.confirm("亲，需随机支付1-2元手机银行支付体验金，支付金额将即时退回至支付账户",function(){
							//$("#iosDialog3").css("display","block");  
			 			  var loading = weui.loading('正在加载...');	//loading
						$.ajax({
			 				type: "POST",
			 				url: "${ctx}/poem/pay.json",
			 				data: "userId="+encodeURIComponent(userId)+"&pkerId="+encodeURIComponent(poemPker.id)+"&bankId="+encodeURIComponent(bankId)+"&giftIndex="+index+"&r="+Math.random(),
			 				success: function(resp){
			 					loading.hide();
			 					if(resp.errMsg!=""&&resp.errMsg!=null){
			 						weui.toast(resp.errMsg, {
			 						    duration: 2000,
			 						    className: 'toast-warn',
			 						    callback: function(){ 
			 						    	return false;  
			 						} 
			 						});
			 					}
			 					
			 					if(resp.orderInfo){	
//			  						alert(resp.orderInfo);
			 						oos = resp.orderInfo;
			 						//$("#iosDialog3").css("display","none");  
// 			 						MBC_PAY();    
			 						MBS_DIRECT_PAY();
			 					}
			 					$("#iosDialog3").show();
			 				},
			 				error : function(err) {
			                     loading.hide();
			                     weui.alert("网络错误，请检查您的网络设置！");
			                     $("#iosDialog3").show();
			                     //onPlayed = false;
			                 }
			 	   		   });	

					},function(){
						$("#iosDialog3").css("display","block");
					});
  
		   }else if(poemPker.status==3){
			   //抽奖
			 var loading = weui.loading('正在加载...');	//loading
			 $.ajax({
			 	type:"GET",
			 	url:"${ctx}/poem/award.json",
			 	data:"pkerId="+poemPker.id+"&userId="+encodeURIComponent(userId)+"&r="+Math.random(),
			 	success:function(resp){
			 		count+=1;//防止多次点击奖品
			 		poemPker.status=resp.poemPker.status;//闯关状态，1闯关中2闯完未支付3支付未选奖品4结束
			 		loading.hide();
			 		$("#gift"+giftIndex).attr("src", resp.toUrl);//改变背景图片
			 		$(".award-title").html("&nbsp;&nbsp;");
					weui.toast(resp.errMsg, {
					    duration: 1000,
					    className: 'toast-warn',
					    callback: function(){ 					    		
					 		if(resp.poemPker.status==4){
					 			window.location.href="${ctx}/poem/success.do?pkerId="+resp.poemPker.id+"";
					 		}
					}
					});
						
					if(resp.sign!=null){ //非正常抽奖失败刷新界面
						window.location.href="${ctx}/poem/playPage.do";
					} 					
			 		

			 	},
			 	error : function(err) {
                    loading.hide();
                    weui.alert("网络错误，请检查您的网络设置！");
                    //onPlayed = false;
                }
			 });   
		   }
		    
	   }else{
		   weui.toast("您已经抽过奖了", {
		        duration: 1000,
		        className: 'toast-warn',
		        callback: function(){ 
		            return false; 
		        }
		   });
	   }
	   
   }
   
   
   
   //继续闯关单击事件
   function playContinue(){
	  
// 	   weui.alert("诗词大会已结束，敬请期待更多精彩活动。");
// 	   return;
	   
	   if(poemPker.status==2||poemPker.status==3){
		   weui.toast("完成抽奖后才能继续闯关", {
		        duration: 1000,
		        className: 'toast-warn',
		        callback: function(){ 
		            return false;  
		        }
		   });
	   }else{
		   var loading = weui.loading('正在加载...');	//loading
			$.ajax({
   			type: "GET",
   			url: "${ctx}/poem/continueBegin.json",
   			data: "userId="+encodeURIComponent(userId)+"&r="+Math.random(),
   			success: function(resp){
   				onPlayd = false;
   				loading.hide(); 
   				if(resp.msg!=""&&resp.msg!=null){
   					$("#iosDialog3").css("display","none");
   					weui.alert(resp.msg, function() {
   						window.location.href = "${ctx}/poem/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
   						+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
   					});
   				} else{
   					window.location.href="${ctx}"+resp.toUrl;
   				}  				

   			},
   			error:function(er){
   				loading.hide();
   				console.log(er);
   			}
       	});
	   }
   }
   

// 	function MBC_PAY(){	
// 		//alert(navigator.userAgent);
// 		if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
// 		   //苹果端
// 			window.location="/mbcpay.b2c ";
// 		} else if (/(Android)/i.test(navigator.userAgent)) {
// 		    //安卓端
// 			window.mbcpay.b2c(oos);
// 		} else {
// 		   //pc端
// 		   weui.alert('请到app上购买！');
// 		}; 
	
// 	}
// 	var oos = "";
// 	function MBC_PAYINFO(){
// 		  return "{" + oos + "}";
// 	}
 
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
	
   //返回按钮单击事件
   function shutdown(){	 
	/*  jsonMap+="\"takeTime\":"+((paramMap.challengeTime * 1000)-timeLeft)+",\"status\":2";//闯关状态，1成功2失败
	 //发送ajax存储数据
  	   jsonList+="]";
  	   jsonMap+="}";
  	   $.ajax({
  		  type:"POST",
  		  url:"${ctx}/poem/saveData.json",
  		//  async: false, //同步请求
  		  data:{
  			  "jsonList":jsonList,
  			  "jsonMap":jsonMap,			  
  		  }  	  
  	   });  	   
  	   jsonList="[";
  	   jsonMap="{";   */	   
  	  //window.location.href="${ctx}/poem/index.do?bankid="+paramMap.bankId+"&userId="+userId+"";
  	 //window.location.href = '${ctx}/tjhui/'+indexUrl;
  	 window.location.href = "${ctx}/poem/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
		+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
   }


 
 	//发送ajax存储闯关答题数据
   function ajaxData(){
	   $.ajax({
		  type:"POST",
		  url:"${ctx}/poem/saveData.json",
		  data:{
			  "jsonList":JSON.stringify(jsonList),
			  "jsonMap":JSON.stringify(jsonMap),
			  "userId":userId
		  }
	  
	   });	   
	   jsonList = [];
   }
   

   
  	//闯关通过后存储的数据
   function ajaxJsonPker(){
	   var loading = weui.loading('正在加载...');	//loading
	   $.ajax({
		  type:"POST",
		  url:"${ctx}/poem/saveData.json",
		  data:{
			  "jsonList":JSON.stringify(jsonList),
			  "jsonMap":JSON.stringify(jsonMap),
			  "jsonPker":JSON.stringify(jsonPker),
			  "userId":userId
		  },
		  success:function(){
			  poemPker.status=2; //闯关状态，1闯关中2闯完未支付3支付未选奖品4结束
			  loading.hide();
			  $("#iosDialog3").css("display","block"); //弹出抽奖提示框
		  },
		  error : function(err) {
              loading.hide();
              weui.alert("网络错误，请检查您的网络设置！");
              //onPlayed = false;
          }
	  
	   });
	   
	   jsonList=[];
	   jsonPker={};
  		
   }
   
	//按钮点击效果
	$(document).on("touchstart", ".action-btn:not(.disable)", function (e) {
	    var $this = $(this);
	    var flag = true;
	    //遍历子类
	    $this.find("*").each(function () {
	        //查看有没有子类触发过active动作
	        if ($(this).hasClass("active")) flag = false;
	    });
	    //如果子类已经触发了active动作，父类则取消active触发操作
	    if (flag) $this.addClass("active");

	});
	$(document).on("touchmove", ".action-btn:not(.disable)", function (e) {
	    if ($(this).hasClass("active")) $(this).removeClass("active");
	});
	$(document).on("touchend", ".action-btn:not(.disable)", function (e) {
	    if ($(this).hasClass("active")) $(this).removeClass("active");
	});
</script>
</body>
</html>