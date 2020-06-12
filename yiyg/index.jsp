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
    <title>一元购专区</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    
    <style type="text/css">
        .container {padding-top: 0;background:#fff;}
        #scroll-top-block{width:100%;height:44px;background:#f2f1f1;}
        #scroll-bottom-block{width:100%;height:45px;background:#f2f1f1;}
        .picTxtList{margin-bottom:10px;}
        
        /*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#09b6f2;}
        .js_dialog input.weui-input{color:#333;}
        .buyNote{float: right;margin-right: 15px;}
        .weui-tab{height:auto;}
        .weui-dialog{overflow: visible;}
        #c-login-close{position: absolute;top: -1rem;right: -1rem;color: #fff;}
        #c-intro-wrapper{padding: 0 5px;}
        .weui-cells:before,.weui-cells:after{border: 0;}

        /*新首页*/
        #dataArea{background:#fff;width: 100%;background-size:contain;}
        .c-top-bg{background:#fff;width: 100%;background-size:cover;height:240px;}
        .c-bottom-bg{background:#fff;width: 100%;background-size:cover;height:50px;}
        /*内容*/
        .c-index-hot h3 {font-size: .7rem;padding: 7px;padding-left: 15px;}
        .c-remenhd {width: 20px;height: 20px;display: inline-block;vertical-align: sub;}
        .c-index-hot .weui-flex:nth-child(2){}
        .c-index-hot .weui-media-box__hd img{width: 3.2rem;}
        .weui-flex .weui-flex__item:nth-child(odd){border-right:0;margin-right: .3rem;}
        a.weui-media-box:active{background: #fff;}
        .local-special{margin-bottom:-50px;}
        .local-special .weui-flex__item{border:0;flex-grow: 0;}
        .local-special .weui-flex{padding:0rem 14px 0;}
        .weui-media-box_appmsg .weui-media-box__hd{margin-right:0;}
        .local-special .weui-media-box__hd img{border-radius:0;margin: 0 auto;width:4rem;}
        .weui-media-box__desc{font-size: 12px;line-height:1.6;}
        .local-special a.weui-media-box{padding:0;width:7.2rem;}
        .local-special .weui-media-box__bd{background:#fff;border-radius: 3px;padding: .4rem;text-align: left;padding-top:.3rem;}
        .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        .weui-media-box_appmsg h4, .c-goods-details h4.weui-media-box__title{font-size: .7rem;}
        .openbtn{line-height: 1.8rem;width:2rem;height:1.8rem;background:url(${stax}/assets/images/goldbig.png) no-repeat;background-size:contain;color:#b86c00;font-size: .6rem;text-align: center;vertical-align: middle;    position: absolute;bottom: 31px;left: 3rem;}
        .c-oldprice{text-decoration:line-through;color:#aaa;}
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
        .local-special .weui-flex{padding: 0rem .6rem 0;clear: both;float: left;border-bottom:1px solid #eee;}
        .weui-flex .weui-flex__item:nth-child(odd){margin-right: 7px;border-right:1px solid #eee;}
        .local-special .weui-flex__item{float: left;}
        .rulealert,.restalert{width: 70%;height:60%;background: #fff;position: absolute;top: 20%;left: 10%;z-index: 1000;border-radius: 5px;padding:1rem 1rem;}
        .rulealert .text1,.restalert .text1{font-size: .7rem;overflow-y: auto;height: 100%}
        .zhezhao{position: absolute;top: 0;left: 0;bottom: 0;right: 0;background: #000;opacity: .5;z-index: 999;}
        .c-close,.c-close2{width:1.2rem;height:1.2rem;background: url(${stax}/assets/images/bottom-close2.png) no-repeat;position: absolute;right: -18px;top:-30px;background-size:contain;z-index: 1000}
    	.mygoldbean{font-size:.7rem;text-align:center;background:#fff;border-bottom:1px solid #ddd;}
		.mygoldbean h3,.mygoldbean img{display:inline-block;}
		.mygoldbean img{width:1.3rem;height:1rem;}
    	.weui-icon-info-circle{color:#FEA002;}
    	.c-fr1{float: right;margin-top: .3rem;margin-right:.4rem;}
    	.weui-grid{height:6rem;}
    	.c-rule{padding:0 0.6rem;}
    	.c-rule p{font-size:0.6rem;}
    </style>
    <title></title>
</head>
<body style="position: relative;">
  
    <div class="weui-loading_toast " style="display: none;"> 
        <div class="weui-mask_transparent"></div> 
        <div class="weui-toast weui-animate-fade-in"> 
            <i class="weui-loading weui-icon_toast"></i> 
            <p class="weui-toast__content">正在加载...</p> 
        </div> 
    </div>

    <div class="container">
        <div class="titleBar">
             <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">一元购专区</div>
        </div>


        <!-- 列表内容 -->
        <div class="c-content" id="c-iscroll">
            <div  id="wrapper">
                <div  style="-webkit-margin-before:0em;">
                    <div id="scroll-top-block"></div>
                    <div>
                        <div class="c-index-hot local-special" id="dataArea">
                             <%-- <div class="weui-flex"> 
                                 <div class="weui-flex__item"> 
                                     <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                                         <div class="weui-media-box__bd"> 
                                             <div class="weui-media-box__hd"> 
                                                 <img class="weui-media-box__thumb" src="${stax}/assets/images/c-index-items1.jpg" alt=""> 
                                             </div> 
                                             <h4 class="weui-media-box__title am-text-truncate">音乐游戏无线耳机</h4> 
                                             <p class="pri c-f-s-16"><span class="c-c-r">￥156+</span><br><span class="c-f-s-12 c-oldprice">120.00</span>
                                             	<div class="openbtn touchView">100</div>
                                             </p>
                                             <p class="weui-media-box__desc">已兑:<span>100份</span></p>
                                         </div> 
                                     </a> 
                                 </div> 
                                 <div class="weui-flex__item"> 
                                     <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                                         <div class="weui-media-box__bd"> 
                                             <div class="weui-media-box__hd"> 
                                                 <img class="weui-media-box__thumb" src="${stax}/assets/images/c-index-items1.jpg" alt=""> 
                                             </div> 
                                             <h4 class="weui-media-box__title am-text-truncate">音乐游戏无线耳机</h4> 
                                             <p class="pri c-f-s-16"><span class="c-c-r">￥156+</span><br><span class="c-f-s-12 c-oldprice">120.00</span>
                                             	<div class="openbtn touchView">100</div>
                                             </p>
                                             <p class="weui-media-box__desc">已兑:<span>100份</span></p>
                                         </div> 
                                     </a> 
                                 </div> 
                            </div>
                            <div class="weui-flex"> 
                                 <div class="weui-flex__item"> 
                                     <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                                         <div class="weui-media-box__bd"> 
                                             <div class="weui-media-box__hd"> 
                                                 <img class="weui-media-box__thumb" src="${stax}/assets/images/c-index-items1.jpg" alt=""> 
                                             </div> 
                                             <h4 class="weui-media-box__title am-text-truncate">音乐游戏无线耳机</h4> 
                                             <p class="weui-media-box__desc">已团<span>999</span>&nbsp;剩余<span>999</span></p> 
                                             <p class="pri c-f-s-16"><span class="c-c-r">￥156</span><span class="c-f-s-12 c-oldprice">120.00</span></p>
                                             <div class="openbtn">去开团</div>
                                         </div> 
                                     </a> 
                                 </div> 
                                 <div class="weui-flex__item"> 
                                     <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg"> 
                                         <div class="weui-media-box__bd"> 
                                             <div class="weui-media-box__hd"> 
                                                 <img class="weui-media-box__thumb" src="${stax}/assets/images/c-index-items1.jpg" alt="">
                                             </div> 
                                             <h4 class="weui-media-box__title am-text-truncate">音乐游戏无线耳机</h4> 
                                             <p class="weui-media-box__desc">已团<span>999</span>&nbsp;剩余<span>999</span></p> 
                                             <p class="pri c-f-s-16"><span class="c-c-r">￥156</span><span class="c-f-s-12 c-oldprice">120.00</span></p> 
                                             <div class="openbtn">去开团</div> 
                                         </div>
                                        
                                     </a> 
                                 </div>
                            </div> --%>
                            
                            
                        </div>
                        <div class="c-bottom-bg"></div>
                        <div class="c-rule">
                        	<p>活动规则：</p>
                        	<p>
                        			1.活动时间：即日起至2020年3月31日，每天的9:00-24:00，每日每款商品数量有限，抢完为止；</br>
   2.活动对象：天津分行手机银行用户专享；</br>
   3.活动期间每人每款商品仅可购买一次，每天每人仅可购买两款商品；</br>
   4.活动中所抢购的商品码或充值类商品均以短信形式发送或充值到用户登录“天津惠”平台时使用的手机号，用户也可通过个人中心→我的订单查看；</br>
   5.充值类商品在支付成功后24小时内为您处理充值，<span style="color:red;">如月底月初遇到运营商集中结算时充值时间顺延；</span></br>
   6.一元购活动中所有商品均不支持使用津元宝；</br>
   7.活动声明：活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任；</br>
   8.本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议；</br>
   9.本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：400-810-9200。<br>
   10.滴滴、美团商品问题请联系客服：400-962-6962。 腾讯周卡、肯德基、猫眼商品问题请联系客服：400-157-0096。
                        	</p>
                           
                        </div>
                    </div>
                    <!-- <div id="scroll-bottom-block"></div> -->
                </div>
            </div>
        </div>
     </div>
     
     
        <div class="js_dialog" id="iosDialog1" style="opacity: 1; display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <i class="weui-icon-cancel" id="c-login-close"></i>
                <div class="weui-dialog__bd c-f-s-16" style="color: #09b6f2; padding-top: 1.7em;">

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

                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确定</a>
                </div>
            </div>
        </div>

        <!-- 标签栏 -->
        <!-- <div class="weui-tab">
            <div class="weui-navbar weui-navbar-down">
                <div class="weui-navbar__item weui-bar__item_on">首页</div>
                <div class="weui-navbar__item" onclick="goPage('personal')">个人中心</div>
            </div>
        </div> -->

	<div class="js_dialog" id="iosDialog2" style="opacity: 1;display: none;">
			<div class="weui-mask"></div>
			<div class="weui-dialog">
				<div class="weui-dialog__bd c-c-b c-f-s-16">
					<span class="c-c-b">兑换规则</span>
					<div class="weui-cells weui-cells_form">
						<div class="weui-cell" id="c-intro-wrapper">
							<div class="weui-cell__bd" style="max-height: 13rem; overflow-y: auto;text-align: left;">
								1. 活动对象：仅限天津建行手机银行用户专享<br>2. 活动说明：<br>&nbsp;&nbsp;&nbsp;&nbsp;

								(1) 每天每发起一次支付，无论支付是否成功，都会消耗一点<img class="goldbean" src="${stax}/assets/images/heart.png" style="width:26px;height:20px;display:inline-block">。<br>&nbsp;&nbsp;&nbsp;&nbsp;

								(2) 用户通过支付一定金额和一定数量的“津元宝”进行奖品兑换，兑换消耗的“津元宝”记录可在“个人中心”-“查看明细”中查看。<br>&nbsp;&nbsp;&nbsp;&nbsp;

								(3) 兑换成功后24小时内平台会自动为用户处理发货，充值类商品自动充值至用户注册使用的手机号，券码类商品会将兑换码发送至用户注册使用的手机号；<br>3. 活动声明：<br>&nbsp;&nbsp;&nbsp;&nbsp;

								活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。<br>&nbsp;&nbsp;&nbsp;&nbsp;

								本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。<br>&nbsp;&nbsp;&nbsp;&nbsp;本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。<br></div>
						</div>
					</div>
				</div>
				<div class="weui-dialog__ft">
					<a href="javascript:$('#iosDialog2').hide();" class="weui-dialog__btn weui-dialog__btn_primary c-c-6">关闭</a>
				</div>
			</div>
		</div>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/iscroll.js"></script>
<script src="${stax}/assets/js/iscrollAssist.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script type="text/javascript">
    var errwlMsg = "${errwlMsg}";
    if(errwlMsg && errwlMsg != ""){
    	var homeUrl = localStorage.getItem("homeUrl");
    	weui.alert(errwlMsg, function() {
    		window.location.href="${ctx}/tjhui/"+homeUrl;
    	});
    }else{
    	window.onload=function(){
            iscrollObj = iscrollAssist.newVerScrollForPull(
                $('#wrapper'),pulldownAction,pullupAction
            );
            getProds(iscrollObj);
        };
    }
    
    var lastId = 0; //分页用
    var minH = window.innerHeight-$("#scroll-top-block").height();  //检测是否有内容
    var iscrollObj;
    //$("#dataArea").css("minHeight",minH+"px");

    var pulldownAction = function(){
        $('#dataArea').html('');
        lastId = 0;
        getProds(this);
        $("#pullup-label").text("上拉加载更多");
    };
    var pullupAction = function(){
        getProds(this);
    };

    //获取商品信息-渲染-计算高度
    function getProds(iscrollObj){
        $(".weui-loading_toast").show();
        function promiseLoad(){
            return new Promise(function(resolve,reject){
                $.ajax({
                    type: "GET",
                    url: "${ctx}/yiyg/getProdInfo.json",
                    data: "r="+Math.random(),
                    success: function(resp){
                        resolve(resp);
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
    //console.log(data);
        $('#dataArea').html('');
        var begindiv = '<div class="weui-flex">';
        var enddiv = '</div>';
        var pdiv = '';
        for(var i=0; i<data.length; i++){
            if(data[i].id > lastId) lastId = data[i].id;
            var pimg = data[i].picUrl ? data[i].picUrl : "${stax}/assets/images/2-0-goods2.jpg";
            
            if(i % 2 == 0) pdiv += begindiv;
            pdiv += '<div class="weui-flex__item">'+
                            '<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg ezTouchView" data-pid="'+data[i].id+'">'+
                                '<div class="weui-media-box__bd">'+
                                    '<div class="weui-media-box__hd touchView">'+
                                        '<img class="weui-media-box__thumb" src="${stax}/'+pimg+'" alt="">'+
                                    '</div>'+
                                    '<h4 class="weui-media-box__title am-text-truncate">'+data[i].prodName+'</h4>'+
                                    
                                    '<p class="pri c-f-s-16"><span class="c-c-r">¥'+data[i].prodPrice+'</span>'+
                                    '</p>'+
                                    '<p class="weui-media-box__desc">已兑:<span>'+data[i].soldNum+'份</span></p>'+
                                '</div>'+
                            '</a>'+
                        '</div>';
            if(i % 2 == 0){
                if(i == (data.length - 1)) pdiv += enddiv;
            }else{
                pdiv += enddiv;
            }
        }
        
        $('#dataArea').append(pdiv);
        $(".ezTouchView").on("tap",function(){
            toView(this.dataset.pid);
        });
    }

    
    //点击图片查看商品详情页面
    function toView(pid){
		var loading = weui.loading('正在加载...');	//loading
        
  		$.ajax({
			type: "POST",
			url: "${ctx}/yiyg/checkprod.json",
			data: "pid="+pid+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + 
			"&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))+"&r="+Math.random(),
			success: function(resp){
				if(resp.errMsg && resp.errMsg != ""){
					loading.hide();
					weui.alert(resp.errMsg);
				}
				else {
					iscrollObj.destroy();
			        iscrollObj = null;
			        window.location.href = "${ctx}/yiyg/pdetail.do?pid="+pid+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
    }
    
    /**********************************************/
    
    $("#c-login-close").on("click",function(){
        $("#iosDialog1").hide();
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
    
    $(".c-fr1").on("tap",function(){
    	$("#iosDialog2").show();
    })
    function checkLength(obj,n){
        //obj.value = obj.value.replace(/\D/g,'')
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }
    
    /**返回首页**/
  	function toHome(){
  		window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
  	}
</script>
</body>
</html>
