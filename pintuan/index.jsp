<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<%@ page import="com.ronglian.tjpt.system.util.IPInfoUtil"%>
<%-- <%
    String ip = IPInfoUtil.getIpAddr(request);
    String addr = IPInfoUtil.getBaiduMapByIp(ip);
%> --%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>“天津惠”拼团有礼</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    
    <style type="text/css">
        .container {padding-top: 0;}
        #scroll-top-block{width:100%;height:44px;background:#f2f1f1;}
        #scroll-bottom-block{width:100%;height:45px;background:#f2f1f1;}
        .picTxtList{margin-bottom:10px;}
        
        /*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#0066b3;}
        .js_dialog input.weui-input{color:#333;}
        .buyNote{float: right;margin-right: 15px;}
        .weui-tab{height:auto;}
        .weui-dialog{overflow: visible;}
        #c-login-close,#c-login-close2{position: absolute;top: -1rem;right: -1rem;color: #fff;}
        #c-intro-wrapper{padding: 0 5px;}
        .weui-cells:before,.weui-cells:after{border: 0;}

        /*新首页*/
        #dataArea{background:url(${stax}/assets/images/tj-index-bg.jpg) no-repeat #e9ffe6;width: 100%;background-size:contain;min-height:14rem;}
        .c-top-bg{background:url(${stax}/assets/images/tj-index-top-bg1.jpg) no-repeat;width: 100%;background-size:cover;height:240px;}
        .c-bottom-bg{background:url(${stax}/assets/images/tj-index-bottom-bg.jpg) no-repeat;width: 100%;background-size:cover;height:120px;}
        /*内容*/
        .c-index-hot h3 {font-size: .7rem;padding: 7px;padding-left: 15px;}
        .c-remenhd {width: 20px;height: 20px;display: inline-block;vertical-align: sub;}
        .c-index-hot .weui-flex:nth-child(2){border-bottom:0;}
        .c-index-hot .weui-media-box__hd img{width: 3.2rem;}
        .weui-flex .weui-flex__item:nth-child(odd){border-right:0;margin-right: .3rem;}
        a.weui-media-box:active{background: #fff;}
        .local-special{margin-bottom:-50px;}
        .local-special .weui-flex__item{border:0;flex-grow: 0;}
        .local-special .weui-flex{padding:.4rem 14px 0;}
        .weui-media-box_appmsg .weui-media-box__hd{margin-right:0;}
        .local-special .weui-media-box__hd img{border-radius:0;width:5rem;margin: 0 auto;}
        .weui-media-box__desc{font-size: 12px;}
        .local-special a.weui-media-box{padding:0;width:7.2rem;}
        .local-special .weui-media-box__bd{background:#fff;border-radius: 3px;padding: .4rem;text-align: left;padding-top:.6rem;}
        .weui-media-box_appmsg .weui-media-box__hd{width:5rem;height:5rem;display:flex;align-items:center;margin:auto;}
        .weui-media-box_appmsg h4, .c-goods-details h4.weui-media-box__title{font-size: .7rem;}
        .openbtn{width:2.8rem;height:1.3rem;background:#45c8b3;color:#fff;font-size: .6rem;text-align: center;vertical-align: middle;display: none;}
        .c-oldprice{text-decoration:line-through;color:#aaa;margin-left:10px;}
        .weui-media-box__desc{color:#666;}
        .weui-navbar__item.weui-bar__item_on{color:#49c8b5;background: #fff;}
        .weui-navbar__item{color:#9a9a9a;}

        #searchBar{position: absolute;top: 6.5rem;right: 15px;z-index: 990;width: 138px;left: auto;background: none;}
        #ruleblock{position: absolute;bottom: 0rem;right:.2rem;z-index: 990;left: auto;background: none;}
        #ruleblock img{width: 2.2rem;height:2.2rem;}
        .weui-search-bar:before,.weui-search-bar:after{display: none;}
        #searchText i{float: left;margin-right:0;height: 32px;line-height: 32px;}
        #searchText span{float: right;font-size: 12px;margin-right: 5px;}
        #toSearch{border:0;border-radius: 5px;}
        .titleBar-text{padding-left: 0;width: 100%;}
        @media screen and (min-width:350px){.c-top-bg{height: 280px;}}
        @media screen and (min-width:410px){.c-top-bg{height: 310px;}}

        /*noFlex*/
        .weui-flex{display: block;}
        #dataArea{clear: both;display: inline-block;}
        .local-special .weui-flex{padding: 0.4rem .6rem 0;clear: both;float: left;}
        .weui-flex .weui-flex__item:nth-child(odd){margin-right: 7px;}
        .local-special .weui-flex__item{float: left;}
        .rulealert,.restalert{width: 70%;height:60%;background: #fff;position: absolute;top: 20%;left: 10%;z-index: 1000;border-radius: 5px;padding:1rem 1rem;}
        .rulealert .text1,.restalert .text1{font-size: .7rem;overflow-y: auto;height: 100%}
        .zhezhao{position: absolute;top: 0;left: 0;bottom: 0;right: 0;background: #000;opacity: .5;z-index: 999;}
        .c-close,.c-close2{width:1.2rem;height:1.2rem;background: url(${stax}/assets/images/bottom-close2.png) no-repeat;position: absolute;right: -18px;top:-30px;background-size:contain;z-index: 1000}
    	.weui-media-box__bd{height:7.6rem;}
    	.c-a{font-size:16px; text-align:center;display:block;margin-top:10px;}
    	.nuandongimg{margin-top:0.5rem !important;}
    	
    </style>
    <title></title>
</head>
<body style="position: relative;">
    <div class="zhezhao" style="display: none;"></div>
    
    <div class="rulealert" style="display: none;">
        <div class="c-close"></div>
        <div class="text1">
&nbsp;&nbsp;1.活动时间：2019年8月23日-2019年10月31日，6：00-24:00（拼团商品售完活动自动结束）。<br />
&nbsp;&nbsp;2.参与方式：点击天津惠“拼团有礼”广告进入，或者用建行手机银行扫描“拼团有礼”活动二维码进入。 <br />
&nbsp;&nbsp;3.搜索拼团ID即可找到该团，购买该商品的好友即为参团成员，参团成员也可邀请更多的成员参加。客户参加拼团后，可分享至微信朋友圈，分享起到宣传作用，不能在微信端参与拼团。<br />
&nbsp;&nbsp;4.取消订单：拼团订单支付成功后不支持取消订单。<br />
&nbsp;&nbsp;5.拼团成功：开团24小时内达到规定的成团人数，即可拼团成功，拼团成功后系统24小时内完成发货。用户可在【个人中心】——【我的活动】中查看拼团相关信息。 <br />
&nbsp;&nbsp;6.拼团失败：开团24小时内未能找到相应人数的好友参团，该团失败，系统自动退款。<br />
&nbsp;&nbsp;7.支付时限：开团或参团后请于3分钟内完成支付，否则系统将自动删除订单，支付无效。   <br />
&nbsp;&nbsp;8.本活动可使用建行手机银行APP龙支付，和建行账号支付方式进行支付。<br />
&nbsp;&nbsp;9.本活动仅限天津地区手机号用户参与，不允许使用虚拟手机号注册天津惠并参加活动，活动期间每位客户每件商品仅限购买一次。2019年客户累计最多可参加拼团有礼活动4次。 <br />
&nbsp;&nbsp;10.活动声明：活动过程中，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。<br />
&nbsp;&nbsp;11.拼团商品问题客服电话：4001570096，拼团支付问题客服电话：022-58750200，咨询时间：周一至周五9:30至17:00。<br />
        </div>
    </div>
    <div class="restalert" style="display: none;">
        <div class="c-close2"></div>
        <div class="text1">
        <p style="font-size:.8rem;text-align:center;margin-bottom:10px;">国庆节放假通知</p>
尊敬的顾客朋友：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好！<br />
&nbsp;&nbsp;2017年国庆节假期将至，公司全员放假时间为10月1日-9日。公司放假期间客服电话可正常拨打，客服负责记录问题，需技术人员处理问题上班后统一解决。<br />
&nbsp;&nbsp;拼团商品9月30日14点之前的订单可当日发出，14点以后付款的商品上班后按订单先后顺序安排发货，感谢您的理解。<br />
&nbsp;&nbsp;预祝各位国庆节假期愉快，期待大家持续关注我们的活动，你的参与就是对我们最大的支持！<br />
        </div>
    </div>
    <div class="weui-loading_toast " style="display: none;"> 
        <div class="weui-mask_transparent"></div> 
        <div class="weui-toast weui-animate-fade-in"> 
            <i class="weui-loading weui-icon_toast"></i> 
            <p class="weui-toast__content">正在加载...</p> 
        </div> 
    </div>

    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back gohome" onclick="toHome();">
                 <img src="${stax}/assets/images/history.png" />&nbsp;返回
             </div> 
            <div class="titleBar-text am-text-truncate">拼团</div>
        </div>


        <!-- 列表内容 -->
        <div class="c-content" id="c-iscroll">
            <div  id="wrapper">
                <div  style="-webkit-margin-before:0em;">
                    <div id="scroll-top-block"></div>
                    <div>
                        <div class="c-top-bg" style="position: relative;">
                            <!-- 搜索栏 -->
                            <div class="weui-search-bar" id="searchBar">
                                <form class="weui-search-bar__form" id="toSearch">
                                    <div class="weui-search-bar__box">
                                        <i class="weui-icon-search"></i>
                                        <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索" required="">
                                        <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
                                    </div>
                                    <label class="weui-search-bar__label" id="searchText" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);">
                                        <i class="weui-icon-search"></i>
                                        <span>搜索ID快速参团</span>
                                    </label>
                                </form>
                            </div>
                            <div class="weui-search-bar" id="ruleblock">
                                <img src="${stax}/assets/images/rules.png">
                            </div>
                        </div>
                        <div class="c-index-hot local-special" id="dataArea">
                            	<!-- 此处去掉商品，改为Banner -->
                            	<div id="hxbannerCon" class="weui-flex">
								</div> 
                        </div>
                        <div class="c-bottom-bg"></div>
                    </div>
                    <div id="scroll-bottom-block"></div>
                </div>
            </div>
        </div>

     </div>
     
     
  <div class="js_dialog" id="iosDialog1" style="opacity: 1; display:none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <i class="weui-icon-cancel" id="c-login-close"></i>
                <div class="weui-dialog__bd c-f-s-16" style="color: #0066b3; padding-top: 1.7em;">
                                                            请绑定手机号码
                    <div class="weui-cells weui-cells_form">

                        <div class="weui-cell">
                            <div class="weui-cell__bd">
                                <input id="phone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*"
                                    placeholder="请输入您的手机号码">
                            </div>
                        </div>
                        <div class="weui-cell weui-cell_vcode">
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="number" pattern="[0-9]*" id="ccode"
                                    oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码">
                            </div>
                            <div class="weui-cell__ft">
                                <button id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
                            </div>
                        </div>
						
						<div class="weui-cell" style="margin-top:0.3rem;">
                            <div class="weui-cell__bd">
                                <input id="phone2" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*"
                                    placeholder="请输入邀请人手机号">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确定</a>
                </div>
            </div>
        </div>
        
        <!-- 身份验证弹出框 -->
       <!--  <div class="js_dialog" id="iosDialog2" style="opacity: 1; display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <i class="weui-icon-cancel" id="c-login-close2"></i>
                <div class="weui-dialog__bd c-f-s-16" style="color: #0066b3; padding-top: 1.7em;">

                   身份验证
                    <div class="weui-cells weui-cells_form">

                        <div class="weui-cell">
                            <div class="weui-cell__bd" style="border: 1px solid #ddd;">
                                <input id="idcard" class="weui-input" type="num" maxlength="6" pattern="[0-9]*"
                                    placeholder="请输入身份证后六位">
                            </div>
                        </div>

                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:checkIdCard();" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确定</a>
                </div>
            </div>
        </div> -->

        <!-- 标签栏 -->
        <!-- <div class="weui-tab">
            <div class="weui-navbar weui-navbar-down">
                <div class="weui-navbar__item weui-bar__item_on">首页</div>
                <div class="weui-navbar__item" onclick="goPage('personal')">个人中心</div>
            </div>
        </div> -->

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/iscroll.js"></script>
<script src="${stax}/assets/js/iscrollAssist.js"></script>
<script src="${stax}/assets/js/common.js"></script>

<script type="text/javascript" >

    /****处理返回空白 (vivo、乐视)***/
//  var u = navigator.userAgent;
//  if(u.indexOf('vivo') > -1 || u.indexOf('Le') > -1){
//      var f = localStorage.getItem("flg");
//      if(!f){
//          localStorage.setItem("flg", "1");
//          window.location.href = window.location.href;
//      }else{
//          localStorage.removeItem("flg");
//      }
//  }

// localStorage.clear();

    var bankid = "${bankid}";
    var bankuid = "${bankuid}";
    var uid = localStorage.getItem("userId");
    var qrqmpage = "${qrqmpage}";
    var hflag = "${hflag}";
//     var indexUrl = "${indexUrl}";
//   	if(indexUrl) localStorage.setItem("homeUrl", '${indexUrl}');
    if(qrqmpage&&qrqmpage!=""){
    	$(".gohome").hide();
    	uid = "${uid}";
    	if(localStorage.getItem("userId")&&localStorage.getItem("userId")!=""){
    		
    	}else{
    		if(uid&&uid!=""){
    			localStorage.setItem("userId",uid);
    		}
    	}
    	
    }
    //用浏览器存储
    if(bankid) localStorage.setItem("bankId", bankid);
    if(bankuid) localStorage.setItem("bankuid", bankuid);

    
    var ronglians = "13601312513,18601330691,13337869065,18201390602,15801420801,15711077673"
        +",13240191681,13520607390,18410422633,13810080187,15010197763,13641365154";
    var whitenums = ronglians+",18622461246,13920555585,18622267371";

    
    var bankId = localStorage.getItem("bankId");
    var minH = window.innerHeight-$("#scroll-top-block").height();  //检测是否有内容
    var iscrollObj;
    //$("#dataArea").css("minHeight",minH+"px");
    var pulldownAction = function(){
    	if(uid&&uid!=""){
    		$('#dataArea').html('');
            lastId = 0;
            getProds(this);
            $("#pullup-label").text("上拉加载更多");
    	}
    };
    var pullupAction = function(){
    	if(uid&&uid!=""){
        	getProds(this);
    	}
    };

    window.onload=function(){
        iscrollObj = iscrollAssist.newVerScrollForPull(
            $('#wrapper'),pulldownAction,pullupAction
        );
        console.log("uid=="+uid);
        if(uid&&uid!=""){
        	getProds(iscrollObj);
        }
    };
    
    //获取商品信息-渲染-计算高度
    function getProds(iscrollObj){
        $(".weui-loading_toast").show();
        function promiseLoad(){
            return new Promise(function(resolve,reject){
                $.ajax({
                    type: "GET",
                    url: "${ctx}/bannertuan/getProdInfo.json",
                    data: "bankId="+encodeURIComponent(bankId)+"&uid="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
                    success: function(resp){
                    	if(resp.msg&&resp.msg!=""){
                    		$(".weui-loading_toast ").hide();
                    		 weui.alert(resp.msg);
                    	}else{
                    		resolve(resp);
                    	}
                    },
                    error:function(er){
                        reject(er);
                    }
                });
            })
        };
        promiseLoad().then(
            function(resp){
                if(resp.prdList && resp.prdList.length > 0){
                    fillPrd(resp.prdList);
                    setTimeout(function () {
                        iscrollObj.refresh();
                        $(".weui-loading_toast ").hide();
                    }, 200);
                }else{
                    $(".weui-loading_toast, loading").hide();
                    $("#pullup").removeClass();
                    $("#pullup").find(".pullup-icon").removeClass("pullup-icon");
                    $("#pullup-label").text("");//没有更多了~
                }
            },function(er){
                weui.toast(er, {
                    duration: 2000,
                    className: 'toast-warn',
                    callback: function(){ 
                        return false;  
                    }
                });
            }
        );
    }
    
    //填充商品列表
    function fillPrd(data){
        //$('#dataArea').html('');
        var begindiv = '<div class="weui-flex">';
        var enddiv = '</div>';
        var pdiv = '';
        for(var i=0; i<data.length; i++){
            var pimg = data[i].picUrl ? data[i].picUrl : "${stax}/assets/images/2-0-goods2.jpg";
            var status = data[i].status;
            console.log(status);
            var saledAndRemain = '';
            if(status != undefined && status == 4){
            	saledAndRemain = '<p class="pri c-f-s-16"><span class="c-c-r c-a">暖冬优惠购</span></p>';
            	saledAndRemain = 
            		'<div class="weui-flex__item">'+
	                    '<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">'+
	                        '<div class="weui-media-box__bd">'+
	                        '<div class="weui-media-box__hd touchView" data-pid="'+data[i].id+'" data-property="'+data[i].property+'" data-status="'+data[i].status+'">'+
	                                '<img class="weui-media-box__thumb nuandongimg" src="'+pimg+'" alt="">'+
	                            '</div>'+
	                            '<p class="pri c-f-s-16"><span class="c-c-r c-a">暖冬优惠购</span></p>'+
	                        '</div>'+
	                    '</a>'+
             		'</div>';
            }else{
            	saledAndRemain = 
            		'<div class="weui-flex__item">'+
	                    '<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">'+
	                        '<div class="weui-media-box__bd">'+
	                        '<div class="weui-media-box__hd touchView" data-pid="'+data[i].id+'" data-property="'+data[i].property+'" data-status="'+data[i].status+'">'+
	                                '<img class="weui-media-box__thumb" src="'+pimg+'" alt="">'+
	                            '</div>'+
	                            '<h4 class="weui-media-box__title am-text-truncate">'+data[i].prodName+'</h4>'+
	                    		'<p class="pri c-f-s-16"><span class="c-c-r">￥'+data[i].prodPrice+'</span><span class="c-f-s-12 c-oldprice">￥<s>'+data[i].oldPrice+'</s></span></p>'+
	                            '<div class="openbtn touchView" data-pid="'+data[i].id+'">去开团</div>'+
	                        '</div>'+
	                    '</a>'+
             		'</div>';
            }
            if(i % 2 == 0) pdiv += begindiv;
            pdiv += saledAndRemain;
            if(i % 2 == 0){
                if(i == (data.length - 1)) pdiv += enddiv;
            }else{
                pdiv += enddiv;
            }
        }
        
        $('#hxbannerCon').before(pdiv);
        $(".touchView").on("tap",function(){
        	if(checkUser()){
        		toView(this.dataset.pid, this.dataset.property,this.dataset.status);
        	}else{
        		$("#iosDialog2").show();
        	}
        });
    }

    
    //点击图片查看商品详情页面
    function toView(pid, property,status){
        /* if(pid == "16"){
            var up = localStorage.getItem("userPhone");
            if(whitenums.indexOf(up) > -1){
//              cango = true;
            }else{
                weui.alert('拼命准备中，敬请期待...');
                return false;
            }
        } */
        
		if(!checkUser()) return;
    	
    	if (property==1||property==2) {
    		
    		if (!checkWhiteList(pid)) {
    			return;
    		}
    	}	
    	if(!bankId){
    		alert('数据缺失 bid');
    		return;
    	}
    	
    	//校验status=4，跳转暖冬页面
    	if(status == 4){
    		window.location.href ="${ctx}/bannertuan/nuandongactivity.do?uid="+encodeURIComponent(localStorage.getItem("userId"))+"&pid="+pid;
    	}else{
    	 	var loading = weui.loading('正在加载...');
	        iscrollObj.destroy();
	        iscrollObj = null;
	     	window.location.href = "${ctx}/bannertuan/pdetail.do?bankId="+encodeURIComponent(bankId)+"&pid="+pid+"&uid="+encodeURIComponent(localStorage.getItem("userId"));	
    	}
    }
    
    //去查询页面
    $("#toSearch").on("touchstart",function(){
       if(!checkUser()) return false;
//         if(checkLocation()){
            var loading = weui.loading('正在加载...');
            iscrollObj.destroy();
            iscrollObj = null;
            window.location.href = "${ctx}/bannertuan/search.do";
//        }
    });

  //参与活动
    function goPage(flag){
      
//         if(!checkLocation()) return;
//         else{
            if(flag == 'personal'){ //个人中心
            	var loading = weui.loading('正在加载...');	//loading
            	gomycenter();
//       			window.location.href = '${ctx}/mycenter/personal.do' + (localStorage.getItem("userId") ? "?userId="+encodeURIComponent(localStorage.getItem("userId")) : "");
      			return;
            }
//         }
    }
      
  
  
    /**********************************************/
    /* Banner点击弹出登录 */
//     $(".banner").on("click",function(){
//     	if(!checkUser()) {
//     		$("#iosDialog2").show();
//     	}
//     })
    
    $("#c-login-close").on("click",function(){
        $("#iosDialog1").hide();
    });
    $("#c-login-close2").on("click",function(){
        $("#iosDialog2").hide();
    });
    /*弹出框1  绑定手机*/
    $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
        register();
    });
    
    $(".c-close").on("click",function(){
        $(".zhezhao,.rulealert").hide();
    })
    
    $(".c-close2").on("click",function(){
        $(".zhezhao,.restalert").hide();
    })

    $("#ruleblock").on("tap",function(){
        $(".zhezhao,.rulealert").show();
    })
    
    $("#hxbanner").on("tap",function(){
        gohx();
    })

    function setUserLocal(user){
        //用浏览器存储
        uid = localStorage.getItem("userId");
        localStorage.setItem("userId", user.id);
        localStorage.setItem("userPhone", user.phone);
        localStorage.setItem("tjuserWPhone", phone);
    }
    
    var bClick = false;
    var timer;
    function getCode(){
        /*验证码倒计时*/
        var oBtn = document.getElementById("bpcodebtn");
        oBtn.onclick = function(){
            if(bClick == false && checkPhone($("#phone").val())){
                $('#phone').attr("disabled",true);
                bClick = true;
                var loading = weui.loading('正在加载...');  //loading
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
    
    function checkWhiteList(pid) {
    	var uid = localStorage.getItem("userId");
    	var res = false;
    	
    	$.ajax({
			type: "GET",
			url: "${ctx}/bannertuan/checkwl.json",
			data: "uid="+encodeURIComponent(localStorage.getItem("userId"))+"&pid="+pid,
			async:false,
			success: function(resp){
				res = resp.include;
				/* if (resp.wphone) {
					localStorage.setItem("tjuserWPhone", resp.wphone);
				} */
				if (resp.errMsg) {
					weui.alert(resp.errMsg);
				}
			},
			error:function(){
				 loading.hide();
	             console.log(er);
			}
    	});
    	return res;
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
    $(document).on("input propertychange","#phone2",function(e){
        if(e.type === "input" || e.orignalEvent.propertyName === "value"){         
            this.value=this.value.replace(/\D/gi,"");
            if(this.value.length == 11){
               checkPhone(this.value)
            }
        }
    });
    
    /**绑定手机**/
    function register(){
        
        var phone = $('#phone').val();
        var ccode = $('#ccode').val();
        var iuphone =$("#phone2").val();
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
        var loading = weui.loading('正在加载...');  //loading
        $.ajax({
            type: "GET",
            url: "${ctx}/tjhui/register.json",
            data: "phone="+phone+"&code="+ccode+"&bankId="+localStorage.getItem("bankId")+"&bankuid="+localStorage.getItem("bankuid")+"&iuphone="+iuphone+"&type=bannerTuan&r="+Math.random(),
            success: function(resp){
            	console.log(resp);
                loading.hide();
                if(resp.msg){
                    $("#iosDialog1").hide();
                    weui.alert(resp.msg,function(){
                        $("#iosDialog1").show();
                        $("#ccode").val("");
                    });
                    initTimer();
                }else if(resp.user){
                    setUserLocal(resp.user, resp.wphone);
                    $('#iosDialog1').fadeOut(200);
                    getProds(iscrollObj);
                }
                
            },
            error:function(er){
                loading.hide();
                console.log(er);
            }
        });
    }

   	function checkUser(){
        //修改为根据本系统userID判断是否需要登录
        if(!localStorage.getItem("userId")){
            $('#iosDialog1').fadeIn(200);
            getCode();
            return false;
        }
        return true;
    }
    
    function checkLength(obj,n){
        //obj.value = obj.value.replace(/\D/g,'')
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }
    
    function checkLocation(){
        var addr = '${addr}';
        console.log("addr=="+addr);
        var cango = false;
        if(addr){
            var prci = addr.split('-');
            if(prci.length >= 2){
                if('天津市' == prci[1]){
                    cango = true;
                }
            }
        }   
        
        var up = localStorage.getItem("userPhone");
        if(whitenums.indexOf(up) > -1){
            cango = true;
        } 
        
        if(!cango){ //再次判断电话号码
            if(up && up.length == 11){
                $.ajax({
                    type: "GET",
                    url: "${ctx}/tjhui/getPhoneProvince.json",
                    data: "phone="+up+"&r="+Math.random(),
                    async: false,
                    success: function(resp){
                        if(resp.data){
                            if(resp.data.indexOf('天津') > -1){
                                cango = true;
                            }
                        }
                    },
                    error:function(er){
                        loading.hide();
                        console.log(er);
                    }
                });
            }
            
        }
        
        if(!cango){
            weui.alert('抱歉，本活动为天津建行客户专享活动');
        }
        return cango;

        
      <%--  var ip = '<%=ip%>';
        if(ip == '111.204.81.18') cango = true; --%>
            
        
/*          if(!cango){
//          if(!confirm('测试中放行')){
//              weui.alert('抱歉，本活动为天津建行客户专享活动');
//              return false;
//          }else{
                return true;
//          }
//          return false;
        }else{
            return true;
        }  */
        
    }
    
   /*  function gohx() {
    	//if(!checkUser()) return;
    	
    	//if(!checkLocation()) return;
    	
    	var loading = weui.loading('正在加载...');  //loading
		$.ajax({
    		type: "GET",
    		url: "${ctx}/bannertuan/checkhxwl.json",
    		data: "uid="+localStorage.getItem("userId")+"&r="+Math.random(),
    		success: function(resp){
        		loading.hide();
        		if(resp.needInput){
        			$('#iosDialog2').fadeIn(200);
        		} else if (resp.include) {
        			window.location.href = '${ctx}/bannertuan/indexhx.do?uid='+localStorage.getItem("userId");
        		} else {
        			weui.alert("本活动为天津市肿瘤医院员工专享");
        		}
    		},
    		error:function(er){
        		loading.hide();
        		console.log(er);
    		}
		});
    } */
    
   /*  function checkIdCard() {
    	var idcard = $('#idcard').val();
        if(!idcard){
            weui.toast('请输入身份证后六位', {
                duration: 1000,
                className: 'toast-warn',
                callback: function(){
                }
            });
            return;
        }
        var reg = /(^\d{6}$)|(^\d{5}(\d|X|x)$)/;
        if (reg.test(idcard) === false) {
        	weui.toast('请输入正确的身份证后六位', {
                duration: 1000,
                className: 'toast-warn',
                callback: function(){
                }
            });
            return;
        }
        $('#iosDialog2').fadeOut(200);
        var loading = weui.loading('正在加载...');  //loading
        $.ajax({
            type: "GET",
            url: "${ctx}/bannertuan/saveAndCheckIdCard.json",
            data: "idcard="+idcard+"&uid="+localStorage.getItem("userId")+"&r="+Math.random(),
            success: function(resp){
                loading.hide();
                if(resp.include){
                	window.location.href = '${ctx}/bannertuan/indexhx.do?uid='+localStorage.getItem("userId");
                } else {
                	weui.alert("本活动为天津市肿瘤医院员工专享");
                }
            },
            error:function(er){
                loading.hide();
                console.log(er);
            }
        });
    } */
    var indexUrl = localStorage.getItem("homeUrl");
    
    function toHome(){
    	if(uid&&uid!=""){
    		window.location.href = "${ctx}/tjhui"+indexUrl;
    	}
    }
    
</script>
</body>
</html>
