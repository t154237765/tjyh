<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>邀请有礼</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .weui-dialog__bd:first-child{padding-top:1rem;color: #09b6f2;}
        .weui-cells_form{border: 0;color:#666;font-size: 14px;background: #eee;}
        .weui-cells_form .textarea{background: none;}
        .weui-textarea-counter{display: none;}
        .container{background: #fb483f}
        #iosDialog1 .weui-cells_form{background: none;}
        #iosDialog1 .weui-cells_form:after{border:0;}
        .c-content{background: url(${stax}/assets/images/invite1-1bg.jpg) no-repeat 50% 0 #fb483f;background-size:cover;height:100%;}
        .invite-coupon{width:8rem;padding-left: 4rem;}
        .invite-c{background: #fbd154;margin-left: 4.5rem;width:6.8rem;border-radius: 6px;height:1rem;text-align: center;vertical-align: middle;line-height: 1rem;margin-top:.1rem;}
        .invite-c span{font-size:.5rem;color:#fff;}
        .intro-wrapper{width: 13rem;margin-left: 1.8rem;margin-top: 1rem;}
        .text1,.text2{background: #ffe3ba;padding:0 1rem 1rem 1rem;}
        .title1 img,.title2 img,.title3 img,.code1 img{width:13rem;}
        .code1 img{margin-left: 1.8rem;margin-top: 1rem;}
        html,.code1{background: #fb483f;padding-bottom: 1rem;}
        .weui-input{height: 1.4rem;background: #eee;padding-left:.2rem;border-radius: 3px}
        #iosDialog2 .c-c-3{color:#333;}
        .btns{text-align: center;}
        .btns div {background: #fbd154;width: 4rem;font-size: .7rem;color: #fff;text-align: center;display: inline-block;border-radius: 10rem;padding: .2rem .6rem;margin-top: 1rem;}
        .btns div:nth-child(1){margin-right:2.3rem;}
        @media only screen and (max-height: 501px) {.c-content{padding-bottom:3rem;}}
        .titleBar, .titleBar-close {background-color: #09b6f2;}
        .titleBar-back{width: 70px;}
    </style>
    <title></title>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">邀请有礼</div>
            <!-- <div class="titleBar-close">关闭</div> -->
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content">
            <div style="padding-top:5.4rem;@media only screen and (max-height: 501px) {.c-content{padding-bottom:3rem;}}">
               <img src="${stax}/assets/images/coupon.png" class="invite-coupon">
               <div class="invite-c"><span>您的邀请码是：${msCode}</span></div>
               <div class="intro-wrapper">
                    <div class="title1">
                        <img src="${stax}/assets/images/invite1-title1.jpg">
                    </div>
                    <div class="text1">
                        <p>活动说明：即日起凡平台新用户登录均可持老用户邀请码兑换奖品，平
  							  台会在1-3个工作日内进行验证，通过验证后新老用户均可获得
    						了现金劵礼品一份，奖品将发放到“个人中心-我的现金劵当中”，奖品
    						有限先到先得。
    						现金劵可在【拼团】及【本地特惠】中冲抵现金使用，每次限用1张
    </p>
                    </div>
                    <div class="title3">
                        <img src="${stax}/assets/images/invite1-title3.jpg">
                    </div>
                </div>
                <div class="btns">
                    <div class="exchange"><a href="javascript:void(0);" onclick="redeem();">兑换奖品</a></div>
                    <div class="share"><a href="javascript:void(0);" onclick="share();">分享</a></div>
                </div>

			
            <div class="js_dialog" id="iosDialog1" style="opacity: 1;display: none;">
                <div class="weui-mask"></div>
                <div class="weui-dialog">
                    <div class="weui-dialog__bd c-c-b c-f-s-16">请输入邀请码
                        <div class="weui-cells weui-cells_form">
                            <div class="weui-cell">
                                <div class="weui-cell__bd">
                                    <input class="weui-input c-m-b-10" type="phone" id="fsCode" maxlength="6"  oninput="checkLength(this,6);" pattern="[0-9]*" placeholder="请输入邀请码">
                                    <input class="weui-input" type="phone" id="bsCode" pattern="[0-9]*" maxlength="8"  oninput="checkLength(this,8);" placeholder="请输入营销代码(非必须)">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="weui-dialog__ft">
                        <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default" onclick="cancel();">取消</a>
                        <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b" onclick="submitCode();">确认</a>
                    </div>
                </div>
            </div>
			
			
 <!--            <div class="js_dialog" id="iosDialog2" style="opacity: 1;display: none;">
                <div class="weui-mask"></div>
                <div class="weui-dialog">
                    <div class="weui-dialog__bd c-c-3 c-f-s-16">即日起凡平台新老用户登录均可持老用户邀请码兑换奖品，平
    台会在1-3个工作日内进行
                    </div>
                    <div class="weui-dialog__ft">
                        <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default">取消</a>
                        <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确认</a>
                    </div>
                </div>
            </div>
        </div> -->
        
             <div class="js_dialog" id="iosDialog3" style="opacity: 1;display: none;">
                <div class="weui-mask"></div>
                <div class="weui-dialog">
                    <div class="weui-dialog__bd c-c-3 c-f-s-16">进入分享界面，截屏后即可将图片发到微信好友/朋友圈
                    </div>
                    <div class="weui-dialog__ft">
                        <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default" onclick="cancelTwo();">取消</a>
                        <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b" onclick="skipShare();">确认</a>
                    </div>
                </div>
            </div>
        </div>

    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>
    $(".c-content").height(window.innerHeight);
    /*弹出框*/
    $(function(){

      /*   var $iosDialog2 = $('#iosDialog2');

        $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });

        $('.titleBar').on('click', function(){
            $iosDialog2.fadeIn(200);
        }); */

        
    });
 
    

    function checkLength(obj,n){
    	obj.value = obj.value.replace(/\D/g,'');
    	if(obj.value.length>n){
    	obj.value = obj.value.substr(0,n);
    	 }
    }

    
    var userId = ${userId};
   /*  邀请码弹框验证 */
    function redeem(){   	
    	$.ajax({
    		type:"GET",
    		url:"${ctx}/invite/findSharestatus.json",
    		data:{
    			"userId":userId
    		},
    		success:function(model){
    			if(model.status==0){
    				weui.toast(model.msg, {
    			        duration: 2000,
    			        className: 'toast-warn',
    			        callback: function(){ 
    			            return false;  
    			        } 
    			    });
    				
    			}else{
    				var $iosDialog1 = $('#iosDialog1');
    				$iosDialog1.fadeIn(200);
    			}
    		}
    	});
    	
    }
 	/* 输入邀请码验证 */
     function submitCode(){ 
    	var fsCode = $("#fsCode").val();
    	var bsCode = $("#bsCode").val();
    	
    	$.ajax({
    		type:"GET",
    		url:"${ctx}/invite/insertShareAward.json",
    		data:{
    			"fsCode":fsCode,
    			"bsCode":bsCode,
    			"userId":userId
    		},
    		success:function(model){   			
    			if(model.status==0){    				
    				weui.toast(model.msg, {
    			        duration: 2000,
    			        className: 'toast-warn',
    			        callback: function(){ 
    			            return false;  
    			        } 
    			    });
    			}else{
    				var $iosDialog1 = $('#iosDialog1');
       			 	$iosDialog1.fadeOut(200);
       			 	weui.toast(model.msg, {
 			        duration: 2000,
 			        className: 'toast-warn',
 			        callback: function(){ 
 			            return false;  
 			        } 
 			    });
    			}
    			
    			 
    		}
    	});
    } 
   /* 邀请码弹框取消 */
     function cancel(){
    	 var $iosDialog1 = $('#iosDialog1');
		 	$iosDialog1.fadeOut(200);
     }
  
     
 var $iosDialog3 = $('#iosDialog3');
	/* 分享按钮单击事件 */
     function share(){
    	/*  weui.alert('进入分享界面，截屏后即可将图片发到微信好友/朋友圈', {   	         
    	        buttons: [{
    	        label: '确定',
    	        type: 'primary',
    	        onClick: function(){ 
    	        	location.href="${ctx}/invite/share.do?msCode="+${msCode}+"";
				 }
    	        }]
    	    }); */
    	    
             $iosDialog3.fadeIn(200);        
     }
  
  	/*分享按钮取消  */
     function cancelTwo(){
    	 $iosDialog3.fadeOut(200);
     }
  	/*分享按钮跳转  */ 
     function skipShare(){
    	 location.href="${ctx}/invite/share.do?msCode=${msCode}";
     }
  	
     /**返回首页**/
  	function toHome(){
  		window.location.href = '${ctx}'+localStorage.getItem("indexUrl");
  	}
    
</script>
</body>
</html>