<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>收货地址</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    
    <style type="text/css">
        .c-imagetag{top: .8rem;}
        .picTxtList .c-list-left-div{width: 14rem;}
        .c-leftimg-rightall .weui-media-box__bd{margin-top:-20px;}
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
        #c-set-area{font-size: 22px;float:right;color:#aaa;}
        .c-direction:before{border: 0}
        .c-leftimg-rightall .c-esp-desc{width:7.5rem;}
        .weui-cell:before{border-top:0;}
        #c-add-adress .c-c-b{color:#09b6f2;}
        /*#addressdiv{height:500px;}*/
        /*@media only screen and (min-height: 480px) {
		    #addressdiv{height:390px;}
		}
		@media only screen and (min-height: 503px) {
		    #addressdiv{height:510px;}
		}
		@media only screen and (min-height: 667px) {
		    #addressdiv{height:573px;}
		}
		@media only screen and (min-height: 736px) {
		    #addressdiv{height:636px;}
		}*/
		/*#addressdiv{height:500px;}*/
		.weui-form-preview {margin-bottom: 5px;}
		.c-leftimg-rightall h3{display:flex;align-items:center;}
		.c-leftimg-rightall h3 img{width:0.65rem;}
		.weui-form-preview__btn{display:flex;align-items:center;justify-content:center;}
	  .weui-form-preview__btn img{width:0.8rem;}
	  .Img{width:0.8rem;height:0.8rem;background:url(${stax}/assets/images/icon-04.png) no-repeat; background-size:contain;}
	  .imgOn{width:0.8rem;height:0.8rem;background:url(${stax}/assets/images/icon-03.png) no-repeat; background-size:contain;}

