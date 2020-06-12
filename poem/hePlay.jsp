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
    	.pk-wrapper{padding: 0 1rem 0;}
        .pk-wrapper h1{font-weight:700;font-size: 1.2rem;font-family: "黑体";}
        .pk-wrapper h1 span{font-weight:700;font-size: 1.4rem;}
        .pk-wrapper h3{font-size: .7rem;color:#999;text-align: left;}
        .pk-wrapper #dataArea{padding: 4rem 1rem 0;}
        .button-sp-area{width:70%;margin-top:1rem;}
        .button-sp-area a{padding:.4rem 0;}
        #actInfo{position:absolute;left:0;top:18rem;}
        #actInfo div{float:left;}
        .pk-wrapper .actInfo{background: #f29b76;width: 3.2rem;height:1.4rem;line-height:1.4rem;font-size: .7rem;color:#fff;display: inline-block;}
        .pk-wrapper .triangle{background: #f29b76;display: inline-block;width:0; height:0; border:.7rem solid; border-color: #f6f6f3 #f6f6f3 #f6f6f3 #f29b76;}
        .weui-dialog__bd:first-child{padding-top:1rem;color: #09b6f2;}
        .weui-cells_form{border: 0;color:#666;font-size: 14px;background: #eee;}
        .weui-cells_form .textarea{background: none;}
        .weui-textarea-counter{display: none;}
        .weui-textarea{background: transparent;}
        .weui-cells:after{border:0;}
        #iosDialog3 img{width: 3rem;float: left;margin-right: .3rem;}
        #iosDialog3 img:last-child{margin-right: 0;}
        .pk-wrapper .answer{width:12rem;background: #eee;font-size: .8rem;color:#666;text-align: left;padding:.2rem .8rem;margin:.8rem 0;}
        .weui-dialog__ft{font-size:17px;}
        .container{padding-top:0;}
        .pk-wrapper .active{background: #e3e3e3}
    </style>
</head>
<body>

    <div class="container">
       <%--  <div class="titleBar">
            <div class="titleBar-back" onclick="window.history.back()">
                <i class="fa fa-angle-left" aria-hidden="true"></i>返回
            </div>
            <div class="titleBar-text am-text-truncate">第${statNum}关</div>
            <div class="titleBar-close" onclick="shutdown();">关闭</div>
        </div>
        <div class="titleBar-close">关闭</div> --%>

        <div class="c-content">
	        <img src="" id="pkbg">
			<div class="pk-wrapper" id="dataArea1">
			<h1>闯关倒计时：<span id="time" class="countdown c-c-r"></span></h1>
               <div class="pk-wrapper" id="dataArea">
               
               </div> 
            </div>
		</div>

        <div class="js_dialog" id="iosDialog1" style="opacity: 1;display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd c-c-b c-f-s-16"><span class="c-c-b">少小不读书，老大徒伤悲</span>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell" style="padding:0 5px;background: #fff;text-align: left;">
                            
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default" onclick="share();">了解活动详情</a>
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b" onclick="again();">重新闯关</a>
                </div>
            </div>
        </div>
        <div class="js_dialog" id="iosDialog2" style="opacity: 1;display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd c-c-b c-f-s-16"><span class="c-c-b">感谢少侠仗义相助，你的好友可以继续闯关</span>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell" style="padding:0 5px;background: #fff;text-align: left;">
                            
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default" onclick="share();">了解活动详情</a>
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b" onclick="window.history.back()">退隐江湖</a>
                </div>
            </div>
        </div>

    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>
var quesList; //问题、选项
var paramMap; //其他参数
var index = 0; //获取list数据的下标
var quesNum=1; //计数,对比闯关题数量

var jsonList = "["; //存储答题数据
var jsonMap = "{";  //存储闯关明细数据
var jsonPker = "{"; //存储闯关者表数据
var timeLeft = 0;  //倒计时
var t;
var helperId = localStorage.getItem("helperId"); //用户id
var pkerId = "${pkerId}";
//设置第几题
var N = [
         "零","一", "二", "三", "四", "五", "六", "七", "八", "九"
     ];
var EN = [
         "A", "B", "C", "D", "E", "F", "G", "H"
     ];
//var stationNum; //存储当前闯关数

var poemPker;

   $(function(){	    

// 	   weui.alert("诗词大会已结束，敬请期待更多精彩活动。");
// 	   return;	   
	   
	    $("#pkbg").width(window.innerWidth);
        $("#pkbg").height(window.innerHeight-44);

        //stationNum=${stationNum}
     
        
        $.ajax({
        	//var loading = weui.loading('正在加载...');	//loading
        	type:"GET",
        	url:"${ctx}/poem/helperPlay.json?pkerId=" + encodeURIComponent(pkerId) + "&r="+Math.random(),
        	success:function(req){				
				//alert(req.poemPker);
        		poemPker=req.poemPker;	
        		//loading.hide(); 
    			$("title").html("第"+req.poemPker.stationNum+"关");
        		if(req.poemPker.status==1){     				 
        				 $.ajax({
        						type:"POST",
        						url:"${ctx}/poem/getQues.json?pkerId="+req.poemPker.id+"&stationNum="+req.poemPker.stationNum+"",
        						success:function(data){
        							if(data.msg!=""&&data.msg!=null){
    				    				weui.alert(data.msg);
    									return;
    								}
        							quesList=data.quesList;
        							paramMap=data.paramMap;
        							addData();
        							jsonMap+="\"pkerId\":"+paramMap.id+",\"stationNum\":"+paramMap.stationNum+",\"helperId\":"+helperId+",";
        							jsonPker+="\"id\":"+paramMap.id+",\"poemId\":"+paramMap.poemId+",\"stationNum\":"+paramMap.stationNum+",";
        							timeLeft = paramMap.challengeTime;
        							countTime();
        						}			
        					 });       				 
        				 
        				 
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
        			       
        				 
        				 
        		}else{
        			window.history.back()       			
        		}
        	}
        })
        
        
        
   	 
      
   })



   
   
   
   
   function countTime() {
		var startMinutes = parseInt(timeLeft / 60);
		var startSec = parseInt(timeLeft - startMinutes * 60 );
		document.getElementById('time').innerHTML = startMinutes + "\'"
				+ startSec + "\"";
		t = setTimeout('countTime() ', 1000);
	
		if (timeLeft == 0) {       	
			window.clearTimeout(t);	
			jsonMap+="\"takeTime\":"+((paramMap.challengeTime)-timeLeft)+",\"status\":2";//闯关状态，1成功2失败
	      	  //发送ajax存储数据
	      	  //ajaxData();	      	        	  
			  $("#iosDialog1").css("display","block");

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
      	  jsonList+="{\"pkerId\":"+paramMap.id+",\"quesId\":"+quesList[th].id+",\"optsId\":"+quesList[th].opId+",\"opts\":\""+quesList[th].opts+"\",\"helperId\":"+helperId+"},";

      	  jsonMap+="\"takeTime\":"+((paramMap.challengeTime)-timeLeft)+",\"status\":2";//闯关状态，1成功2失败
      	  //发送ajax存储数据
      	  //ajaxData();
      	  window.clearTimeout(t);//停止倒计时	      	  
		  $("#iosDialog1").css("display","block");
                
	  }else{		
		  quesNum+=1;
		  jsonList+="{\"quesId\":"+quesList[th].id+",\"optsId\":"+quesList[th].opId+",\"opts\":\""+quesList[th].opts+"\",\"helperId\":"+helperId+"},";		  		
		  //判断是否是最后一题
		  if(quesNum>paramMap.quesNum){			  	
		        jsonPker+="\"status\":2";//闯关状态，1闯关中2闯完未支付3支付未选奖品4结束
		        jsonMap+="\"takeTime\":"+((paramMap.challengeTime)-timeLeft)+",\"status\":1";//闯关状态，1成功2失败		    
		        //发送ajax存储数据
		        ajaxJsonPker();				  				  
		        window.clearTimeout(t);//停止倒计时	
			  	
			    $("#iosDialog2").css("display","block");
		        
		  }else{
			  addData();
		  }		  
	  }	  
   } 
 
 	//发送ajax存储闯关答题数据
   function ajaxData(){
	   jsonList+="]";
	   jsonMap+="}";
	   $.ajax({
		  type:"POST",
		  url:"${ctx}/poem/saveData.json",
		  data:{
			  "jsonList":jsonList,
			  "jsonMap":jsonMap,			  
		  }
	  
	   });
	   
	   jsonList="[";
	   jsonMap="{";
   }
   
   
	//闯关通过后存储的数据
   function ajaxJsonPker(){
	   jsonList+="]";
	   jsonMap+="}";
	   jsonPker+="}";
	   $.ajax({
		  type:"POST",
		  url:"${ctx}/poem/helperSaveData.json",
		  data:{
			  "jsonList":jsonList,
			  "jsonMap":jsonMap,
			  "jsonPker":jsonPker
		  }
	  
	   });
	   
	   jsonList="[";
	   jsonMap="{";
	   jsonPker="{";
  		
   }   
   
 /*   //关闭按钮单击事件
   function shutdown(){	 
	 jsonMap+="\"takeTime\":"+((paramMap.challengeTime)-timeLeft)+",\"status\":2";//闯关状态，1成功2失败
	 //发送ajax存储数据
  	   jsonList+="]";
  	   jsonMap+="}";
  	   $.ajax({
  		  type:"POST",
  		  url:"${ctx}/poem/saveData.json",
  		  async: false,
  		  data:{
  			  "jsonList":jsonList,
  			  "jsonMap":jsonMap,			  
  		  }
  	  
  	   });  	   
  	   jsonList="[";
  	   jsonMap="{";
  	   
  	 window.history.back();
   } */
 
   //重新闯关单击事件	   
   function again(){
	   location.href="${ctx}/poem/helperPlay.do?pkerId="+encodeURIComponent(pkerId);    
   }
  	   
  	   
   //了解活动详情按钮点击事件
   function share(){
	location.href="${ctx}/poem/heActivity.do";   
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