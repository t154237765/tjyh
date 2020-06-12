<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>商品详情</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .picTxtList .c-list-left-div{width: 100%;}
        .c-leftimg-rightall .weui-media-box__bd{margin-top:-10px;}
        .c-leftimg-rightall .weui-media-box__title{white-space:normal;}
        .weui-media-box{padding-left:20px;padding-right:30px;padding-bottom: 0}
        .c-leftimg-rightall .c-b-1{border:1px solid #eee;}
        .page__bd{font-size: 14px;}
        .weui-form-preview__hd:after{border: 0;}
        .c-prev-area{color:#666;font-size: 16px;text-align: left;}
        .weui-form-preview__bd{padding-top:0;padding-bottom: 20px;}
        button.weui-form-preview__btn,.weui-form-preview__btn_default{font-size: 16px;}
        #form .weui-cell{align-items:flex-start;}
        .weui-form-preview__btn_primary{color:#01abde;}
        .weui-cell_vcode:before,.weui-cell_vcode:after{border-top:1px solid #d9d9d9;}
        .weui-cell_vcode{line-height: 2.3}
        #c-add-adress .weui-cells{margin-top:0;}
        #c-set-area{font-size: 22px;float:right;}
        .c-direction:before{border: 0}
        .c-leftimg-rightall .c-esp-desc{width:7.5rem;}
        .weui-navbar__item p{color:#333;}
        .weui-cell:before{border-top:0;}
        .fa-check-circle-o {color:#ccc;}
        #c-add-adress .c-c-b{color:#09b6f2;}
        #c-change{font-size: 12px;text-align: left;padding-left: 15px;  vertical-align: middle;line-height: 1rem;height: 1rem;}
        #xianjin .c-leftimg-rightall .weui-media-box__desc {width: 9rem;}
        #xianjin .c-leftimg-rightall .c-c-r{font-size: .8rem}
        #xianjin .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        #xianjin .page__hd{background: #fff;padding:.5rem 1rem;font-size:.7rem;}
        #xianjin .fa-check-circle,.fa-circle-o{position: absolute;right: 1.3rem;top: 2rem;font-size: 18px;color:#fc6973;}
        #xianjin .weui-media-box{padding: .6rem .6rem;padding-left:1rem;}
        .spinner{width:1.2rem;height:1rem;font-size: 1rem;line-height: 1rem;vertical-align: middle;background: #ddd;margin-right: 3px;text-align: center;color: #666}
        #spinner{font-size:14px; }
        #xianjin .price{position: absolute;left: 1rem;top: .9rem;font-size: 1rem;color: #fc6973;}
        #xianjin .price-big{font-size: 1.3rem;}
        #xianjin .coupon-detail{position: absolute;left: 6rem;top: 1rem;font-size: 1rem;color: #fff;line-height: .7rem;}
        #xianjin .coupon-detail p.coupon-detail-big{font-size: .7rem;margin-bottom:5px;}
        #xianjin .coupon-detail p{color: #fff;text-align: left;font-size: .6rem;}
        .c-tags .weui-badge{margin-right: .8rem;min-width: 2rem;}
        #payMoney, #daizhif {font-size: .6rem;}
        .c-leftimg-rightall .weui-media-box__desc{width:auto;}
        .weui-form-preview__btn_primary .fa-check-circle-o{color: #01abde;}
        
        .c-tags .weui-badge{margin-right: .8rem;min-width: 2rem;}
        .weui-form-preview {margin-bottom: 5px;}
        .c-tow-line .c-tow-line-r{position: initial;}

        #outer{padding-top:44px;padding-bottom:47px;overflow:auto;box-sizing: border-box;overflow:auto;position: relative;}
#twoTab .weui-navbar{z-index: 992;position: fixed;bottom: 0;left: 0;width: 100%;height: 46px;}
#twoTab .weui-navbar-down{border-top:0;}
        .c-panel-image2{font-size: .6rem;margin-top: 9px;border-top:1px solid #dedede;padding-top:7px;color:#666;display:flex;align-items:center;justify-content:space-between;padding-right:5%;}
       	.c-panel-rule{font-size:0.6rem;border-top:1px solid #dedede;margin-top:9px;}
        .c-panel-rule img{width:100%;}
        @media screen and (min-height: 481px){
            .bottom-close,.c-bottom-area{top: 14rem;}
        }
        .weui-navbar-down .red{background: #0066b3;}
        .timealert{position:absolute;top:-30px;left:0;text-align:center;width: 100%;border-top: 1px solid #ddd;padding: 5px 0;font-size: 12px;background:#fff;}
    	.picTxtList .c-goods-details{padding-left:0;padding-right:0;}
    	.c-panel-image img{width:90%;margin: 0 auto;}
    	.c-panel-more{width:0.4rem;transform:rotate(180deg);}
    	
    	.reg-frame , .tishi{width:78%;height:9rem;background:#fff;position:absolute;top:10rem;right:0;left:0;margin:auto;z-index:996;display:none;}
	    .reg_title{text-align:center;margin:3% 0%;font-size:0.625rem;}
	  	.reg_input{text-align:center;}
	  	.reg_input input{border:1px solid #ccc;width:8rem;height:1.2rem;margin-bottom:0.3rem;padding-left:0.2rem;}
	  	.reg_input button , .tishi button{width:3.5rem;height:1.2rem;text-align:center;line-height:1.2rem;background:#09b6f2;color:#fff;border-radius:0.1rem;margin:3% 0%;}
	  	.reg_tishi{text-align:center;}
	  	.c-black-mask{z-index:995;}
	  	/*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#0066b3;}
        .js_dialog input.weui-input{color:#333;}
        .weui-tab{height:auto;}
        .weui-dialog{overflow: visible;}
        .c-login-close{position: absolute;top: -1rem;right: -1rem;color: #fff;}
        #c-intro-wrapper{padding: 0 5px;}
        .weui-cells:before,.weui-cells:after{border: 0;}
        .sign1{width: 100%;height: 100%;position: fixed;top: 0;background: rgba(0,0,0,0.5);z-index: 1111;}
        .titleBar-text {width: 100%;padding-left: 0;}
        #checked{width:0.6rem;height:0.6rem;}
        .weui-icon-cancel{position:absolute;top:6.5rem;right:1.5rem;color:#fff;font-size:1.2rem;}
        .sign1 .Scont div{display:flex;align-items:center;justify-content:space-between;}
        .Sbtn2{width:40%;margin:auto;text-align:center;height:1.5rem;border-radius:1.5rem;line-height:1.5rem;background:#0065B3;font-size:0.6rem;color:#fff;margin-left:32%;margin-top:0.3rem;}
        .Sbtn1{width:35%;background:#666;text-align:center;height:1.5rem;line-height:1.5rem;font-size:0.6rem;color:#fff;border-radius:0.2rem;margin-bottom:0.4rem;}
        .Scont input{border:1px solid #676767;border-radius:0.1rem;width:100%;height:1.5rem;margin-bottom:0.4rem;font-size:0.6rem;color:#646464;padding-left:0.2rem;}
        .sign1 .Scont {width: 70%;height: 12rem;background: #fff;border-radius: 0.2rem;position: absolute;top: 28%;margin: auto;right: 0;left: 0;padding: 0% 5%;}
    </style>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar" id="dingdan-title">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">一元购专区</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content" style="padding-bottom: 80px" id="lieb">
           <div class="weui-panel__bd picTxtList c-m-b-5">
                <div class="weui-media-box weui-media-box_text">
                    <p class="c-panel-image">
                        <img src="${stax}/${prod.largePicUrl}" alt="" class="hsrc">
                    </p>
                    <div class="weui-flex c-goods-details">
                        <div class="c-list-left-div">
                            <h4 class="weui-media-box__title" style="font-size: .8rem;margin-bottom:4px;margin-left:.5rem;">${prod.prodName}</h4>
                            <p class="weui-media-box__desc"><span class="c-c-r" style="font-size: .8rem;display: inline-block;margin-left:.5rem;">¥${prod.prodPrice}</span>
                            	<span style="text-decoration: line-through;">原价 ${prod.oldPrice}</span><br/>
                            	<span style="color: #333;margin-left:5px;margin-top: .2rem;display: inline-block;margin-left:.5rem;">已售：${prod.soldNum}份</span></p>
                            <p class="c-panel-image2" onclick="javascript:window.location.href='${ctx}/jsp/yiyg/rules.jsp';">
                            	<span style="font-size: .7rem;color:#333;display: inline-block;margin-left:.5rem;">活动规则</span>
                            	<img class='c-panel-more' src="${stax}/assets/images/more.png" />
                            </p>
                            
                            <!-- <p>&nbsp;</p> -->

                            <div class="c-panel-rule" style="padding:.5rem;">
                                <span style="font-size: .7rem;color:#333;display: inline-block;">商品说明:</span><br/>
                                ${prod.descr}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="page__bd" id="twoTab">
            <div class="weui-tab">
                <div class="weui-navbar weui-navbar-down weui-navbar-right">
                	
            	<div class="timealert"><span>请于3分钟内完成支付，超时将自动取消订单</span></div>
                    <div class="weui-navbar__item weui-bar__item_on" style="background: #eee;text-align:left;padding-left:10px;">
                       <span class="c-f-s-14" id="daizhif" style="font-size:.7rem;color:#333;">实际支付：</span>
                		<span class="c-c-r c-f-s-14 c-m-r-5" style="color:red" id="payMoney">¥${prod.prodPrice}</span>
                    </div>
                    <div class="red c-f-s-18 weui-navbar-div" id="showbtn">
						立即抢购
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 信息登记 -->
        <div class="c-black-mask" style="display: none;"></div>
        <div class="reg-frame">
			<i class="weui-icon-cancel"></i>
			<p class="reg_title">信息登记</p>
			<div class="reg_input">
				<input class="reg_input_phone1" type="number" placeholder="请输入您的卡号" /><br/>
				<input class="reg_input_phone2" type="number" placeholder="请再次输入您的卡号" /><br />
				<button>确认</button>
			</div>
			<p class="reg_tishi">*购买成功后费用将充值到此登记账户</p>
		</div>       
    </div>
    
    <div class="sign1 js_dialog" id="iosDialog1" style="display:none;">
         	<i class="weui-icon-cancel" id="c-login-close"></i>
        	<div class="Scont">
        		<p style="margin:5% auto;text-align:center;color:#000;font-size:0.6rem;">手机验证注册</p>
                <div>
                	<input id="phone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*" placeholder="请输入您的手机号码">
                </div>
                <div>
                	<input style="width:60%;" class="weui-input" type="number" pattern="[0-9]*" id="ccode"
						oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码" onkeypress="keyPress()">
                	<button class="Sbtn1" id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
                </div>
               <!--  <div>
                	<input id="iuphone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*" placeholder="邀请人手机号（可不填）">
                </div>
                <p style="text-align:center;color:red;">邀请人填写后不可更改哟~</p> -->
                <button class="Sbtn2 weui-dialog__btn" id="btn">注册</button>
                <p style="display:flex;">
                	<input type="checkbox" id="checked" checked="checked" />我已阅读并同意
					<a class="register" href="#" style="text-decoration:underline;color:#1752C9;font-size:0.5rem;letter-spacing:0.05rem;">《注册必读》</a>
                </p>
                
                
        	</div>	
        </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=13"></script>

<script>
	var userId = "${userId}";
	var userPhone = "${userPhone}";
	var bankuid = "${bankuid}";
	var bankId = "${bankid}";
	var indexUrl = "${indexUrl}";
	
	if(bankId) localStorage.setItem("bankId", bankId);
	if(userPhone) localStorage.setItem("userPhone", userPhone);
	if(bankuid) localStorage.setItem("bankuid", bankuid);    		    		
	if(userId) localStorage.setItem("userId", userId);    		    		
	if(indexUrl) localStorage.setItem("homeUrl", indexUrl);
	
	var decd = "${cd}";
	var detm = "${tm}";
	var demc = "${mc}";
	if(decd) localStorage.setItem("cd", decd);    		    		
	if(detm) localStorage.setItem("tm", detm);    		    		
	if(demc) localStorage.setItem("mc", demc);

    $(document).ready(function() {
		/*替换click*/
		FastClick.attach(document.body); 
		
	    $('#showbtn').on('click', function(){
	    	if(!userId){
	    		//登录
	    		$("#iosDialog1").show();
	    	}else{
		    	toBuy();
	    	}
	    });

	});
	
    var oos = "";
	//购买事件
	function toBuy(){
		var loading = weui.loading('正在加载...');	//loading
		
		$.ajax({
			type: "POST",
			url: "${ctx}/yiyg/buy.json",
			data: "pid="+encodeURIComponent("${prod.id}")+"&bankid="+bankId
				+"&userId="+encodeURIComponent(localStorage.getItem("userId")) 
				+ "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))+"&r="+Math.random(),
			timeout : 13000, //超时时间设置，单位毫秒
			success: function(resp){
				loading.hide();
				if (resp.errMsg && resp.errMsg != null) {
					weui.alert(resp.errMsg);
				} else if (resp.orderInfo) {
					oos = resp.orderInfo;
					MBS_DIRECT_PAY();
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
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
	
	/*弹出框1  绑定手机*/
    $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
    	if($("#checked").prop("checked") == true){
    		register();
    	}
    	
    });
	$(".weui-icon-cancel").click(function(){
		$("#iosDialog1").hide();
	});
	
    function keyPress() {    
        var keyCode = event.keyCode;    
        if ((keyCode >= 48 && keyCode <= 57))    
       {    
            event.returnValue = true;    
        } else {    
              event.returnValue = false;    
       }    
    }
    function checkLength(obj,n){
        //obj.value = obj.value.replace(/\D/g,'')
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }

    var bClick = false;
	var timer;
	getCode();
    function getCode(){
    	/*验证码倒计时*/
        var oBtn = document.getElementById("bpcodebtn");
        oBtn.onclick = function(){
            if(bClick == false && checkPhone($("#phone").val())){
		        $('#phone').attr("disabled",true);
	            bClick = true;
	            clearInterval(timer);
            	var loading = weui.loading('正在加载...');	//loading
            	$.ajax({
        			type: "GET",
        			url: "${ctx}/tjhui/getcode.json",
        			data: "phone="+$('#phone').val()+"&bid="+bankuid+"&whitenums="+"&r="+Math.random(),
        			success: function(resp){
        				loading.hide();
        				if(resp.msg && resp.msg.length > 0){
        					$("#iosDialog1").hide();
        					weui.alert(resp.msg);
        					$("#iosDialog1").hide();
        					initTimer();
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
    function checkPhone(num){
    	var phone = parseInt(num);
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
  		var iuphone = $("#iuphone").val();
  		if(!checkPhone(phone))return;
  		if(!ccode){
  			weui.toast('请输入验证码', {
	            duration: 1000,
	            className: 'toast-warn',
	            callback: function(){
	            }
	        });
  			return;
  		}
  		var loading = weui.loading('正在加载...');	//loading
  		$.ajax({
			type: "GET",
			url: "${ctx}/tjhui/register.json",
			data: "phone="+phone+"&code="+ccode+"&bankId="+encodeURIComponent(localStorage.getItem("bankId"))
					+"&bankuid="+localStorage.getItem("bankuid")+"&iuphone="+iuphone
					+"&cd="+localStorage.getItem("cd")+"&tm="+localStorage.getItem("tm")+"&mc="+localStorage.getItem("mc")+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.msg){
					$("#iosDialog1").hide();
					weui.alert(resp.msg,function(){
						$("#iosDialog1").show();
						$("#ccode").val("");
					});
					initTimer();
				}else if(resp.user){
					setUserLocal(resp.user);
					$('#user_ingot_num').html(resp.user.ingotnum);
					$('#iosDialog1').fadeOut(200);
					
					if (resp.exists && resp.exists == "n") {
// 						var da1 = new Date("2019-01-01 00:00:00").getTime();
// 			  			var da2 = new Date().getTime();
// 			  			if(da2>=da1){
			  				if(resp.isolduser&&resp.isolduser!=""){
								weui.alert(resp.isolduser);
							}
// 			  			}else{
// 							goPage('sg');
			  				
// 			  			}
					}
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
  	}
  	function setUserLocal(user){
    	//用浏览器存储
		localStorage.setItem("userId", user.id);
		localStorage.setItem("userPhone", user.phone);
		localStorage.setItem("ssdid", user.ssdid);
		userId = user.id;
    }
	
	/**返回首页**/
  	function toHome(){
  		if(!userId){
	  		window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
  		}else{
  			window.location.href = "${ctx}/yiyg/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
  				+"&userId="+encodeURIComponent(localStorage.getItem("userId")) 
  				+ "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
  		}
  	}

    
</script>
</body>
</html>