<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>个人中心</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        html{background: #f6f6f3;}
        #personalCenter{padding-top:3rem;}
        #personalCenter img.avarta{width:4rem;height:4rem;margin: 0 auto;}
        .weui-cell__bd p{font-size: .7rem;}
        #personalCenter img.avarta+p{font-size: .8rem;margin-top:.3rem;}
        .weui-navbar-down, .weui-navbar__item.weui-bar__item_on {background: #fafafa;color: #333;}
        .weui-navbar__item.weui-bar__item_on {color: #333;background: #eaeaea;}
                /*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#09b6f2;}
        .js_dialog input.weui-input{color:#333;}
        .weui-dialog{overflow: visible;}
        #c-login-close{position: absolute;top: -1rem;right: -1rem;color: #fff;}
        .weui-navbar__item.weui-bar__item_on{color:#49c8b5;background: #fff;}
        .weui-navbar__item{color:#9a9a9a;}
    </style>
</head>
<body>

    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back">
<!--                 <i class="fa fa-angle-left" aria-hidden="true"></i>返回 -->
            </div>
            <div class="titleBar-text am-text-truncate">个人中心</div>
<!--             <div class="titleBar-close" onclick="alert('shutdown');">关闭</div> -->
        </div>

        <div class="c-content">
            <div class="page list js_show" id="personalCenter">
                <div class="page__hd" style="text-align: center;">
                    <img class="avarta" src="${stax}/assets/images/6avarta.png">
                    <p class="page__desc" id="showPhone">请登录</p>
                </div>
                <div class="page__bd" style="margin-bottom:3rem;">
                    <div class="weui-cells">
                        <a class="weui-cell weui-cell_access" href="javascript:;" onclick="toPage('tuan')">
                            <div class="weui-cell__hd"><img src="${stax}/assets/images/6icon6.jpg" alt="" style="width:1rem;margin-right:10px;display:block"></div>
                            <div class="weui-cell__bd">
                                <p>我的拼团</p>
                            </div>
                            <div class="weui-cell__ft"></div>
                        </a>
                        <a class="weui-cell weui-cell_access" href="javascript:;" onclick="toPage('address')">
                            <div class="weui-cell__hd"><img src="${stax}/assets/images/6icon3.jpg" alt="" style="width:1rem;margin-right:10px;display:block"></div>
                            <div class="weui-cell__bd">
                                <p>收货地址</p>
                            </div>
                            <div class="weui-cell__ft"></div>
                        </a>
                        <a class="weui-cell weui-cell_access" href="tel:4008109200">
                            <div class="weui-cell__hd"><img src="${stax}/assets/images/6icon4.jpg" alt="" style="width:1rem;margin-right:10px;display:block"></div>
                            <div class="weui-cell__bd">
                                <p>联系客服</p>
                            </div>
<!--                             <div class="weui-cell__ft"></div> -->
                        </a>
<!--                         <a class="weui-cell weui-cell_access" href="javascript:;" onclick="logout()"> -->
<%--                             <div class="weui-cell__hd"><img src="${stax}/assets/images/6icon5.jpg" alt="" style="width:1rem;margin-right:10px;display:block"></div> --%>
<!--                             <div class="weui-cell__bd"> -->
<!--                                 <p>退出登录</p> -->
<!--                             </div> -->
<!--                         </a> -->
                    </div>

                </div>
            </div>
		</div>
		
        <div class="weui-navbar weui-navbar-down">
            <div class="weui-navbar__item" onclick="toHome()">
                	首页
            </div>
            <div class="weui-navbar__item weui-bar__item_on">
                	个人中心
            </div>
        </div>

        <div class="js_dialog" id="iosDialog1" style="opacity: 1;display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <i class="weui-icon-cancel" id="c-login-close"></i>
                <div class="weui-dialog__bd c-f-s-16" style="color:#09b6f2;padding-top:1.7em;">请绑定手机号码
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__bd">
                                <input id="phone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*" placeholder="请输入您的手机号码" oninput='checkLength(this,11);'>
                            </div>
                        </div>
                        <div class="weui-cell weui-cell_vcode">
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="number" pattern="[0-9]*" id="ccode"
						oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码">
                            </div>
                            <div class="weui-cell__ft">
                                <button id="bpcodebtn" class="weui-vcode-btn">获取验证码</button>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确定</a>
                </div>
            </div>
        </div>
        
        <!-- 弹出框 -->
        <div class="js_dialog" id="iosDialog2" style="opacity: 1; display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <span class="c-c-b c-f-s-16" style="margin:1rem auto;display: inline-block;">提示</span>
                <div class="weui-dialog__bd c-c-3 c-f-s-16">您确定要退出登录吗？
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default">取消</a>
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确认</a>
                </div>
            </div>
        </div>

    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>

	var indexUrl = localStorage.getItem("tjindexUrl");
	var bankid = localStorage.getItem("tjbankId");
	var bankuid = localStorage.getItem("tjbankuid");
	
	$(function(){
		$("#pkbg").width(window.innerWidth);
        $("#pkbg").height(window.innerHeight-44);

        /*底部tab切换*/
        $('.weui-navbar__item').on('click', function () {
            $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
        });
        
        /*弹出框1  绑定手机*/
        $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
        	register();
        });
        
        if(localStorage.getItem("tjuserPhone")){
			$('#showPhone').html(localStorage.getItem("tjuserPhone"));
		}else{
			$('#showPhone').parent().on('click', function(){
				$('#iosDialog1').fadeIn(200);
				getCode();
	        });
		}
        
        $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });
        
        /*验证手机号*/
        $(document).on("input propertychange","#phone",function(e){
            if(e.type === "input" || e.orignalEvent.propertyName === "value"){         
                this.value=this.value.replace(/\D/gi,"");
                if(this.value.length == 11){
                    if(checkPhone(this.value)){
                    	$('#bpcodebtn').attr("disabled",false);
                    	$("#bpcodebtn").addClass("c-c-b");
                    }
                }else{
                	$('#bpcodebtn').attr("disabled",true);
                	$("#bpcodebtn").removeClass("c-c-b");
                }
            }
        });

        $("#c-login-close").on("click",function(){
            $("#iosDialog1").hide();
        })
	});
   
   	var bClick = false;
	var timer;
   	function getCode(){
   	/*验证码倒计时*/
		var oBtn = document.getElementById("bpcodebtn");
       	oBtn.onclick = function(){
			if(bClick == false && checkPhone($("#phone").val())){
				$('#phone').attr("disabled",true);
	            bClick = true;
           		var loading = weui.loading('正在加载...');	//loading
           		$.ajax({
	       			type: "GET",
	       			url: "${ctx}/getcode.json",
	       			data: "phone="+$('#phone').val()+"&r="+Math.random(),
	       			success: function(resp){
	       				loading.hide();
	       				if(resp.msg && resp.msg.length > 0){
	       					weui.alert(resp.msg);
	       					$('#phone').attr("disabled",false);
	       				}else{
                            $("#bpcodebtn").removeClass("c-c-b");
	       					var s = 60;
	       	                timer = setInterval(function(){
	       	                    s--;
	       	                    oBtn.innerHTML = s+"秒后重发";
	       	                   
	       	                    if(s == 0){
	       	                    	initTimer();
	       	                    } 
	       	                },1000);
	       				}
	       			},
	       			error:function(er){
	       				loading.hide();
	       				$('#phone').attr("disabled",false);
	       				console.log(er);
	       			}
				});
			} 
		};
	}
   
	function initTimer(){
   		bClick = false;
   		$('#phone').attr("disabled",false);
       	clearInterval(timer);
       	$('#bpcodebtn').html("获取验证码").addClass("c-c-b");
   	}
   
 	/*验证手机号*/
    function checkPhone(phone){
        var phone = parseInt(phone);
        var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
        if(!reg.test(phone)){
            weui.toast('请输入正确的手机号码', {
                duration: 1000,
                className: 'toast-warn',
                callback: function(){
                    //document.querySelector("#phone").value = "";
                }
            });
            return false;
        }    
        return true;
    }


    /*验证手机号*/
    $(document).on("input propertychange","#phone",function(e){
        if(e.type === "input" || e.orignalEvent.propertyName === "value"){         
            this.value=this.value.replace(/\D/gi,"");
            if(this.value.length == 11){
                if(checkPhone(this.value)){
                    $('#bpcodebtn').attr("disabled",false);
                    $("#bpcodebtn").addClass("c-c-b");
                }
            }else{
                $('#bpcodebtn').attr("disabled",true);
                $("#bpcodebtn").removeClass("c-c-b");
            }
        }
    });
 	
 	/**绑定手机**/
 	function register(){
 		
 		var phone = $('#phone').val();
 		var ccode = $('#ccode').val();
 		if(!checkPhone(phone))return;
 		if(!ccode){
 			loading.hide();
 			weui.toast('请输入验证码', {
	            duration: 1000,
	            className: 'toast-warn',
	            callback: function(){
	            }
	        });
 			//$('#ccode').focus();
 			return;
 		}
        var loading = weui.loading('正在加载...');  //loading
 		$.ajax({
			type: "GET",
			url: "${ctx}/register.json",
			data: "phone="+phone+"&code="+ccode+"&bankId="+bankid+"&bankuid="+bankuid+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.msg){
					weui.alert(resp.msg);
// 					initTimer();
				}else if(resp.user){
					setUserLocal(resp.user);
					$('#iosDialog1').fadeOut(200);
					$('#showPhone').html(localStorage.getItem("tjuserPhone"));
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
   		});
 	}
 	
 	/**返回首页**/
 	function toHome(){
 		var loading = weui.loading('正在加载...');	//loading
 		window.location.href = '${ctx}'+indexUrl;
 	}
 	
 	/**退出登录**/
 	function logout(){
 		if(!checkUser()) return;
 		
 		$('#iosDialog2').fadeIn(200);
 		
 		$('#iosDialog2 .weui-dialog__btn_primary').on('click', function(){
            localStorage.clear();
            window.location.href = '${ctx}'+indexUrl;
        });
 	}
 	
 	function toPage(flag){
 		if(!checkUser()) return;
 		var loading = weui.loading('正在加载...');	//loading
  		if(flag == 'order'){			//订单
  	    	window.location.href = "${ctx}/userCenter/myorders.do";
  		}else if(flag == 'tuan'){		//拼团
  	    	window.location.href = "${ctx}/userCenter/mytuan.do";
  		}else if(flag == 'coupon'){		//现金券
  	    	window.location.href = "${ctx}/userCenter/mymoney.do?userId="+localStorage.getItem("tjuserId");
  		}else if(flag == 'prize'){		//奖品
  	    	window.location.href = "${ctx}/userCenter/myprize.do";
  		}else if(flag == 'address'){	//收货地址
  	    	window.location.href = "${ctx}/useraddress/index.do";
  		}else{
  			loading.hide();
  			weui.alert('暂不开放');
  		}
 	}
 	
 	function checkUser(){
 		if(!localStorage.getItem("tjuserId")){
 			weui.toast('请先登录', {
	            duration: 1000,
	            className: 'toast-warn',
	            callback: function(){
	            }
	        });
 			return false;
 		}
		return true;
  	}
 	
 	function checkLength(obj,n){
        obj.value = obj.value.replace(/\D/g,'')
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }
 	
 	function setUserLocal(user){
    	//用浏览器存储
		localStorage.setItem("tjuserId", user.id);
		localStorage.setItem("tjuserPhone", user.phone);
    }
</script>
</body>
</html>