#outer{padding-top:44px;padding-bottom:47px;overflow:auto;box-sizing: border-box;overflow:auto;position: relative;}
.weui-navbar{z-index: 999;position: fixed;bottom: 0;left: 0;width: 100%;height: 47px;top: initial;}
	#c-bottom{z-index: 990;position: fixed;bottom: 0;left: 0;width: 100%;height: 47px;background-color: #09b6f2;}
	.weui-navbar__item.weui-bar__item_on{background-color: #09b6f2;color: #fff;}
    </style>
    <script type="text/javascript">
		// if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
		// 	document.getElementsByTagName("style")[0].innerHTML+='#c-adresses{overflow:hidden}';
		// }

	    

	</script>
</head>
<body>

	<!--收货地址页面-->
        <div id="c-adresses" >
        	<div id="outer">
	            <!-- <div id="c-adresses-wrapper"> -->
	                <div class="titleBar">
	                    <div class="titleBar-back" onclick="window.history.back()">
	                        <img src="${stax}/assets/images/history.png" />&nbsp;返回
	                    </div>
	                    <div class="titleBar-text am-text-truncate">收货地址</div>
	<!--                     <div class="titleBar-close">关闭</div> -->
	                </div>
	                <!-- <div class="c-top-block"></div> -->
	                <div class="page__bd" id="addressdiv">
	                    
	                </div>
	            <!-- </div> -->
	            	<div class="" id="c-bottom">
		                <div class="weui-navbar__item weui-bar__item_on blue" id="c-add-address-btn">
		                    	添加收货地址
		                </div>
		            </div>
            </div>
            
        </div>
      
        <!--添加收货地址页面-->
        <div id="c-add-adress" style="display: none;">
            <div id="form">
                <div class="titleBar">
                    <div class="titleBar-back" id="c-add-adress-back">
                        <img src="${stax}/assets/images/history.png" />&nbsp;返回
                    </div>
                    <div class="titleBar-text am-text-truncate">收货地址</div>
<!--                     <div class="titleBar-close">关闭</div> -->
                </div>
                <div class="c-top-block"></div>
                <div class="page__bd">
                    
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__hd"><label class="weui-label">收货人：</label></div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" required="" type="text" id="addName"
                                	maxlength="6" pattern="^[\u4e00-\u9fa5]{0,}$"  placeholder="请输入收货人姓名" notmatchtips="请输入正确的收货人姓名">
                            </div>
                            <div class="weui-cell__ft"> <i class="weui-icon-warn"></i> </div>
                        </div>
                        <input type="hidden" id="id" value="">
                        <div class="weui-cell weui-cell_vcode" style="line-height:initial">
                            <div class="weui-cell__hd">
                                <label class="weui-label">手机号：</label>
                            </div>
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="tel" required="" placeholder="请输入手机号" id="addPhone"
                                	pattern="^\d{11}$" maxlength="11"  emptytips="请输入手机号" notmatchtips="请输入正确的手机号"oninput='checkLength(this,11);'>
                            </div>
                            <div class="weui-cell__ft"> <i class="weui-icon-warn"></i> </div>
                        </div>
                        <div class="weui-cell">
                            <div class="weui-cell__hd">
                                <label class="weui-label">详细地址：</label>
                            </div>
                            <div class="weui-cell__bd">
                                <textarea id="textarea" class="weui-textarea" placeholder="请输入详细地址 如：××省××市××区××街道××号××单元" rows="3" maxlength="50" required="" pattern="REG_EREA"></textarea>
                                <div class="weui-textarea-counter"><span id="textcount">0</span>/50</div>
                            </div>
                        </div>
                    
                    </div>

                </div>

                <div class="weui-cells weui-cells_form" style="margin-top:.5rem;" id ="moren">
                    <div class="weui-cell" onclick="$(this).find('i').toggleClass('c-c-b fa-circle-thin  fa-check-circle-o')">
                        <div class="weui-cell__hd"><label class="weui-label">设置默认地址</label></div>
                        <div class="weui-cell__bd">
                            <i class="fa fa-circle-thin c-m-r-5 c-f-s-18" id="c-set-area" aria-hidden="true"></i>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="weui-navbar weui-navbar-down" id="formSubmitBtn">
                <div class="weui-navbar__item weui-bar__item_on blue">
					保存
                </div>
            </div>
        </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=13"></script>


<script type="text/javascript" >

	var addressList;
	var userId = localStorage.getItem("tjuserId");
	var shc = window.outerHeight+"px";

	var winHeight;
	if (window.innerHeight)
	winHeight = window.innerHeight;
	else if ((document.body) && (document.body.clientHeight))
	winHeight = document.body.clientHeight;

	document.getElementById("outer").style.height = winHeight+'px';
		//if (!/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
			//$("#addressdiv").css("height",shc);
		//}
		//$("#addressdiv").css("height",shc);
	$(document).ready(function() {
		/*收货地址层*/
		//$("#c-adresses-wrapper, #form").height(window.outerHeight-50);
		//$("#addressdiv").height(window.outerHeight-94);
		$("#c-add-adress-back").on("click",function(){
		    $("#c-add-adress").fadeOut(200);
		    $('#addName').val('');
            $('#addPhone').val('');
            $('#textarea').val('');
            $('#id').val('');
            $("#moren").css("display","block");
		    
		});
		$("#c-add-address-btn").on("touchstart",function(){
			if(addressList && addressList.length >= 15){
				weui.alert('每人最多设置15个收货地址');
				return;
			}
		    $("#c-add-adress").fadeIn(200);
		});
		
		/*表单验证*/
		var regexp = {
		    regexp: {
		    	EREA: /[^\s]+/
		    }
		};
		
 		weui.form.checkIfBlur('#form',regexp);
		
		//新增地址
		document.querySelector('#formSubmitBtn').addEventListener('touchstart', function () {
		    weui.form.validate('#form', function (error) {
		        console.log(error);
		        if (!error) {
		        	if(!checkPhone($('#addPhone').val()))return;
		        	addAddress();
		        }
		    },regexp);
		});
		
		/*字数统计*/
		var ctimer = null;
		$("#textarea").on("focus",function(){
		    ctimer = setInterval(function(){
		        $("#textcount").html($("#textarea").val().length);
		    },30);
		});
		$("#textarea").on("blur",function(){
		    clearInterval(ctimer);
		});
		
		getAddrList();
	});

	/*限制手机号*/
	function checkLength(obj,n){
        var re = /\D/g
        if(re.test(obj.value)){
            obj.value = obj.value.replace(/\D/g,'')
        }
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    } 

	function getAddrList(){
		var loading = weui.loading('正在加载...');	//loading
		$.ajax({
			type: "GET",
			url: "${ctx}/useraddress/getInfo.json",
			data: "uid="+userId+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.addressList){
					addressList = resp.addressList;
					fillAddress(resp.addressList);
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
	}
	
	function fillAddress(data){
		$('#addressdiv').html('');
		for(var i=0; i<data.length; i++){
			var dcss = 'weui-form-preview__btn c-c-9';
			var dcss2 = "Img";
			if(data[i].isDefault == "1"){
				dcss = 'weui-form-preview__btn c-c-9 weui-form-preview__btn_primary';
				dcss2 = "Img imgOn";
			}
			var adiv = '<div class="weui-form-preview" data="'+i+'">'+
			                '<div class="weui-form-preview__hd">'+
					            '<label class="weui-form-preview__label"><em class="c-f-s-18 c-c-3">'+data[i].recName+'</em></label>'+
					            '<em class="c-f-s-18">'+data[i].phone+'</em>'+
					        '</div>'+
					        '<div class="weui-form-preview__bd">'+
					            '<div class="weui-form-preview__item c-prev-area">'+(data[i].address)+'</div>'+
					        '</div>'+
					        '<div class="weui-form-preview__ft">'+
					            '<button type="submit" class="'+dcss+'" onclick="setDef(this)" data="'+i+'"><div class="'+dcss2+'"></div>&nbsp;默认地址</button>'+

					            '<a class="weui-form-preview__btn weui-form-preview__btn_default" href="javascript:" onclick="updateAddre(this)"  data="'+i+'"><img src="${stax}/assets/images/icon-01.png">&nbsp;编辑</a>'+
					            
					            '<a class="weui-form-preview__btn weui-form-preview__btn_default" href="javascript:" onclick="delAddre(this)" data="'+i+'"><img src="${stax}/assets/images/icon-02.png">&nbsp;删除</a>'+
					        '</div>'+
					    '</div>';
			$('#addressdiv').append(adiv);
		}
		$('.weui-form-preview__btn_primary i').removeClass('fa-circle-thin').addClass("fa-check-circle-o");
	}
	

	

	/*设置为默认地址*/
	function setDef(obj){
		var loading = weui.loading('正在加载...');	//loading
		var ind = $(obj).attr('data');
		if(addressList && addressList.length > parseInt(ind)){
			var oid = "";
			var oind = -1;
			for(var i=0; i<addressList.length; i++){
				if(addressList[i].isDefault == "1"){
					oid = addressList[i].id;
					oind = i;
					break;
				}
			}
			if(addressList[parseInt(ind)].isDefault != '1'){
				$.ajax({
					type: "POST",
					url: "${ctx}/useraddress/setDef.json",
					data: "nid="+addressList[parseInt(ind)].id+"&oid="+oid+"&r="+Math.random(),
					success: function(resp){
						loading.hide();
						console.log(resp);
						if(resp.status){
							weui.toast('设置成功', {
					            duration: 1000,
					            className: 'toast-warn',
					            callback: function(){
					                //document.querySelector("#phone").value = "";
					            }
					        });
							//设置全局变量值
							addressList[parseInt(ind)].isDefault = "1";
							if(oind > -1)
								addressList[parseInt(oind)].isDefault = "0";
							
							//设置css
							$('.weui-form-preview__btn_primary i').removeClass("fa-check-circle-o").addClass("fa-circle-thin");
							$('.weui-form-preview__btn_primary').removeClass('weui-form-preview__btn_primary');
							$(obj).addClass('weui-form-preview__btn_primary');
                            $('.imgOn').removeClass('imgOn');
                            $(obj).find("div").addClass("imgOn")
							$('.weui-form-preview__btn_primary i').removeClass('fa-circle-thin').addClass("fa-check-circle-o");
						}
					},
					error:function(er){
						loading.hide();
						console.log(er);
					}
		    	});
			}else{
				loading.hide();
				console.log('already default');
			}
		}else{
			loading.hide();
			console.log('no addressList');
		}
	}
	
	/*删除地址*/
	function delAddre(obj){
		//默认地址不能删除
		var ind = $(obj).parent().find('button').attr('data');
		if(addressList[parseInt(ind)].isDefault == '1'){
			weui.alert('不能删除默认地址!');
			return;
		}
		
		weui.confirm('确定删除？', function(){
			var loading = weui.loading('正在加载...');	//loading
			var ind = $(obj).attr('data');
			if(addressList && addressList.length > parseInt(ind)){
				var aid = addressList[parseInt(ind)].id;
				$.ajax({
					type: "POST",
					url: "${ctx}/useraddress/delAddr.json",
					data: "aid="+aid+"&uid="+userId+"&r="+Math.random(),
					success: function(resp){
						loading.hide();
						console.log(resp);
						if(resp.status){
							weui.toast('操作成功', {
					            duration: 1000,
					            className: 'toast-warn',
					            callback: function(){
					                //document.querySelector("#phone").value = "";
					            }
					        });
							//如果删除当前选中的地址则清空
							if(aid == $('#addressId').html()){
								$('#addressId').html('');
								$('#recName').html('');
								$('#phone').html('');
								$('#address').html('');
							}
							//设置全局变量值
							addressList = resp.addressList;
							fillAddress(resp.addressList, null);
						}
					},
					error:function(er){
						loading.hide();
						console.log(er);
					}
		    	});
			}else{
				loading.hide();
			}
		}, function(){ console.log('no'); });
	}
	
	
	/* 编辑收货地址 */
	function updateAddre(obj){
		//var loading = weui.loading('正在加载...');	//loading
		var ind = $(obj).attr('data');
		$("#addName").val(addressList[parseInt(ind)].recName);
		$("#addPhone").val(addressList[parseInt(ind)].phone);
		$("#textarea").val(addressList[parseInt(ind)].address);	
		$("#id").val(addressList[parseInt(ind)].id);
		/* if(addressList[parseInt(ind)].isDefault == "1"){
			$("#c-set-area").removeClass('fa-circle-thin').addClass("c-c-b fa-check-circle-o");
		}else{
			$("#c-set-area").addClass('fa-circle-thin').removeClass("c-c-b fa-check-circle-o");
		}	 */ 
		$("#moren").css("display","none");
		$("#c-add-adress").fadeIn(200);

	}
	
	
	/*添加地址*/
	function addAddress(){
		var loading = weui.loading('正在加载...');	//loading
		var isdef = "0";
		var oid = "";
		if($('#c-set-area').hasClass('c-c-b')){
			isdef = "1";
			if(addressList && addressList.length > 1){
				for(var i=0; i<addressList.length; i++){
					if(addressList[i].isDefault == "1"){
						oid = addressList[i].id;
						break;
					}
				}
			}
		}else{
			if(!addressList || addressList.length <= 0){
				isdef = "1";	//第一个默认为默认地址
			}
		}
		
		$.ajax({
			type: "POST",
			url: "${ctx}/useraddress/addAddr.json",
			data: "uid="+userId+"&recName="+$('#addName').val()+"&phone="+$('#addPhone').val()+"&address="+$('#textarea').val()
						+"&isDefault="+isdef+"&id="+$('#id').val()+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				console.log(resp);
				if(resp.status){
					weui.toast('操作成功', {
			            duration: 1000,
			            className: 'toast-warn',
			            callback: function(){
			                //document.querySelector("#phone").value = "";
			            }
			        });
					//设置全局变量值
					addressList = resp.addressList;
					fillAddress(resp.addressList, null);
					$("#c-add-adress").fadeOut(200);
		            $("#c-adresses").fadeIn(200);
		            //清空
		            $('#addName').val('');
		            $('#addPhone').val('');
		            $('#textarea').val('');
		            $('#id').val('');
		            $("#moren").css("display","block");
		            $('#c-set-area').removeClass('c-c-b fa-check-circle-o').addClass("fa-circle-thin");
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