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
    	p{font-size:.6rem}
        html{background: #f6f6f3;}
        #personalCenter{padding-top:44px;}
        #personalCenter img.avarta{width:3rem;height:3rem;margin: 0 auto;display:inline-block;}
        .weui-cell__bd p{font-size: .7rem;}
        #personalCenter img.avarta+p{font-size: .8rem;margin-top:.3rem;vertical-align: middle;margin-top: -2rem;}
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
        .weui-navbar__item{background: #eee;color: #666;}
        .weui-navbar-down, .weui-navbar__item.weui-bar__item_on {background: #0066b3;color: #fff;}
        .page__hd{padding-top: .5rem;padding-bottom: .3rem;padding-left:1rem;}
        .page__desc{display:inline-block;}
        
        .mygoldbean{font-size:.7rem;text-align:left;background:#fff;margin-top:10px;clear:both;height:2rem;padding:.5rem 1rem;font-size:.6rem;}
		.mygoldbean h3,.mygoldbean img,.mygoldbean h4{display:inline-block;font-size:.8rem;}
		.mygoldbean img{width:1.3rem;height:1rem;}
		.c-ding-left{float:left;}
		.c-ding-right{float:right;}
		.c-ding-right div{background:#0066b3;border-radius:3rem;color:#fff;padding:5px 14px;margin-top:.2rem;}
		
		/* 九宫格 */
		.weui-grids{background:#fff;}
		.weui-grid__icon{width:1.8rem;height:1.8rem;}
		span.weui-grid__label{font-size:12px;color:#999;}
		.weui-grid {height: 6.2rem;}
		
		.upload_pic{
     display: block;
     width: 100%;
     height: 40px;
     position: absolute;
     left: 20;
     top: 54;
     border-radius: 5px;
}
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
                <div class="page__hd" style="text-align: left;background:#fff;">
                    <img class="avarta" src="${stax}/assets/images/6avarta.jpg"><input type="file" class="upload_pic" id="upload"  accept="image/*" capture="camera" multiple="multiple" />
                    <p class="page__desc" id="showPhone">请登录</p>
                </div>
                <div class="c-index-hot mygoldbean">
                	<div class="c-ding-left">
                		<h3>我的</h3><img src="${stax}/assets/images/goldbean.jpg">: <h4>${ingotnum}锭</h4>
                		<p class="c-c-r">2017年12月31日清零，请注意使用！</p>
                	</div>
					<div class="c-ding-right">
						<div>查看明细</div>
					</div>
				</div>
				<div class="weui-grids">
			        <a href="javascript:toPage('exchange');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp1.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的兑换</p>
			            <span class="weui-grid__label">(兑换专区)<br/>&nbsp;</span>
			        </a>
			        <a href="javascript:toPage('tuan');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp2.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的拼团</p>
			            <span class="weui-grid__label">(拼团有礼)<br/>&nbsp;</span>
			        </a>
			        <a href="javascript:toPage('order');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp3.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的订单</p>
			            <span class="weui-grid__label">(本地特惠<br/>限时抢购)</span>
			        </a>
			        <a href="javascript:toPage('prize');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp4.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的奖品</p>
			        </a>
			        <a href="javascript:toPage('address');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp5.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的地址</p>
			        </a>
			        <a href="tel:4008190172" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp6.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">联系客服</p>
			        </a>
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

	var indexUrl = localStorage.getItem("homeUrl");
	var bankid = localStorage.getItem("bankId");
	var bankuid = localStorage.getItem("bankuid");
	
	$(function(){
		$("#pkbg").width(window.innerWidth);
        $("#pkbg").height(window.innerHeight-44);
        
        $('.c-ding-right').on('click', function () {
        	toPage('ingot');
        });

        /*底部tab切换*/
        $('.weui-navbar__item').on('click', function () {
            $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
        });
        
        /*弹出框1  绑定手机*/
        $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
        	register();
        });
        
        if(localStorage.getItem("userId")){
			$('#showPhone').html("${phone}");
			enableUpload();
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
        });
        
        var avatar = "${avatar}";
        if (avatar) {
        	$('.avarta').attr('src', avatar);
        }
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
	       			url: "${ctx}/tjhui/getcode.json",
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
			url: "${ctx}/tjhui/register.json",
			data: "phone="+phone+"&code="+ccode+"&bankId="+bankid+"&bankuid="+bankuid+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.msg){
					weui.alert(resp.msg);
					initTimer();
				}else if(resp.user){
					setUserLocal(resp.user);
					$('#iosDialog1').fadeOut(200);
					$('#showPhone').html(resp.user.aphone);
					enableUpload();
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
 		window.location.href = '${ctx}/tjhui'+indexUrl;
 	}
 	
 	function toPage(flag){
 		if(!checkUser()) return;
 		var loading = weui.loading('正在加载...');	//loading
  		if(flag == 'exchange'){			//订单
  	    	window.location.href = "${ctx}/mycenter/myexchange.do";
  		} else if (flag == 'ingot') {
  			window.location.href = "${ctx}/mycenter/myingot.do?userId=" + encodeURIComponent(localStorage.getItem("userId"));
  		} else if (flag == 'order') {
  			window.location.href = "${ctx}/mycenter/myorder.do";
  		} else if (flag == 'address') {	//收货地址
  			$.ajax({
  				type: "GET",
  				url: "${ctx}/mycenter/conntuan.json",
  				data: "userId=" + encodeURIComponent(localStorage.getItem("userId")),
  				success: function(resp){
  					if(resp.id){
  						localStorage.setItem("tjuserId", resp.id);
  						window.location.href = "${ctx}/useraddress/index.do";
  					}
  				},
  				error:function(er){
  					loading.hide();
  					console.log(er);
  				}
  	   		});
  	    	
  		} else if (flag == 'tuan') {		//拼团
  			$.ajax({
  				type: "GET",
  				url: "${ctx}/mycenter/conntuan.json",
  				data: "userId=" + encodeURIComponent(localStorage.getItem("userId")),
  				success: function(resp){
  					if(resp.id){
  						localStorage.setItem("tjuserId", resp.id);
  						window.location.href = "${ctx}/userCenter/mytuan.do";
  					}
  				},
  				error:function(er){
  					loading.hide();
  					console.log(er);
  				}
  	   		});
  	    	
  		} else{
  			loading.hide();
  			weui.alert('暂不开放');
  		}
 	}
 	
 	function checkUser(){
 		if(!localStorage.getItem("userId")){
 			$('#iosDialog1').fadeIn(200);
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
		localStorage.setItem("userId", user.id);
		localStorage.setItem("userPhone", user.phone);
    }
 	
 	function enableUpload() {
 		if (typeof FileReader === 'undefined') {
 			alert("aaaa");
 			$('#upload').attr('disabled', 'disabled');
 		} else {
 			$("#upload").change(function() {
 				var file = this.files[0];
 	 			if (!/image\/\w+/.test(file.type)) {
 	 				weui.alert("文件必须为图片格式！");
 	 				return false; 
 	 			}
 	 			
 	 			var reader = new FileReader();
 	 			reader.readAsDataURL(file);
 	 			reader.onload = function(e) {
 	 				var image = new Image();
 	 				image.src = e.target.result;
 	 				var max = 75;
 	 				var tp = (file.type == 'image/png') ? 'png': 'jpg';
 	 				image.onload = function() {
 	 					var canvas = document.createElement("canvas");
 	 					var ctx = canvas.getContext("2d"); 
 	 					canvas.width = max;
 	 				    canvas.height = max;
 	 				  	ctx.clearRect(0, 0, canvas.width, canvas.height); 
 	 					ctx.drawImage(image, 0, 0, max, max);
 	 					
 	 					var base64 = canvas.toDataURL(tp, 1);
 	 					uploadAvatar(base64);
 	 				}
 	 			}
 			});
 		}
 	}
 	
 	function uploadAvatar(data) {
 		var loading = weui.loading('正在上传头像...');	//loading
 		$.ajax({
			type: "POST",
			url: "${ctx}/mycenter/uploadAvatar.json",
			data: "userId=" + encodeURIComponent(localStorage.getItem("userId")) + "&content=" + encodeURIComponent(data),
			success: function(resp) {
				loading.hide();
				if (resp.errMsg && resp.errMsg != "") {
					weui.alert(resp.errMsg);
				} else {
					weui.toast("上传头像成功", {
				        duration: 1000,
				        className: 'toast-warn',
				        callback: function(){ 
				            return false; 
				        }
				   	});
					$('.avarta').attr('src', data);
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
	   	});
 	}
 	
 	
</script>
</body>
</html>