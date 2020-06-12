<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
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
    	.pk-wrapper{padding-top:3em;}
        .pk-wrapper h1{font-weight:600;letter-spacing: 10px;font-size: 1.7rem;}
        .pk-wrapper h1 span{font-weight:700;font-size: 2rem;}
        .pk-wrapper h3{font-size: .8rem;font-weight: 600;letter-spacing: 5px;font-family: "黑体";}
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
        .btn{position: absolute;top: 0;left: 0;right: 0;bottom: 0;width: 100%;opacity: 0;}
    </style>
</head>
<body>

    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">诗词大会</div>
            <!-- <div class="titleBar-close" onclick="alert('shutdown');">关闭</div> -->
        </div>
        <div class="titleBar-close">关闭</div>

        <div class="c-content">
	        <img src="${stax}/assets/images/3-0bg.jpg" id="pkbg">
			<div class="pk-wrapper">
                <h1>诗词大会<span></span></h1>
                <h3 style="display: none;">您已闯到第<span class="c-c-r">七</span>关</h3>
                <div class="button-sp-area">
                    <a href="javascript:;" class="weui-btn weui-btn_plain-primary" style="line-height: 1.4"
                    	onclick="goplay();">开始闯关</a>
                </div>
                <div class="button-sp-area" style="margin:0rem auto;padding-top:0;">
                    <a href="javascript:;" class="weui-btn weui-btn_plain-primary" style="line-height: 1.4"
                    	onclick="poemShare();">分享给好友</a>
                </div>
                <div id="actInfo" onclick="$('#iosDialog2').fadeIn(200);">
                    <div class="actInfo"><span>活动详情</span></div>
                    <div class="triangle"></div>
                </div>
                <div id="actInfo" onclick="goboard();" style="margin-top:2rem;">
                    <div class="actInfo"><span>排行榜</span></div>
                    <div class="triangle"></div>
                </div>
            </div>
		</div>

        <div class="js_dialog" id="iosDialog1" style="opacity: 1; display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd c-c-b c-f-s-16">复制如下信息分享到朋友圈/微信好友邀请他们一起参加吧
                	<p style="color:red;margin-top:5px;font-size:14px;">(点击下方文本框内文字即可复制)</p>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__bd">
                            	<!-- onclick="oCopy(this);" -->
                                <textarea class="weui-textarea" placeholder="请输入文本" rows="3" id="shareTxt" >
                                
                                </textarea>
                                <button class="btn" data-clipboard-target="#shareTxt"></button>
                                <div class="weui-textarea-counter"><span>0</span>/200</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-6">取消</a>
                </div>
            </div>
        </div>

        <div class="js_dialog" id="iosDialog2" style="opacity: 1; display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd c-c-b c-f-s-16"><span class="c-c-b">活动详情</span>
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell" style="padding:0 5px;background: #fff;text-align: left;">
                            <div class="weui-cell__bd" style="max-height: 13rem;overflow-y: auto;">
                                一、活动对象：仅限天津建行手机银行用户专享<br/>
二、参与方式：<br/>
&nbsp;&nbsp;&nbsp;&nbsp;1. 诗词大会为闯关制游戏，每关有5道题，用户每闯完一关，即可随机支付1至2元钱获得一次抽奖机会。支付金额将即时依序退回至支付卡号；<br/>
&nbsp;&nbsp;&nbsp;&nbsp;2. 闯关过程中，失败可重复闯关直至成功；<br/>
&nbsp;&nbsp;&nbsp;&nbsp;3. 也可将题目分享给微信好友寻求帮助。好友帮答成功后，用户即可获得当关抽奖资格<br/>
三、活动奖品：<span style="color:red;">自2019年1月1日0点起，津元宝有效期为自津元宝获得日起90天
</span><br/>
四、每天每发起一次支付，无论支付是否成功，都会消耗一点。<img class="goldbean" src="${stax}/assets/images/heart.png" style="width:26px;height:20px;display:inline-block">。<br/>
五、诗词大会排行榜按照闯关次数从大到小排名，闯关次数相同的客户，按照闯关时间从短到长排名。<br/>
六、活动声明：活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。<br/>
七、本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。<br/>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-6">关闭</a>
                </div>
            </div>
        </div>

    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=15"></script>
