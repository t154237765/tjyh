<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>iPhone8Plus半价抢购</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .swiper-container-horizontal>.swiper-pagination-bullets, .swiper-pagination-custom, .swiper-pagination-fraction{bottom: 0;}
        .c-index-hot{background: #fff;margin-top: 10px;}
        .c-index-hot h3 {font-size: .7rem;padding: 7px;padding-left: 15px;}
        .c-remenhd {width: 20px;height: 20px;display: inline-block;vertical-align: sub;}
        .c-index-hot .weui-flex{border-top:1px solid #eee;border-bottom:1px solid #eee;padding: padding:15px;}
        .c-index-hot .weui-flex:nth-child(2){border-bottom:0;}
        .c-index-hot .weui-media-box__hd img{width: 3.2rem;}
        .weui-navbar__item{background: #eee;color:#666; }
        .weui-flex .weui-flex__item:nth-child(odd){border-right:1px solid #eee;}
        a.weui-media-box:active{background: #fff;}
        .weui-navbar-down,.weui-navbar__item.weui-bar__item_on{background: #fff;color:#09b6f2;}
        .weui-navbar__item.weui-bar__item_on{color:#09b6f2;}
        #local-special .weui-flex__item{border:0;}
        #local-special .weui-flex{padding:15px;}
        .weui-media-box_appmsg .weui-media-box__hd{margin-right:0;}
        #local-special .weui-media-box__hd img{border-radius:0;height:2.8rem;width:2.8rem;margin: 0 auto;}
        .weui-media-box__desc{font-size: 12px;}
        #local-special a.weui-media-box{padding:0;}
        #local-special .weui-media-box__bd{margin-right: 4px;background:#fef2f2;border-radius: 10px;padding: 4px;text-align: center;}
        .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        /*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#09b6f2;}
        .js_dialog input.weui-input{color:#333;}

        img{width: 100%;}
        #buy1,#buy2{position: absolute;top:0;left:1rem;width: 13.8rem;height:5.5rem;background: #fff;opacity: 0;cursor:pointer;}
        .text{font-size: 16px;color: #666;position: absolute;top: 2rem;left: 2.5rem;width: 11rem;height: 5rem;overflow-y: auto;z-index: 990;line-height: 1.7;}
        .c-login-close {position: absolute;top: -1rem;right: -1rem;color: #fff;}
        .weui-dialog {overflow: visible;}
        .weui-dialog__btn{color:#999;}
        .weui-dialog__btn_primary {color: #09b6f2;}
        .weui-panel__bd{background:none;}
        .weui-media-box{background: #fff;}
        .c-leftimg-rightall .c-daichengt{width:10.5rem;}
        .c-leftimg-rightall .c-list-right-div{top:0;}
        .c-leftimg-rightall .weui-btn_mini{border-radius:0;color:#333;}
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{height: auto;}
        .weui-media-box_appmsg .weui-media-box__bd{padding-left:.5rem;}
        .weui-cell__bd p,.weui-cells{font-size: .7rem;}
        .weui-cell_access .weui-cell__ft {padding-right: 13px;position: relative    ;}
        .weui-tab{background: url(${stax}/assets/images/mainbg.jpg) no-repeat 0 0;background-size:cover;}
        .dhyz{background: #fff;background-size:contain;width: 15rem;height:10rem;margin:0 auto;position: relative;}
        .dhyz p{font-size: .7rem;}
        .dhyz .shmc{position: absolute;left: 1rem;top: 1rem;width: 100%;}
        .dhyz .mzh{position: absolute;left: 0rem;top: 2rem;width: 100%;font-size: 1.2rem;}
        .dhyz .dhm{position: absolute;left: 1.8rem;top: 3.4rem;width: 100%;height: 2rem;line-height: 2rem;vertical-align: middle;}
        .dhyz .dhm p{display: inline-block;}
        .dhyz .dhm input{border:1px solid #09b6f2;height: 1rem;width: 7rem;display: inline-block;vertical-align: super;}
        .dhyz .sure{width: 7rem;height: 1.6rem;background: #09b6f2;border-radius: 1rem;color: #fff;position: absolute;bottom: 1.6rem;left: 4rem;font-size: .8rem;text-align:center;line-height: 1.6rem;vertical-align:middle;}

        .lines{height: 1rem;border-bottom:1px solid #ddd;line-height: 1rem;vertical-align: middle;padding-left:0;padding-bottom: .3rem;}
        .lines div{display: inline-block;color:#555;font-size:.6rem;padding-left:0;}
        .lines .dianhua{width:36%;}
        .diqu{width:18%;height: 1rem;}
        #iosDialog2 .diqu{width:17%;}
        #iosDialog2 .jine{width:16%;    height: 1rem;}
        #iosDialog2 .items .jine{width: 17%;text-align: right;padding-right: 3%;}
        #iosDialog8 .diqu{width:28%;}
        #iosDialog8 .dianhua{width:29%;}
        .lines .diqu{text-align:right;width:18%;}
        .dianming{width:22%;height: 1rem;}
        .dizhi{width:33%;height: 1rem;}
        .dianhua{width:38%;height: 1rem;}
        .items{padding: 10px 0;border-bottom: 1px solid #ddd;}
        .items div{display: inline-block;color:#555;font-size:.6rem;line-height: 100%;vertical-align: middle;text-align: center;}
        .items .diqu,.items .dianhua{text-align: center;}
        .wrapper-container{width:80%;height: 80%;overflow-y: hidden;margin:0 auto;background: url(${stax}/assets/images/listbg.png) no-repeat 0 0;margin-top:1rem;padding:1rem .8rem 2rem;    background-size: 100% 100%;}
        .box{overflow-y: auto;height: 16rem;margin-top:50px;overflow-x:hidden;}
        @media screen and (min-height: 481px) and (max-height: 568px){
            .box{height: 18rem;}
        }
        @media screen and (max-height:480px) and (max-width:320px){
            .box{height: 14rem;}
        }
        .dhyz2{background: #fff;width:11rem;height:9.4rem;}
        .dhyz2 .shmc{text-align: left;}
        .dhyz2 .mzh{text-align: center;}
        .dhyz2 .shmc{top:3rem;}
        .dhyz2 .mzh{top:4.2rem;}
        .dhyz2 .trline{top:6.2rem;position: absolute;left: 0rem;width: 100%;}
        .dhyz2 .sure{left: 2rem;bottom: .8rem}

        .progress{width: 100%;height: 11rem;padding:0 1rem;box-sizing:border-box;margin:0 auto;text-align:center;margin-top:1.2rem;background: -webkit-gradient(linear, 0 0, 0 bottom, from(#fff), to(#ecf0ff));border-bottom: 1px solid #ddd;}
        .progress p{font-size: .9rem;font-weight:bold;}
        .proinfo{margin-top:1rem;clear: both;height:1.3rem;}
        .prospan{font-size: .7rem;float: left;color:#555;}
        .prosdate{float: right;font-size: .7rem;color:#555;}
        .frame {width: 100%;height: .4rem;border-radius: 3px;clear: both;padding:0 .3rem;box-sizing: border-box;padding-top: .2rem;}
        .c-sdaf{width: 100%;height: 100%;position: relative;border-radius: 10px;overflow: hidden;height: .4rem;}
        .bar {width: 43%;height: 100%;background: #4bbaed;}
        .wrapperbar{background: url(${stax}/assets/images/bar.png) no-repeat;width: 100%;background-size: 100%;margin-top: 0rem;height: 1rem;}
        .qiangbtn{width: 4rem;height: 1.6rem;background: #fff;margin: 0 auto;color: #00affe;line-height: 1.6rem;vertical-align: middle;text-align: center;border: 1px solid #44a9ec;margin-top:1rem;font-size: .8rem;border-radius: 8px;margin-bottom: .5rem;}
        .tapthree span{font-size: .6rem;text-decoration: underline;color: #00afff;margin-right: .6rem;}
        .intros{margin-top:.2rem;background: -webkit-gradient(linear, 0 0, 0 bottom, from(#ebf1ff), to(#adc2ff));border-bottom: 1px solid #ddd;padding: 1rem .8rem 1.2rem;}
        .dengjp{font-size: .7rem;margin-top: .5rem;}
        #searchBar{background: none;}
        #searchBar .weui-search-bar__label,#searchInput,.weui-search-bar__form{background: #eee;border-radius: 10px;height: 1rem;line-height:1rem;font-size: .7rem;}
        .weui-search-bar__input:not(:valid)~.weui-icon-clear{display: block;}
        .weui-search-bar__form:after{border: 0;}
        .weui-search-bar__box .weui-search-bar__input{padding: 0;}
        #searchBar .weui-search-bar__label{padding:.1rem 0;}
        .lines{position: fixed;background:#fff;width: 100%;}
        .box div:nth-child(2){margin-top:0px;}
        #searchInput{padding-top:0;padding-bottom: 0;padding-left: 1.6rem;line-height: 1.3rem;background:none;}
        #searchBar{padding-top:5px;padding-bottom: 0;}
        #searchBar .weui-search-bar__form{line-height: 1.3rem;}
        .weui-search-bar__box{padding-left: 0;}
        .weui-search-bar:after{border: 0;}
        .weui-search-bar__cancel-btn{color: #00afff;}

        #iosDialog7 .items{position: relative;padding: .5rem 0 0;height: 3.2rem;border:0;border-bottom: 1px solid #ddd;outline:none;}
        #iosDialog7 .diqu{width: 60%;text-align: left;line-height: 1.4;}
        #iosDialog7 .dianming{line-height: 1.4;}
        #iosDialog7 .dianhua{position: absolute;bottom: .2rem;left: 33%;color:#09b6f2;text-decoration: underline; height: initial;}
        #showPic{position: fixed;z-index: 9000;top: 0;right: 0;left: 0;bottom: 0;background: rgba(0,0,0,.8);}
    	#insertImg{width: 80%;height: 76%;margin: 0 auto;text-align: center;margin-top: 20%;position:relative;}
    	#insertImg img{width:100%;height:100%;}
    	#c-login-close9{top: -.8rem;right: -.8rem;}
    	#iosDialog8 .dianming{width:36%;}
    	#myCode p{font-size:.6rem;margin-top:.1rem;color:#666;}
    </style>
</head>
<body>

</body>
<div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">半价抢购</div>
        </div>
    <div class="contain" style="margin-top:44px;">
        <img class="banner" src="${stax}/assets/images/top.jpg"></img>
        <div class="progress">
            <p>已产生<span class="c-c-o" id="banNum"></span>半价购买资格</p>
            <div class="proinfo">
                <span class="prospan" id = "expect"></span>
                <span class="prosdate" id="codeCount"></span>
            </div>
            <div class="wrapperbar">
                <div class="frame">
                    <div class="c-sdaf">
                        <div class="bar" id="bar"></div>
                    </div>
                </div>
            </div>
            <div class="qiangbtn" onclick="rush();">抢购登记</div>
            <div class="tapthree">
                <span class="wdzjs" onclick="myjiang();">我的中奖</span>
                <span class="ckwddj" onclick="findMyCode();">查看我的登记记录</span>
                <span class="zjgbs" onclick="zhongjiang();">中奖公布</span><br>
                <span class="zjnote" onclick="findKnowed();">中奖用户购买通知</span>
            </div>
        </div>
        <div class="intros">
            <p style="font-size: .7rem;font-weight: bold;margin-bottom: .2rem;">活动细则</p>
            <p style="font-size: .6rem;">
一、  本活动中的“iPhone8 Plus”是指美国苹果公司于2017年9月发布的64G版的iPhone8 Plus；本活动中的“iPad mini4”是指美国苹果公司于2015年9月发布的128G版的iPad mini4；本活动中的“watch series3“是指美国苹果公司于2017年9月发布的42mm苹果watch series3（GPS版）。<br />
<span style="color:red;font-weight:bold">二、 奖项设置：Apple系列产品半价购买资格，其中第01～10期为64G版iPhone8 Plus半价购买资格；第11～40期为128G版iPad mini4半价购买资格；第41～44期为42mm苹果watch series3。</span><br />
三、 活动范围：仅限天津建行客户参与。<br />
四、 活动方式：<br />
1.点击“抢购登记”；<br />
2.按提示支付1～2元以内随机金额进行登记，支付一次获取一个0000～9999的随机4位数登记号。支付金额将即时依序退回至支付卡号；<br />
3.抢购登记次数每达到10000次，当期团成立并按照抽奖规则抽取1个半价购买资格；<br />
4.同一参与者（同一手机号码、身份证号码、卡号）每天每发起一次支付，无论支付是否成功，都会消耗一点<img class="goldbean" src="${stax}/assets/images/heart.png" style="width:26px;height:20px;display:inline-block">。在抽奖期内，登记次数可累计，次数越多，中奖几率越高。<br />
五、 抽奖方式：<br />
每期登记次数达到10000次成团，分别提取建设银行手机银行APP中，账户贵金属Au9999成团日日线图的开盘、收盘、最高、最低四个价格的小数点后第二位数字，顺序组成一个4位数字为该期中奖号码，如果成团日是账户贵金属停盘日，则取停盘日前一天的数值。<br />
六、 通知方式：<br />
主办方将通过活动界面“我的中奖”、短信等方式告知参与者获得半价购买资格。<br />
七、 半价购买方法：<br />
中奖用户将收到举办方发送的购买通知短信及电话通知，明确告知用户购买时间，请注意查收。同时购买时间和购买方式将在活动界面“中奖用户购买通知”菜单中公布。用户成功支付购买后，商户将按下单时间陆续发货。<br />
八、 活动声明：<br />
活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。<br />
本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。<br />
本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。<br />
            </p>
        </div>

        

    </div><!-- end contain -->
                 
    <!-- 登记次数用完框 -->
    <div class="js_dialog" id="iosDialog4" style="opacity: 1; display: none;">
        <div class="weui-mask"></div>
        <div class="weui-dialog">
            <i class="weui-icon-cancel c-login-close" id="c-login-close4"></i>
            
            <div class="weui-tab__panel left-panel" style="padding-bottom: 0;overflow:hidden;">
                <div class="dhyz dhyz2" style="padding-top: 1rem;height: 5.4rem;">
                    <p>您今日登记次数已用完</p>
                    <div class="sure">确定</div>
                </div>
            </div>
        </div>
    </div>

    <!-- 登记成功框 -->
    <div class="js_dialog" id="iosDialog3" style="opacity: 1; display: none;">
        <div class="weui-mask"></div>
        <div class="weui-dialog">
            <i class="weui-icon-cancel c-login-close" id="c-login-close3"></i>
            
            <div class="weui-tab__panel left-panel" style="padding-bottom: 0;overflow:hidden;">
                <div class="dhyz dhyz2" style="padding-top: 1rem;" id="showCode">

                </div>
            </div>
        </div>
    </div>

    <!-- 抢购登记框 -->
    <div class="js_dialog" id="iosDialog6" style="opacity: 1; display: none;">
        <div class="weui-mask"></div>
        <div class="weui-dialog">
            <i class="weui-icon-cancel c-login-close" id="c-login-close6"></i>
            
            <div class="weui-tab__panel left-panel" style="padding-bottom: 0;overflow:hidden;">
                <div class="dhyz dhyz2" style="padding-top: 1rem;height: 8.4rem;">
                    <p style="font-weight: bold;">抢购登记</p>
                    <p class="c-c-r mzh" style="top:3rem;font-size: .6rem;">请随机支付1-2元体验金后进行登记</p>
                    <div class="sure" onclick="pay();">立即支付</div>
                </div>
            </div>
        </div>
    </div>

    <!-- 登记记录框 -->
    <div class="js_dialog" id="iosDialog2" style="opacity: 1;display: none;">
        <div class="weui-mask"></div>
        <div class="weui-dialog" style="height: 68%;">
            <i class="weui-icon-cancel c-login-close" id="c-login-close2"></i>
            
            <div class="weui-tab__panel left-panel" style="padding-bottom: 0;overflow:hidden;">
                    <p class="dengjp" style="font-size: .8rem">登记记录</p>
                    <!-- 搜索框 -->
                    <div class="weui-search-bar" id="searchBar">
                        <form class="weui-search-bar__form">
                            <div class="weui-search-bar__box">
                                <i class="weui-icon-search"></i>
                                <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="搜索" required="" onkeyup="topSearch(this)">
                                <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
                            </div>
                            <label class="weui-search-bar__label" id="searchText" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);">
                                <i class="weui-icon-search"></i>
                                <span>请输入要查询的登记号码</span>
                            </label>
                        </form>
                        <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">返回</a>
                    </div>
					<div class="lines" style="top: 3.5rem;left: 0;z-index: 999;">
                            <div class="diqu">期数</div>
                            <div class="dianming">登记号</div>
                            <div class="jine">金额</div>
                            <div class="dianhua">登记日期</div>
                        </div>
                    <div class="box" style="position:relative;">
                        
                        <div style="width: 100%;height: 20px;"></div>
                        <div id="myCode" style="margin-top:.5rem;margin-bottom:2rem;">
                        </div>
                        <div style="width: 100%;height: 20px;"></div>
                    </div>


            </div>
        </div>
    </div>


    <!-- 我的中奖框 -->
    <div class="js_dialog" id="iosDialog8" style="opacity: 1;display: none;">
        <div class="weui-mask"></div>
        <div class="weui-dialog">
            <i class="weui-icon-cancel c-login-close" id="c-login-close8"></i>
            
            <div class="weui-tab__panel left-panel" style="padding-bottom: 0;overflow:hidden;">
                    <p class="dengjp" style="font-size: .8rem;">我的中奖</p>
                    <!-- 登记记录 -->
					<div class="lines" style="top: 2.1rem;left: 0;z-index: 999;">
                            <div class="diqu">期数&nbsp;&nbsp;&nbsp;&nbsp;</div>
                            <div class="dianming">成团日期</div>
                            <div class="dianhua">中奖号码</div>
                        </div>
                    <div class="box" style="margin-top: 10px;position:relative;">
                        
                        <div style="width: 100%;height: 20px;"></div>
                        <div id="myzhong" style="padding-top:.6rem">
                            <!-- <div class="items">
                                <div class="diqu">团期数：1</div>
                                <div class="dianming">2017-12-22</div>
                                <div class="dianhua">4574</div>
                            </div> -->
                         
                     
                        </div>
                        <div style="width: 100%;height: 20px;"></div>
                    </div>


            </div>
        </div>
    </div>


    <!-- 中奖公布框 -->
    <div class="js_dialog" id="iosDialog7" style="opacity: 1;display: none;">
        <div class="weui-mask"></div>
        <div id="showPic" style="display:none;">
        	<div id="insertImg">
        		<i class="weui-icon-cancel c-login-close" id="c-login-close9"></i>
        		<img src="${stax}/assets/images/top.jpg">
        	</div>
        </div>
        <div class="weui-dialog">
            <i class="weui-icon-cancel c-login-close" id="c-login-close7"></i>
            
            <div class="weui-tab__panel left-panel" style="padding-bottom: 0;overflow:hidden;">
                    <p class="dengjp" style="font-size: .8rem;">中奖公布</p>
                    <!-- 登记记录 -->

                    <div class="box" style="margin-top: 10px;border:0;">
                        <div id="jiang" style="border:0;">

                        </div>
                        <div style="width: 100%;height: 20px;"></div>
                    </div>


            </div>
        </div>
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script type="text/javascript">
    var errwlMsg = "${errwlMsg}";
    if(errwlMsg && errwlMsg != ""){
    	var homeUrl = localStorage.getItem("homeUrl");
    	weui.alert(errwlMsg, function() {
    		window.location.href="${ctx}/tjhui/"+homeUrl;
    	});
    }
</script>
<script type="text/javascript">
    var errMsg = "${errMsg}";
    if(errMsg && errMsg != ""){
    	var homeUrl = localStorage.getItem("homeUrl");
    	weui.alert(errMsg, function() {
    		window.location.href="${ctx}/tjhui/"+homeUrl;
    	});
    }
</script>
<script>
$(document).ready(function() {
    /*替换click*/
    FastClick.attach(document.body); 
});
var msg = "${msg}";
var banNum = ${awardCount};
var codeCount = ${codeCount};
var expect = ${itemNum};   
var goodsId = "${goodsId}";
var baifen = "${percent}"+"%";  //进度条百分比

    $("#bar").css("width",baifen);
    
    var self = self || {};  //命名空间
    self.options = {
        tel:false
    }
    
    $(function(){
	
        $('.weui-navbar__item').on('click', function () {
            $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
        });

        $(".leftbtn").on("click",function(){
            $(".left-panel").show();
            $(".right-panel").hide();
        });

        $(".rtbtn").on("click",function(){
            $(".right-panel").show();
            $(".left-panel").hide();
        });

        $("#c-login-close,.dhyz2 .sure,#c-login-close3,#c-login-close2,#c-login-close4,#c-login-close5,#c-login-close6,#c-login-close7,#c-login-close8").on("click",function(){
            $("#iosDialog2").hide();
            $("#iosDialog3").hide();
            $("#iosDialog4").hide();
            $("#iosDialog5").hide();
            $("#iosDialog6").hide();
            $("#iosDialog7").hide();
            $("#iosDialog8").hide();
            $("body").css("overflow","auto");
        });
        
        $("#c-login-close9").on("click",function(){
        	$("#showPic").hide();
        })

        /* $(".ckwddj").on("click",function(){
            $("#iosDialog2").show();
            $("body").css("overflow","hidden");
        });

        $(".zjgbs").on("click",function(){
            $("#iosDialog7").show();
            $("body").css("overflow","hidden");
        });

        $(".wdzjs").on("click",function(){
            $("#iosDialog8").show();
            $("body").css("overflow","hidden");
        });
 */
    // 搜索栏

        var $searchBar = $('#searchBar'),
            $searchResult = $('#searchResult'),
            $searchText = $('#searchText'),
            $searchInput = $('#searchInput'),
            $searchClear = $('#searchClear'),
            $searchCancel = $('#searchCancel');

        function hideSearchResult(){
            $searchResult.hide();
            $searchInput.val('');
        }
        function cancelSearch(){
            hideSearchResult();
            $searchBar.removeClass('weui-search-bar_focusing');
            $searchText.show();
        }

        $searchText.on('click', function(){
            $searchBar.addClass('weui-search-bar_focusing');
            $searchInput.focus();
            $searchInput.css("background","#eee");
            if (/(Android)/i.test(navigator.userAgent)) {
            	$("#iosDialog2 .weui-dialog").css("top","60%");
            }
            
        });
        // $searchInput
        //     .on('blur', function () {
        //         if(!this.value.length) cancelSearch();
        //     })
        //     .on('input', function(){
        //         if(this.value.length) {
        //             //$searchResult.show();
        //         } else {
        //             //$searchResult.hide();
        //         }
        //     })
        // ;
        $searchClear.on('click', function(){
            hideSearchResult();
            $searchInput.focus();
        });
        
        $('#searchCancel').on('click', function(){
            cancelSearch();
            $searchInput.blur();
            $searchInput.css("background","none");
            $("#iosDialog2 .weui-dialog").css("top","50%");

            $("#myCode").html('');
            showMyCode(0);
        });
        
        $('#c-login-close2').on('click', function(){
            cancelSearch();
            $searchInput.blur();
            $searchInput.css("background","none");
            $("#iosDialog2 .weui-dialog").css("top","50%");
        });
        
		$('.bpBtn').click(function() {
			login(this);
		});
		
		$("#banNum").html(banNum+"个");
// 		$("#banNum").html((expect-1)+"个");
		$("#expect").html("第"+expect+"期半价购买资格登记进度");
		$("#codeCount").html(codeCount+"/${totalNum}");
		
		
	  	if (msg && msg != '') {
	  		weui.alert(msg);
			return;
		}
// 	  	else{			
// //			$("#banNum").html(banNum+"个");
// 			$("#banNum").html((expect-1)+"个");
// 			$("#expect").html("第"+expect+"期半价购买资格登记进度");
// 			$("#codeCount").html(codeCount+"/${totalNum}");
// 		}

	  	$.ajax({
        	type:"GET",
        	url:"${ctx}/rushbuy/findUserCode.json?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&expect="+expect+"&goodsId="+encodeURIComponent(goodsId)+"&r="+Math.random(),
        	success:function(req){
        		if(req.success){
        			$("#showCode").html('');
        			var d = 
                        '<p style="font-weight: bold;">登记成功</p>'+
                        '<p class="shmc">第'+req.checkin.expectNum+'期登记码:</p>'+
                        '<p class="c-c-r mzh">'+req.checkin.codeNum+'</p>'+
                        '<div class="sure" onclick="agqiang();">继续登记</div>';
    			
        			$("#showCode").append(d);
        			$("#iosDialog3").show();
        		}
        	},
			error : function(er) {
				weui.alert("网络错误，请检查您的网络设置！");
			}
        });
        
    });
    
	var isHa = false;
	//抢购登记	
	function rush(){
		if(isHa)return;
		isHa = true;

	  	if (msg && msg != '') {
			weui.alert(msg);
			isHa = false;
			return;
		}

		//查询用户当日登记次数
		$.ajax({
			type:"GET",
			url:"${ctx}/rushbuy/checkin.json?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&goodsId="+encodeURIComponent(goodsId)+"&r="+Math.random(),
			success:function(resp){
				isHa = false;
				if(resp.msg!=''&&resp.msg!=null){
					weui.alert(resp.msg);
					msg=resp.msg;
					return;
				}
				if(resp.nextNum>0){
					$("#iosDialog6").show();
				}else{
					$("#iosDialog4").show();
				}	
			},
			error:function(er){
				isHa = false;			
			}
		});
	}
		
	//继续登记
	function agqiang(){
		$("#iosDialog3").hide();
		rush();
	};
	var isHb = false;
	
	var oos = "";
	//支付
	function pay(){
		if(isHb)return;
		isHb = true
		var loading = weui.loading('正在加载...', { className : 'loading' }); //loading
		$.ajax({
			type : 'POST',
			url : '${ctx}/rushbuy/buy.json',
			data : "goodsId=" + encodeURIComponent(goodsId) + "&userId="+encodeURIComponent(localStorage.getItem("userId"))+"&bankid="+encodeURIComponent(localStorage.getItem("bankId"))+"&userphone="+encodeURIComponent(localStorage.getItem("userPhone"))+"&r=" + Math.random(),
			success : function(resp) {
				loading.hide();
				if (resp.errMsg&& resp.errMsg!='') {
					isHb = false;				
					weui.alert(resp.errMsg);
				
				} else if (resp.orderInfo) {
					setTimeout(function() {
						isHb = false;
						oos = resp.orderInfo;
// 						MBC_PAY();
						MBS_DIRECT_PAY();
					}, 300);
				}
			},
			error : function(er) {
				loading.hide();
				weui.alert("网络错误，请检查您的网络设置！");
				isHb = false;
			}
		});
	}
	
	function findKnowed() {
		window.location.href='${ctx}/rushbuy/knowed.do';
	}
	
	var isHc = false;
	//查看我的登记记录
	function findMyCode(){
		if(isHc)return;
		isHc = true;

		/*if (msg && msg != '') {
			weui.alert(msg);
			isHc = false;
			return;
		}*/
	  	
	  	$("#myCode").html('');
	  	showMyCode(0);
	}
	
	function showMyCode(limit){		
		var loading = weui.loading('正在加载...', { className : 'loading' }); //loading
		var bb = limit;
		$.ajax({
			type:"GET",
			url:"${ctx}/rushbuy/findMyCheckin.json?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&li="+limit+"&r=" + Math.random(),
			success:function(resp){				
				loading.hide();
				if(resp.reList!=null && resp.reList!=''){
					var d; 				
						for(var i=0;i<resp.reList.length;i++){
							var payment = '';
							if(resp.reList[i].payment){
								payment = resp.reList[i].payment;
							}
						
							d=
							'<div class="items">'+
			                    '<div class="diqu">'+resp.reList[i].expectNum+'</div>'+
			                    '<div class="dianming">'+resp.reList[i].codeNum+'</div>'+	
			                    '<div class="jine">'+payment+'</div>'+
			                    '<div class="dianhua">'+resp.reList[i].createTime+'</div>'+
		                	'</div>'
							$("#myCode").append(d);
						}
						if(resp.hasMore){
							$("#myCode").append('<p onclick="addDate('+bb+');">点击加载更多</p>');
						};
		
				}else{
					$("#myCode p").hide();
				}
				$("#iosDialog2").show();
				isHc = false;
				if(bb==0){
				$(".box").scrollTop(0);					
				};
			},
			error:function(er){
				loading.hide();
				weui.alert("网络错误，请检查您的网络设置！");
				isHc = false;
			}
		});	
	}
	//加载更多
	function addDate(limit){
		var cc = limit;
		cc=cc+15;
		$("#myCode p").hide();
		showMyCode(cc);		
	}
	
	var awList;
	
	var isHd = false;
	//查看中奖公布
	function zhongjiang(){
		if(isHd)return;
		isHd = true;

		/*if (msg && msg != '') {
			weui.alert(msg);
			isHd = false;
			return;
		}*/
		
		var loading = weui.loading('正在加载...', { className : 'loading' }); //loading		
		$.ajax({
			type:"GET",
			url:"${ctx}/rushbuy/findAward.json?r="+Math.random(),
			success:function(resp){
				loading.hide();
				if(resp.awList!=null && resp.awList!=''){
					awList = resp.awList;
					$("#jiang").html('');
					var b;
					for(var i=0;i<resp.awList.length;i++){
					   b='<div class="items">'+
	                       '<div class="diqu"  style="margin-left:-.5rem;">期数：'+resp.awList[i].expectNum+'<br/>'+
	                          		 '成团日期：'+resp.awList[i].createDate+''+
	                       '</div>'+
	                       '<div class="dianming "><span class="c-c-r">'+resp.awList[i].codeNum+'</span><br/>'+
	                           			''+resp.awList[i].phone+''+
	                       '</div>'+  
	                       '<div class="dianhua" onclick="getPicUrl(this)" data-picurl="'+awList[i].picUrl+'">查看详情</div>'+		                       
                       '</div>';
						$("#jiang").append(b);
					};
				}
				$("#iosDialog7").show();
				isHd = false;
				
			},
			error:function(er){
				loading.hide();
				weui.alert("网络错误，请检查您的网络设置！");
				isHd = false;
			}
		});
	
	}
	//中奖公布查看图片
	function getPicUrl(obj){console.log(obj)
		var imgUrl = obj.dataset.picurl;
		$("#insertImg img").prop("src",imgUrl);
		$("#showPic").show();
	};
	
	var isHe = false;
	//我的中奖
	function myjiang(){
		if(isHe)return;
		isHe = true;

		/*if (msg && msg != '') {
			weui.alert(msg);
			isHe = false;
			return;
		}*/
		
		var loading = weui.loading('正在加载...', { className : 'loading' }); //loading				
		$.ajax({
			type:"GET",
			url:"${ctx}/rushbuy/findMyAward.json?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&r=" + Math.random(),
			success:function(resp){				
				loading.hide();
				if(resp.awards!=null && resp.awards!=''){
					$("#myzhong").html('');
					var d; 					
						for(var i=0;i<resp.awards.length;i++){
						   d='<div class="items">'+
                               '<div class="diqu">'+resp.awards[i].expectNum+'</div>'+
                               '<div class="dianming">'+resp.awards[i].createDate+'</div>'+
                               '<div class="dianhua">'+resp.awards[i].codeNum+'</div>'+
                           '</div>'
                           
       						$("#myzhong").append(d);
						}
		
				}
				$("#iosDialog8").show();
				isHe = false;
			},
			error:function(er){
				loading.hide();
				weui.alert("网络错误，请检查您的网络设置！");
				isHe = false;
			}
		});	
	
	}
    
    // 顶部搜索
    function topSearch(n){
        if(n.value.length>6){n.value=n.value.substr(0,6)};
        n.value=n.value.replace(/[^\d]/g,'');
    };

  	var isHi = false;
    $("#searchInput").on('keypress',function(e) {  
            var keycode = e.keyCode;  
            var searchName = $(this).val();  
            if(keycode=='13') {  
                e.preventDefault();    
                //请求搜索接口  
                if(isHi)return;
                isHi = true;
                $("#iosDialog2 .weui-dialog").css("top","50%");
                var loading = weui.loading('正在加载...', { className : 'loading' }); //loading	
                $.ajax({
                	type:"GET",
                	url:"${ctx}/rushbuy/searchMyCheckin.json?searchName="+searchName+"&userId="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+ Math.random(),
                	success:function(resp){
                		loading.hide(); 
                		$("#myCode").html('');
                		if(resp.records!=null && resp.records!=''){
        					var d;         					
        						for(var i=0;i<resp.records.length;i++){
        							var payment = '';
        							if(resp.records[i].payment){
        								payment = resp.records[i].payment;
        							}
        						
        							d=
        							'<div class="items">'+
        			                    '<div class="diqu">'+resp.records[i].expectNum+'</div>'+
        			                    '<div class="dianming">'+resp.records[i].codeNum+'</div>'+	
        			                    '<div class="jine">'+payment+'</div>'+
        			                    '<div class="dianhua">'+resp.records[i].createTime+'</div>'+
        		                	'</div>'
        							$("#myCode").append(d);
        						}

        				}
        				$("#iosDialog2").show();
                		isHi = false;
                		
                	},
                	error:function(er){
                		loading.hide();
                		isHi = false;
                	}                	
                });

            }  
     })
     
     /***建行付款**/
//     function MBC_PAY(){
//         if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
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
</body>
</html>