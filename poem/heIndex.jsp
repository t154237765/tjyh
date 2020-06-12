<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>诗词大会</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
    	.pk-wrapper{padding-top:6rem;}
        .pk-wrapper h1{font-weight:500;letter-spacing: 0px;font-size: 1.1rem;background: #fff;font-family:"华文新魏";padding: 1rem .4rem;}
        .button-sp-area{width:70%;margin-top:1rem;}
        .button-sp-area a{padding:.4rem 0;font-size: .8rem;}
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
        .container{padding-top:0;}
    </style>
</head>
<body>

    <div class="container">
       <!--  <div class="titleBar">
            <div class="titleBar-back" onclick="window.history.back()">
                <i class="fa fa-angle-left" aria-hidden="true"></i>返回
            </div>
            <div class="titleBar-text am-text-truncate">诗词大会</div>
            <div class="titleBar-close" onclick="alert('shutdown');">关闭</div> 
        </div>
        <div class="titleBar-close">关闭</div> -->

        <div class="c-content">
	        <img src="${stax}/assets/images/3-3bg.jpg" id="pkbg">
			<div class="pk-wrapper">
                <h1 class="c-c-o">您的好友在闯到第${stationNum}关的时候遇到阻碍还请少侠仗义相助</h1>
                <div class="button-sp-area">
                    <a href="javascript:;" class="weui-btn weui-btn_plain-primary" style="line-height: 1.3" onclick="helperBegin();">开始闯关</a>
                </div>
                <div class="button-sp-area" style="margin:0rem auto;padding-top:0;">
                    <a href="javascript:;" class="weui-btn weui-btn_plain-primary" style="line-height: 1.3" onclick="share();">分享给好友</a>
                </div>
            </div>
		</div>


        <div class="js_dialog" id="iosDialog2" style="opacity: 1;display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd c-c-b c-f-s-16"><span class="c-c-b">感谢少侠仗义相助，做好事要留名</span>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell" style="padding:0 5px;background: #fff;text-align: left;">
                            <div class="weui-cell__bd">
                                <input id="name" class="weui-input" maxlength="6" type="text" maxlength="20" placeholder="请输入昵称">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default" onclick="close123();">取消</a>
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b" onclick="submit123();">确认</a>
                </div>
            </div>
        </div>

    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>
var helperId = localStorage.getItem("helperId");

   $(function(){
        $("#pkbg").width(window.innerWidth);
        $("#pkbg").height(window.innerHeight);

        
        
        /*弹出框2*/
        /* var $iosDialog2 = $('#iosDialog2');
        $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });
        $('.weui-navbar-down').on('click', function(){
            $iosDialog2.fadeIn(200);
        }); */
        
        /* weui.toast('感谢少侠仗义相助，我已闯过此关', {
            duration: 1000,
            className: 'toast-warn',
            callback: function(){ 
                return false;  
            }
        }); */
   
   })
   
   var pkerId = "${pkerId}";
   var sn = "${n}";
   //开始闯关点击事件
   function helperBegin(){
	   //查询是否已闯过此关
	   $.ajax({
		  type:"POST",
		  url:"${ctx}/poem/helperClick.json?pkerId=" + encodeURIComponent(pkerId) + "&stationNum=" + encodeURIComponent(sn),
		  success:function(data){
			  if(!data.success){
				    weui.toast('感谢少侠仗义相助，我已闯过此关', {
		            duration: 1000,
		            className: 'toast-warn',
		            callback: function(){ 
		                return false;  
		            }				    
		        });
				//判断相助人id是否为空	    
			  }else{
				  if(helperId==null){
					  $('#iosDialog2').css("display","block");
					 				      
				  }else{
					  //跳转到相助闯关界面
					  //location.href="${ctx}/poem/helperPlay.do?pkerId=${pkerId}&stationNum=${n}&helperId="+helperId+"";
					  location.href="${ctx}/poem/helperPlay.do?pkerId=" + encodeURIComponent(pkerId);
				  }				  
			  }			  
		  }
	   });
   }
   
   
   
   function submit123(){
	       //var $iosDialog2 = $('#iosDialog2');
	     // $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
	          var name = $("#name").val();
	    	  if($.trim(name).length==0){
	    		  weui.toast('昵称不能为空', {
			      duration: 1000,
			      className: 'toast-warn',
			      callback: function(){ 
			          return false;  
			      }	
	    		  }); 
	    		  
	          }else{
	        	  $('#iosDialog2').css("display","none");
	        	  //发送ajax插入相助人表信息
	        	  $.ajax({
	        		 type:"POST",
	        		 url:"${ctx}/poem/helperInsert.json",
	        		 data:{
	        			 "name":name
	        		 },
	        		 success:function(data){
	        			 //相助人员id存入浏览器
	        			 localStorage.setItem("helperId", data.helperId);
	        			 //跳转到相助闯关界面
	        			 //location.href="${ctx}/poem/helperPlay.do?pkerId=${pkerId}&stationNum=${n}&helperId="+data.helperId+"";
	        			 location.href="${ctx}/poem/helperPlay.do?pkerId=" + encodeURIComponent(pkerId);
	        		 }	        		 
	        	  });	        	  
	          }		
  	 }
   
   function close123(){
	   $('#iosDialog2').css("display","none");
   }
	     
	     
   //分享按钮点击事件
   function share(){
	   location.href="${ctx}/poem/heActivity.do";  
   }
   
   
</script>
</body>
</html>