<script src="${stax}/assets/js/clipboard.js"></script>
<script src="${stax}/assets/js/jhshare.js"></script>
<script type="text/javascript">
    	var errwlMsg = "${errwlMsg}";
    	if(errwlMsg && errwlMsg != ""){
    		var homeUrl = localStorage.getItem("homeUrl");
    		weui.alert(errwlMsg, function() {
    			window.location.href="/tjpt/tjhui/"+homeUrl;
    		});
    	}
    </script>
<script>

	var errMsg = "${errMsg}";
	var rule = "${rule}";
	var gameId = "${gameId}";
	var stationNum = "${stationNum}";
	var userId = localStorage.getItem("userId");
	
	$(function(){
		$("#pkbg").width(window.innerWidth);
		$("#pkbg").height(window.innerHeight-44);
		
		/*弹出框2*/
		$('#iosDialog2').on('click', '.weui-dialog__btn', function(){
			$(this).parents('.js_dialog').fadeOut(200);
		});
		/*弹出框1*/
		$('#iosDialog1').on('click', '.weui-dialog__btn', function(){
		    $(this).parents('.js_dialog').fadeOut(200);
		});
	    
		//显示当前闯关数
		if(stationNum && stationNum != ""){
			$('body h3 span').html(stationNum);
			$('body h3').show();
		}
		
		if(gameId) localStorage.setItem("gameId", gameId);
	});

	var onPlayd = false;
	function goplay(){
		if(onPlayd) return;
		onPlayd = true;
// 		if("luZDi5/1si5XUNYBtnxPf/65WbfUZC/L".indexOf(localStorage.getItem("userPhone"))>-1
// 		   ||"vT8sxbpKRPLs3Cb04LDNAP65WbfUZC/L".indexOf(localStorage.getItem("userPhone"))>-1	
// 		   ||"YDSlcZv/Nlp6zLKZ65KCrv65WbfUZC/L".indexOf(localStorage.getItem("userPhone"))>-1
// 		   ||"+NJI+gWmniDY396BS8tRef65WbfUZC/L".indexOf(localStorage.getItem("userPhone"))>-1
// 			){
// 			errMsg = "";
// 		}else{
// 		    errMsg = "第二期诗词大会将于6月1日10点正式开始。";
// 		}

		if(errMsg && errMsg != ""){
			onPlayd = false;
			weui.alert(errMsg);
		}else{
			var loading = weui.loading('正在加载...');	//loading
			$.ajax({
    			type: "GET",
    			url: "${ctx}/poem/checkbegin.json",
    			data: "gameId="+gameId+"&userId="+encodeURIComponent(userId)+"&r="+Math.random(),
    			success: function(resp){
    				onPlayd = false;
    				loading.hide();   				
    				/* if(resp.msg==null){
    					window.location.href="${ctx}"+resp.toUrl;
    				}  */
    				if(resp.msg!=""&&resp.msg!=null){
    					weui.alert(resp.msg);
    				} else{
    					window.location.href="${ctx}"+resp.toUrl;
    				}  				

    			},
    			error:function(er){
    				loading.hide();
    				console.log(er);
    			}
        	});
			
			
			//window.location.href = "${ctx}/poem/sdetail.do?bankId="+bankId+"&pid="+pid+"&tcode="+tcode;
		}
	}
	
	function goboard() {
// 		weui.alert('维护中');
		window.location.href = '${ctx}/poem/monthpoemBoard.do?userId='+encodeURIComponent(localStorage.getItem("userId"));
	}

    /*function oCopy(obj){
        obj.select();
        document.execCommand("Copy");
        obj.blur();
        weui.toast("复制成功!",1000);
        setTimeout(function(){$("#iosDialog1").hide();},1000)   
    }*/
    
    /**返回首页**/
  	function toHome(){
  		window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
  	}
    
    function poemShare() {
    	toShare('诗词大会', '建设银行诗词大会，答题抽奖得好礼', 
        		encodeURIComponent('http://tianjin.boyaunite.com/poem/heActivity.do'), 'http://tianjin.boyaunite.com/assets/images/poem_share.jpg');
    }
</script>
</body>
</html>
