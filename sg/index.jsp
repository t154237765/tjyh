<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <title>入门好礼</title>
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        html,body{margin:0;padding:0;background: #ff633c;}
        body{position: relative;overflow-y:hidden;}
        .container{background: url(${stax}/assets/images/bg.jpg) no-repeat;background-size:100%;}
        .city{background:none;position: fixed;bottom: 0;left: 0;width:100%;height: 5rem;}
        @media only screen and (min-height: 481px){.city{background:url(${stax}/assets/images/city.png) no-repeat left bottom;background-size:100%;}}
        .present{position: absolute;top: 9.6rem;left: 0;width: 100%;height: 4rem;text-align: center;}
        .intro{position: absolute;top: 16rem;left: 0;width: 100%;height: 6rem;text-align: left;font-size: .8rem;}
        .text{width: 80%;margin:0 auto;margin-top:1.6rem;}
        .pos1{background: url(${stax}/assets/images/1.png) no-repeat;}
        .pos2{background: url(${stax}/assets/images/2.png) no-repeat;}
        .pos3{background: url(${stax}/assets/images/3.png) no-repeat;}
        .pos4{background: url(${stax}/assets/images/4.png) no-repeat;}
        .bag{width:19%;height:100%;background-size:contain;display: inline-block; }
        .open{background: url(${stax}/assets/images/btn.png) no-repeat;position: absolute;top: -.5rem;right: 1.5rem;width:4.5rem;height: 2rem;background-size: contain;}
        .prev{background: url(${stax}/assets/images/prev.png) no-repeat;position: absolute;top: -.5rem;left: 1rem;width:4rem;height: 2rem;background-size: contain;}
        .next{background: url(${stax}/assets/images/next.png) no-repeat;position: absolute;top: -.5rem;right: 1.5rem;width:4rem;height: 2rem;background-size: contain;}
        .rule{position: absolute;top: 21.6rem;left: 0;width: 100%;height: 1rem;text-align: center;font-size: .7rem;text-decoration: underline;z-index: 989;}
        .rule span{background: #ff633c;}
        .text img{width:12rem;height:3.4rem;}

        /*弹出*/
        .bgblack .wrappers{overflow-y: auto;padding: 1rem;height: 13rem;font-size: .6rem;}
        .bpPage {
    width: 12rem;
    height: 13rem;
    top: 5rem;
    left: 2rem;    
    position: absolute;
    z-index: 990;
}
    .bgblack .bpPage{background: #fff;border-radius: 5px;height: 16rem;}
    .bgblack{background: rgba(0,0,0,0.5);position: absolute;top: 0;bottom: 0;left: 0;right: 0;position: fixed;width: 100%;z-index:990;}
    .ruletitle{width:6rem;height: 2rem;background-size: contain;position: absolute;top:-1.2rem;left:3.3rem;}
    .c-close-a {
    position: absolute;
    top: -1rem;
    right: -1rem;
    background: url(${stax}/assets/images/close.png);
    width: 1rem;
    height: 1rem;
    background-size: contain;
    z-index: 999;
}

/*已领完*/
#prize_alert, .prize_alert {
    height: 8rem;width: 13rem;font-size: 0.6rem;    right: 0;
    left: 0;
}

.prize_alert {
    position: relative;
    margin-left: 1.4rem;
    margin-top:50%;
    padding: 0;
    top: 0;
}
.chanceno_alert {
    background: url(${stax}/assets/images/abg.png) no-repeat;
    background-size: contain;
}
#getgold .chanceno_alert {
    background: url(${stax}/assets/images/abg2.png) no-repeat;
    background-size: contain;
}
#getgold .prize_alert{height: 10rem;}
#getgold .prize-info{top:5.5rem;}
.prize-img{position: absolute;
    top: .5rem;
    left: 0;
    width: 100%;
    text-align: center;}
 .prize-img  img{width: 4rem;height: 5rem;margin:0 auto;} 
.prize-info {
    margin: 0;
    position: absolute;
    top: 2rem;
    left: 0;
    width: 100%;
    text-align: center;
}
.prize-info span {
    width: 11rem;
    color: #333;
    display: inline-block;
    font-size: .84rem;
    font-family: alertfont;
}
.btnpos {
    position: absolute;
    bottom: 1rem;
    left: 0;
    width: 100%;
    text-align: center;
}
.prize_alert button {
    border-radius: 5px;
    border: 0;
    background: #fd5e38;
    width: 5rem;
    height: 1.6rem;
    color: #fff;    font-size: 0.8rem;
    opacity: 1;
    font-family: alertfont;
}
.baonum{color:#333;font-size:.9rem;font-family:'微软黑体';font-weight:bold;}
    </style>
</head>
<body>
	<div class="titleBar">
        <div class="titleBar-back" onclick="toHome()">
            <img src="${stax}/assets/images/history.png" />&nbsp;返回
        </div>
        <div class="titleBar-text am-text-truncate">入门好礼</div>
    </div>
    <div class="container" style="margin-top:44px;">
    	
        <div class="present">
            <div class="bag pos1"></div>
            <div class="bag pos2"></div>
            <div class="bag pos3"></div>
            <div class="bag pos4"></div>
        </div>
        <div class="intro">
            <div class="text">
                <img src="${stax}/assets/images/p5.jpg">
            </div>
            <div class="open"></div>
            <div class="prev" style="display: none;"></div>
            <div class="next" style="display: none;"></div>
        </div>
        <div class="rule">
            <span>活动规则</span>
        </div>
    </div>
    <div class="city"></div>

    <!-- 活动规则 -->
    <div class="rulesDiv bgblack" style="display: none;">
        <div class="bpPage">
            <div class="c-close-a"></div>
            <div class="wrappers">
            <p style="text-align: center;font-size:.8rem;">活动规则</p>
            1.活动对象：仅限天津建行手机银行用户专享<br/>
2.活动说明：<br/>
(1)本活动每位用户每年仅限参与一次；<br/>
(2)用户点击领取【领取红包】按钮按照顺序点亮红包后，可任意选择红包进行抽奖；<br/>
(3)每个用户每次拆红包前需支付1-2元体验金，支付金额将依序退回至支付卡卡号（储蓄卡：支付次日退回；信用卡：支付次日起1~2个工作日退回）；<br/>
(4)用户注册平台当日，最多可支付打开红包2次；<br/>
(5)中奖概率：100%<br/>
3.活动奖品：平台专属通用货币“津元宝”，可用于“兑奖专区”和“本地特惠”中兑抵现金使用，用户所获得“津元宝”可在“个人中心”查看；<br/>
4.活动声明：<br/>
&nbsp&nbsp&nbsp&nbsp活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。<br/>
&nbsp&nbsp&nbsp&nbsp本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。<br/>
&nbsp&nbsp&nbsp&nbsp本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。<br/>
            </div>
        </div>        
    </div>  

    <!-- 弹出框-打开红包 -->
    <div class="bgblack" id="no-chance" style="display: none;">
        <div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                    <div class="c-close-a"></div>
                    <div class="prize-info">
                        <span>恭喜，已领取全部红包，现在开始打开红包吧！</span>
                    </div>
                <div class="btnpos">
                    <button class="am-btn am-btn-sm am-center am-btn-warning jianbianbtn alert_close">确定</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 弹出框-红包未领取 -->
    <div class="bgblack" id="no-get" style="display: none;">
        <div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                    <div class="c-close-a"></div>
                    <div class="prize-info">
                        <span>红包全部领取完成才可打开哦</span>
                    </div>
                <div class="btnpos">
                    <button class="am-btn am-btn-sm am-center am-btn-warning jianbianbtn alert_close">确定</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 弹出框-最多两个红包 -->
    <div class="bgblack" id="open2" style="display: none;">
        <div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                    <div class="c-close-a"></div>
                    <div class="prize-info">
                        <span id="msgSpan"></span>
                    </div>
                <div class="btnpos">
                    <button class="am-btn am-btn-sm am-center am-btn-warning jianbianbtn alert_close">确定</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 弹出框-立即支付 -->
    <div class="bgblack" id="paynow" style="display: none;">
        <div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                    <div class="c-close-a"></div>
                    <div class="prize-info" style="top:1rem;">
                        <span>亲，需随机支付<a class="baonum">1-2</a>元手机银行支付体验金，支付金额将于次日退回至支付账户</span>
                    </div>
                <div class="btnpos">
                    <button id="payBtn" class="am-btn am-btn-sm am-center am-btn-warning jianbianbtn alert_close">立即支付</button>
                </div>
            </div>
        </div>
    </div>

    <!-- 弹出框-获得元宝 -->
    <div class="bgblack" id="getgold" style="display: none;">
        <div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                    <div class="c-close-a"></div>
                    <div class="prize-img">
                        <img id="openMoneySrc" src="${stax}/assets/images/1111.png">
                    </div>
                    <div class="prize-info">
                        <span>恭喜获得，<a class="baonum">${openMoney}</a>锭津元宝</span>
                    </div>
                <div class="btnpos">
                    <button class="am-btn am-btn-sm am-center am-btn-warning jianbianbtn alert_close">确定</button>
                </div>
            </div>
        </div>
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/utils.js"></script>
<script type="text/javascript">
    var errwlMsg = "${errwlMsg}";
    if(errwlMsg && errwlMsg != ""){
    	var homeUrl = localStorage.getItem("homeUrl");
    	weui.alert(errwlMsg, function() {
    		window.location.href="${ctx}/tjhui/"+homeUrl;
    	});
    }
    //隐藏next
    function hideNext(){
		var strNext = $(".text img").attr("src");
	    var reNext = /[^0-9]/ig;
	    var numNext = strNext.replace(reNext,"");
	    if(numNext == 5)$(".next").hide();
	    if(numNext == 1)$(".prev").hide();
	}
	hideNext();
</script>
<script>
    
    document.getElementsByClassName('container')[0].style.height=window.innerHeight+'px';

    $(function(){
    	
        var count = 0;
        var userId = localStorage.getItem("userId");
        var bankId = localStorage.getItem("bankId");
        var msg = "${errMsg}";
        if(msg&&msg!=""){
        	weui.alert(msg);
        }
        
        var showAlert = function(msg) {
        	$("#msgSpan").html(msg);
        	$("#open2").show();
        };
        
        var takeIt = function(index, pop) {
        	var str = ".bag:eq("+count+")";
            var picNum = "url(${stax}/assets/images/"+(5+count)+".png) no-repeat"
            var textNum = "${stax}/assets/images/p"+(2+count)+".jpg";

            $(str).css({"background":picNum,"background-size":"contain"});
            $(".text img").attr("src",textNum);
            count++;
            
            if(count >= 4) {
            	if (pop) {
            		setTimeout(function() {
            			$("#no-chance").show();
            		}, 100);
            	}
            	
                $(".open").hide();

                $(".prev, .next").show();
                
                var src = "${stax}/assets/images/p1.jpg";
                $(".text img").attr("src",src);
                $(".prev").hide();
            }
        };
        
        var takeItToServer = function(index) {
        	var loading = weui.loading('正在加载...');	//loading
        	$.ajax({
    			type: "GET",
    			url: "${ctx}/sg/receive.json",
    			data: "prizeId="+gifts[index].id+"&userId="+encodeURIComponent(userId)+"&r="+Math.random(),
    			success: function(resp){
    				loading.hide();
    				if(resp.errMsg!=""&&resp.errMsg!=null){
    					showAlert(resp.errMsg);
    				} else{
    					gifts[index].openStatus = resp.openStatus;
    					takeIt(index, true);
    				}
    			},
    			error:function(er){
    				loading.hide();
    				console.log(er);
    			}
        	});
        };
        
        var takeIndex;
        var openIt = function(index) {
			takeIndex = index;
			$("#paynow").show();
        };
        
        $(".open").on("click",function(){
        	if(msg&&msg!=""){
            	weui.alert(msg);
            	return;
            }
        	
        	takeItToServer(count);
        });

        
        
        //活动介绍
        $(".next").on("click",function(){
            var str = $(".text img").attr("src");
            var re = /[^0-9]/ig;
            var num = str.replace(re,"");
            if(num < 5)num++;
            var src = "${stax}/assets/images/p"+num+".jpg";
            $(".text img").attr("src",src);
            if(num == 5)$(".next").hide();
            if(num > 1)$(".prev").show();
        });

        $(".prev").on("click",function(){
            var str = $(".text img").attr("src");
            var re = /[^0-9]/ig;
            var num = str.replace(re,"");
            if(num > 1)num--;
            var src = "${stax}/assets/images/p"+num+".jpg";
            $(".text img").attr("src",src);
            if(num < 5)$(".next").show();
            if(num == 1)$(".prev").hide();
        });

        //规则弹窗
        $(".rule span").on("click",function(){
            $(".rulesDiv").show();
        })

        //关闭弹窗
        $(".c-close-a").on("click",function() {
            $(".rulesDiv,#no-chance,#no-get,#open2,#paynow,#getgold").hide();

        });
        
        $(".prize_alert button").on("click",function() {
            $(".rulesDiv,#no-chance,#no-get,#open2,#getgold").hide();

        });
        
        var gifts = ${gifts};
        for (var i = 0; i < gifts.length; i++) {
        	if (gifts[i].openStatus == 1 || gifts[i].openStatus == 2) {
        		takeIt(i);
        	}
        	if (gifts[i].openStatus == 2) {
        		$(".pos" + (i + 1)).css({"background":"url("+gifts[i].picUrl+") no-repeat","background-size":"contain"});
        	}
        }
        
        $(".pos1").on("click",function(){
        	if (gifts[0].openStatus == 2) {
        		return;
        	}
        	if (gifts[0].openStatus != 1 || count < 4) {
        		$("#no-get").show();
        	} else {
        		openIt(0);
        	}
        });
        $(".pos2").on("click",function(){
        	if (gifts[1].openStatus == 2) {
        		return;
        	}
        	if (gifts[1].openStatus != 1 || count < 4) {
        		$("#no-get").show();
        	} else {
        		openIt(1);
        	}
        });
        $(".pos3").on("click",function(){
        	if (gifts[2].openStatus == 2) {
        		return;
        	}
        	if (gifts[2].openStatus != 1 || count < 4) {
        		$("#no-get").show();
        	} else {
        		openIt(2);
        	}
        });
        $(".pos4").on("click",function(){
        	if (gifts[3].openStatus == 2) {
        		return;
        	}
        	if (gifts[3].openStatus != 1 || count < 4) {
        		$("#no-get").show();
        	} else {
        		openIt(3);
        	}
        });
        
        var oos = "";
        $(document).on("click","#payBtn",function(){
        	$("#paynow").hide();
        	if(msg&&msg!=""){
            	weui.alert(msg);
            	return;
            }
        	
        	var loading = weui.loading('正在加载...');	//loading
        	$.ajax({
    			type: "GET",
    			url: "${ctx}/sg/open.json",
    			data: "prizeId="+gifts[takeIndex].id+"&userId="+encodeURIComponent(userId)+"&bankId="+encodeURIComponent(bankId)+"&r="+Math.random(),
    			success: function(resp){
    				loading.hide();
    				if(resp.errMsg!=""&&resp.errMsg!=null){
    					showAlert(resp.errMsg);
    				} else if (resp.orderInfo) {
    					oos = resp.orderInfo;
//     		        	MBC_PAY();
    					MBS_DIRECT_PAY();
    				}
    			},
    			error:function(er){
    				loading.hide();
    				console.log(er);
    			}
        	});
        });
        
        var openMoney = "${openMoney}";
        var picUrl = "${picUrl}";
        if (openMoney != ""&& picUrl != "") {
        	$("#openMoneySrc").attr('src', picUrl);
        	$("#getgold").show();
        }
    });
    
    /* 隐藏下一个 */
    function hideNext(){
    	var strNext = $(".text img").attr("src");
        var reNext = /[^0-9]/ig;
        var numNext = strNext.replace(reNext,"");
        if(numNext == 5)$(".next").hide();
    }
    hideNext();
    
    /***建行付款**/
//     function MBC_PAY(){
//     	if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
//             //苹果端
//             window.location="/mbcpay.b2c ";
//         } else if (/(Android)/i.test(navigator.userAgent)) {
//             //安卓端
//             window.mbcpay.b2c(oos);
//         } else {
//            //pc端
//            alert('请到app上购买！');
//         };
//     }
//     var oos = "";
//     function MBC_PAYINFO(){
//           return "{" + oos + "}";
//     }
    
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

    
    
    function toHome(){
    	window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
    }
</script>
<span style="font-family: alertfont;">.</span>
</body>
</html>