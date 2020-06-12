<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>天津大转盘</title>
    <!-- <link rel="stylesheet" href="assets/css/amazeui.min.css"> -->
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
    <link rel="stylesheet" href="${stax}/assets/css/dial/style.css">
    <style type="text/css">
    
        .rule-content p {font-size: 0.725rem;padding-top: 0;padding-bottom: 0;margin: 0;color: #fff;}
        .rule2 .rule-content {padding-left: 1rem;}
        .rule-content span.am-fr{padding-right: 1rem;width: 8rem;text-align:right;}
        #prizeDiv{width:100%;height:5.2rem;overflow:hidden;}
        #prizeDivOut{width:100%;height:200px;}
        .prizeNames{top: -15px;position: relative;}
        
        #c-jd{position: absolute;top: 26.2rem;right: 0;font-size: .7rem;color: #ff3838;background: #ffcf32;    border-top-left-radius: 7px;border-bottom-left-radius: 7px;width: 3.5rem;text-align: center;}
        .prize_alert  button{border-radius: 5px;border: 0;background:url(${stax}/assets/images/dzp/btn.png) no-repeat;background-size: contain;;width: 5rem;height: 1.6rem;color: #fff;line-height:1.6rem;}
        .btnpos{position: absolute;bottom: 1rem;left: 0;width: 100%;text-align: center;}
        .prize_alert h3{margin-bottom: 0;}
        .numchangce{color:#fc9b16;margin:0;text-align: center;}
        .c-close-a{position: absolute;top: -1.2rem;right: 0rem;background:url(${stax}/assets/images/close.png);width: 1rem;height: 1rem;background-size:contain;z-index: 999;}
        #fee_alert{background:url(${stax}/assets/images/huafei.png) no-repeat;background-size: contain;padding-top: 1.5rem;}
        #fee_alert .alert_close{margin-top: 2.4rem;}
        #cash_alert{background:url(${stax}/assets/images/cash.png) no-repeat;background-size: contain;padding:.5rem;padding-top: 12rem;}
        #cash_alert button{margin: 0;display: inline-block;width: 40%}
        #regret_alert{background:url(${stax}/assets/images/regret.png) no-repeat;background-size: contain;padding:.5rem;padding-top: 11.4rem;}
        #allno_alert{background:url(${stax}/assets/images/allno.png) no-repeat;background-size: contain;padding:.5rem;padding-top: 12.2rem;}
        /* .chanceno_alert{background:url(${stax}/assets/images/chanceno.png) no-repeat;background-size: contain;} */
        .prize_alert{position: relative;margin-left: 1rem;margin-top: 9rem;padding: 0;top:0;}
        /*#foot{background:url(${stax}/assets/images/foot.jpg) no-repeat;position: absolute;bottom: 0;left: 0;width: 100%;height: 1.2rem;background-size: contain;}*/
        #c-margin{margin-top: 14rem;padding-left:1.5rem;padding-right:1.5rem;margin-bottom: 3rem;}
        .rule-content{height: 17rem;}
        .bpPage{width: 12rem;height: 13rem;top: 5rem;left: 2rem;}
        .bpBtn{width: 4.5rem;height: 1.5rem;top: 15rem;right: 5.8rem;}
        .bpInput{right:1rem;}
        .bpInput input{ width:12rem;height: 1.6rem;border-radius:0.3rem;padding-left:0.3rem;}
        .alert-body p{position:absolute;top:8%;left:39%;color:#000;letter-spacing:0.1rem;font-size:0.68rem;}
        .bpcode{ top:4.5rem;right:1rem;width:4rem;height:1.6rem;line-height:1.6rem;text-align:center;border:0;}
        .bpCodeIpt input{width:7.3rem;height: 1.6rem;padding-left:0.3rem;}
    .bpCodeIpt{top:4.5rem;left:1rem;}
.overlay2 {height: 100%;width: 100%;background: black;opacity: 0.5;position: absolute;top: 0%;    z-index: 999;}
    /*@media screen and (min-height: 735px){#c-margin{margin-top: 6.4rem;}#rule1{top: 4.4rem;}#paizi{top: 19.4rem;}}*/
    /*.arrrr{background:url(${stax}/assets/images/arrrrjhsb.png) no-repeat;background-size: contain;position: absolute;top:0;right: 0;width: 9rem;height: 9rem;z-index: 1000;}*/
    .tishi{z-index:999;}
    #c-wy{position: absolute;top: 19.5rem;right: 0;width: 4rem;height: 4rem;    z-index: 1000;}

    #prize_alert, .prize_alert{height:9.5rem;background:#fff;}

    .wheel{width:100%;margin: 0 auto;text-align: center;height:20rem;}
    .content{padding:0;}    
    /* .wrap{position: absolute;top:8rem;left: 0;width:100%;} */

   /*  #bttongrou{text-align: center;position: absolute;top: 21.5rem;left: 0;width: 100%;} */
   
 	.button-left{;background: url("${stax}/assets/images/dzp/activeRules.png") no-repeat;width:3.8rem;height:1.9rem;display: inline-block;background-size:contain;margin-top:37%;}
	.button-right{background: url("${stax}/assets/images/dzp/btnRight.png") no-repeat;width:3.8rem;height:1.9rem;display: inline-block;background-size:contain;margin-top:37%;position:absolute;right:0;}
 	.wheel{background: url('${stax}/assets/images/dzp/flor.png') no-repeat center;background-size: contain;display: block;position:absolute;top:3.5rem;left:-0.5rem;}
 	
 	
    .button-left{margin-left:0;position:absolute;left:0;}
    .activity{width: 100%;.margin: 0 auto;position: relative;overflow: hidden;height: 125px;}
    .activity ul{top: -15px;padding: 0;color: #666;position: relative;left: .7rem;opacity: 1;}
    .activity li{height: 34px;padding:0;font-size: .6rem;line-height: 34px;list-style: none;color:#ff6c00;}
    #bk{background:rgba(255,255,255,.8);padding: 1.3rem 0 .7rem;border-radius: 5px;}
    #label{position: absolute;top: -1.2rem;left: 0;width: 100%;text-align: center;}
    #label .labelimg{width: 6rem;height:2rem;background: url(${stax}/assets/images/winlist.png) no-repeat;margin:0 auto;background-size: contain;}
    .am-hide{display: none!important;visibility: hidden!important;}
    #wheelCanvas{width: 77%;margin:0 auto;position:absolute;top:3.7rem;left:2.4rem;}
    .pnum{position: absolute;bottom: .3rem;left: 0;width: 100%;text-align: center;}
    .pnum span{color:#fff;font-size: .6rem;display: inline-block;}
    .bgblack .wrappers{overflow-y: auto;padding: 1rem;height: 13rem;font-size: .6rem;}
    .bgblack .bpPage{background: #fff;border-radius: 5px;height: 16rem;}
    .tishi , .bgblack ,.bgblack2{background: rgba(0,0,0,0.5);position: absolute;top: 0;bottom: 0;left: 0;right: 0;position: fixed;width: 100%;}
    .ruletitle{background: url(${stax}/assets/images/rulesDiv.png) no-repeat;width:6rem;height: 2rem;background-size: contain;position: absolute;top:-1.2rem;left:3.3rem;}
    .prizeDiv .ruletitle{background: url(${stax}/assets/images/winlist.png) no-repeat;background-size: contain;}
    #countdiv .weui-tab__panel{padding-top: 60px;padding-bottom: 0;}
    #countdiv .weui-tab__panel .c-item{padding:.2rem 0;}
    #countdiv .weui-tab__panel .c-item div{width: 5rem;display: inline-block;}
    #countdiv .weui-tab__panel .c-item div.c-item-right{float: right;text-align: right;}
    #countdiv .weui-navbar img{width: 1rem;height: 1rem;vertical-align: middle;}
    .weui-navbar__item span{color:#e88b08;}
    .prize-info{margin:0;position: absolute;bottom:4.5rem;left: 0;width: 100%;text-align: center;}
    .prize-info span{width:9.5rem;color: #666;display: inline-block;font-size: .7rem;}
    /* #get-jindou .chanceno_alert{background: url(${stax}/assets/images/gotit.png) no-repeat;background-size: contain;} */
    /* #how-pay .chanceno_alert{background: url(${stax}/assets/images/intro.png) no-repeat;background-size: contain;} */
    #how-pay .prize-info span{width:9rem;}
.titleBar-back .fa {font-size: 16px;color: #fff;vertical-align: baseline;margin-right: 5px;}
.titleBar-back {color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height: 44px;line-height: 44px;padding-left: .4rem;position: absolute;left: 0;top: 0;bottom: 44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;}
.titleBar {
z-index: 990;position: fixed;top: 0;left: 0;width: 100%;height: 44px;background-color: #09b6f2;padding-left: 3rem;padding-right: 3rem;box-sizing: border-box;}
.titleBar-back {color: #fff;font-size: 16px;vertical-align: middle;width: 60px;height: 44px;line-height: 44px;padding-left: .6rem;position: absolute;left: 0;top: 0;bottom: 44px;word-wrap: normal;text-overflow: ellipsis;white-space: nowrap;overflow: hidden;display:flex;align-items:center;}
.titleBar-back img{width:0.3rem;}
.titleBar-text{height: 44px;line-height: 44px;vertical-align: middle;color: #fff;font-size: 16px;text-align: center;}
		#box{width:100%;height:100%;background: url(${stax}/assets/images/dzp/mainBackground.jpg) no-repeat;background-size: contain;margin-top:44px;background-color:#2B5B9B;position:fixed;}
    .res{font-size:0.6rem;color:#fff;margin-top:80%;text-align:center;letter-spacing:0.05rem;}
    .res span{color:#FFDF4B;font-size:0.64rem;}
    .share{width:100%;position:relative;top:29%;height:2rem;}
    .share div{width:7rem;height:2rem;background: url(${stax}/assets/images/dzp/share.png) no-repeat;background-size: contain;font-size:0.8rem;color:#fff;text-align:center;margin-top:2%;margin-left:28%;font-size:0.74rem;line-height:1.8rem;}
    .share p{font-size:0.6rem;color:#fff;letter-spacing:0.05rem;text-align:center;}
    .spa{position:absolute;bottom:0.5rem;color:#797979;font-size:0.54rem;left:0;text-align:center;right:0;margin:auto;}
    
    /* 中奖记录样式 */
    #record .content{width:100%;height:100%;margin-top:44px;background: url(${stax}/assets/images/dzp/mainBackground.jpg) no-repeat;background-size:contain;background-color:#2B5B9B;position:fixed;}
	#record .img{width:5rem;height:2rem;background: url(${stax}/assets/images/dzp/btn.png) no-repeat;background-size:contain;text-align:center;font-size:0.68rem;color:#fff;line-height:1.5rem;position:absolute;top:7.5rem;left:6rem;z-index:111;}
	#record .record{width:14rem;height:16rem;background:#fff;position:absolute;top:8.3rem;left:1rem;border-radius:0.5rem;}
	#record .record .txt{font-size:0.6rem;display:inline-block;width:95%;text-indent:0.6rem;margin:auto;margin-top:1.2rem;text-align:center;margin-bottom:0.6rem;}
	#record .record .txt a{text-decoration:underline;color:#FC7004;}
	#record .table{width:94%;font-size:0.6rem;padding:0% 3%;}
	#record .table-t{width:100%;display:flex;align-items:center;justify-content:space-around;text-align:center;margin-bottom:0.3rem;}
	#record .table-t p{display:inline-block;width:50%;}
	#record .table-b{width:93%;height:8rem;position:absolute;left:0.5rem;overflow:hidden;}
	#record .table-b ul{width:100%;height:100%;overflow:auto;}
	#record .table-b li{width:100%;display:flex;align-items:center;justify-content:space-around;text-align:center;border-bottom:1px solid #999;height:1.5rem;line-height:1.5rem;}
	#record .table-b p{display:inline-block;width:50%;}
	
	
	/* 活动规则样式 */
	#rule .content{width:100%;height:100%;margin-top:44px;background: url(${stax}/assets/images/dzp/mainBackground.jpg) no-repeat;background-size:contain;background-color:#2B5B9B;position:fixed;}
	#rule .img{width:5rem;height:2rem;background: url(${stax}/assets/images/dzp/btn.png) no-repeat;background-size:contain;text-align:center;font-size:0.6rem;color:#fff;line-height:1.5rem;position:absolute;top:7.5rem;left:6rem;z-index:111;}
	#rule .record{width:14rem;height:16rem;background:#fff;position:absolute;top:8.3rem;left:1rem;border-radius:0.5rem;padding-bottom:3%;overflow:hidden;}
	#rule .record .txt{font-size:0.56rem;display:inline-block;width:92%;margin:auto;margin-top:1.2rem;margin-bottom:0.6rem;padding:0% 4%;height:100%;overflow:auto;}
	#rule a{text-decoration:underline;}	
	.home{width:1.8rem;position:absolute;top:20rem;right:1rem;}
	.home img{width:100%;}
    </style>
</head>
<body>
    <div id="box" style="display:block;">
    	<div class="wrap">
    	<div class="titleBar">
    		<div class="titleBar-back goHome">
		         <img src="${stax}/assets/images/history.png" />&nbsp;返回
		     </div>
            <div class="titleBar-text am-text-truncate">首页</div>
        </div>
    
      <div class="content">
            <div class="wheel">
                <canvas class="item" id="wheelCanvas" width="422px" height="422px"></canvas>
                <img class="pointer" src="${stax}/assets/images/dzp/pointer.png" />
            </div> 
        </div>
	</div>
    <div class="buttons" id="bttongrou">
        <a class="button-left" href="#" onclick="activityRules();"></a>
        <a class="button-right" href="#" onclick="myPrize();"></a>
    </div>
 	<div class="share">
 		<p class="res">当日剩余：<span class="buytime"></span>次抽奖机会</p>
<!--  		<div>分享</div> -->
<!--  		<p class="share_p" style="display:none;">分享（<span class="sharetime">0/1</span>）可获得津元宝</p> -->
 	</div>
 	<div class="home"> 
         <img src="${stax}/assets/images/dzp/goImg.png" />
 	</div>
 	
    </div>

	<!-- 中奖纪录 -->
	<div id="record" style="display:none;">
    	<div class="titleBar">
		     <div class="titleBar-back" onclick="hideMyPrize();">
		         <img src="${stax}/assets/images/history.png" />&nbsp;返回
		     </div>
			<div class="titleBar-text am-text-truncate">我的奖品</div>
		</div>
		<div class="content">
			<div class="box">
				<div class="img">
					中奖记录
				</div>
				<div class="record">
					<p class="txt">幸运大转盘抽中的津元宝可在<a href="#" onclick="getIngotlist();">津元宝明细</a>查询，其他的奖品可在<a href="#" onclick="getmyprize();">天津惠-个人中心-我的奖品</a>查询。</p>
					<div class="table">						
						<div class="table-t">
							<p>中奖时间</p>
							<p>奖品名称</p>
						</div>
						<div id="wrapper" class="table-b">
							<div class="scroller">
								<ul>
									
								</ul>
							</div>
						</div>
					</div>
					<p class="ingotsendtime" style="font-size:0.54rem;text-align:center;position:absolute;top:14rem;left:0;color:red;right:0;margin:auto;">自2019年1月1日0点起，津元宝有效期为<br/>自津元宝获得日起90天</p>
				</div>
			</div>
		</div>
    </div>
    
    
    <!-- 活动规则 -->
    <div id="rule" style="display:none;">
    	<div class="titleBar">
	     <div class="titleBar-back" onclick="hideTitleBar();">
	         <img src="${stax}/assets/images/history.png" />&nbsp;返回
	     </div>
		<div class="titleBar-text am-text-truncate">活动规则</div>
	</div>
	<div class="content">
		<div class="box">
			<div class="img">
				活动规则
			</div>
			<div class="record">
				<div class="txt rule" id="18rules">
					1.活动时间：${activityTime}。<br>
					2.活动内容：<br>
					（1）2019年新签约手机银行客户，通过建行手机银行，成功完成转账、缴费充值（不含全国话费充值）交易后，即可在交易结果页面点击“天津惠幸运大转盘”广告，进行一次抽奖，抽奖次数每天最多${todayTimes}次。<br>
					（2）在“手机银行【悦享生活】天津惠”中，参加丰富多彩的优惠活动。<br>
					3.关于津元宝：<br>
					“天津惠”平台设立平台货币“津元宝”，用于兑奖专区兑奖、本地特惠抵扣现金使用。客户在“天津惠”首页、兑奖专区页面、本地特惠页面、个人中心页面都可以查看本人“津元宝”余额及“津元宝”收支明细。<span class="ingotsendtime" style="color:red;">自2019年1月1日0点起，津元宝有效期为<br/>自津元宝获得日起90天</span><br>
					<a href="#" >显示全部</a>
					<div style="display:none;">
						4.关于京东E卡：<br>
						京东E卡是由京东商城发行的单用途商业预付卡，在www.jd.com网站内使用，仅用于购买京东自营商品。京东E卡只能买京东自营商品，不能购买图书和音像出版物和话费充值。京东E卡使用过程中遇到任何问题，可咨询京东客服，京东客服电话：400-656-0055。
京东E卡使用说明：（1）您只需按照京东的正常购物流程操作,在提交订单按钮的上方选择使用京东E卡，并输入密码即可（使用时即同时绑定账户）。（2）也可将京东E卡先行绑定账号，在使用时选择已绑定的卡即可。绑定步骤：登录您的京东账号，进入「我的京东」页面，选择「资产中心」中的「京东卡/E卡」，然后输入E卡卡密和验证码，即可绑定成功。（3）使用京东E卡购买的商品发生退货时，京东E卡所支付金额会退回卡内，不能退现金。
京东E卡注意事项：（1）京东E卡有效期一般为36个月，请您在有效期内尽快使用。（2）京东E卡仅能购买京东自营商品（“自营商品”指在商品详情页明确标识为“商品从京东库房出库，由京东安排配送，并由京东提供售后服务”的商品，但是第三方卖家商品和图书及音像出版物和话费不在此内）。抢购预定预售预约商品不能用（具体以京东规定为准则）。最简单的判断方法：自营商品的商品编码是6位或者7位数。（3）在京东购买商品时京东E卡所支付金额不再开具发票,其不影响产品保修。（例：购买120元商品，使用京东E卡100元一张，开据发票金额为20元）。（4）使用京东E卡购买的商品发生退货时，所支付资金会自动退回到卡内。<br>
						5.关于话费：<br>
						<span style="color:red;">携号转网手机号可能存在无法正常充值的情况，给您造成的不便请您谅解。</span>由于月初月末，订单交易量比较大，运营商充值系统繁忙偶尔存在延迟到账或者充值失败的情况，请联系客服为您处理。客服电话：4008109200. 郑重说明：（1）本平台所有话费均不直接参与运营商活动。（2）平台为自动充值，一旦付款成功就无法修改或者撤销订单，只能最终充值结果。在网上提交的充值内容，是具备法律效应的交易指令。若因个人原因造成损失，平台恕不承担责任，并且不承诺找回损失的义务。（3）购买前请查询要充值号码的话费余额，如已停机的，请查询欠费多少，以免万一充值后话费依然不足，不能正常开机，造成不必要的误会。（4）若交易成功后没有收到短信，建议您用充值号码拨打运营商客服电话查询（移动：10086、联通：10010、电信：10000）最近缴费充值记录。<br>
						6.活动声明：<br>
						活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。
						<p style="margin-bottom:1rem;">客服电话：022-58750200。</p>
					</div>
				</div>
				<div class="txt rule" style="display:none" id="19rules">
					 1.活动时间：2019年01月-03月。<br>
					 2.活动内容：<br>
					（1）2019年新签约手机银行客户，通过建行手机银行，成功完成转账、缴费充值（不含全国话费充值）交易后，即可在交易结果页面点击“天津惠幸运大转盘”广告，进行一次抽奖，抽奖次数每天最多2次。<br>
					（2）在“手机银行【悦享生活】天津惠”中，参加丰富多彩的优惠活动。<br>
					 3.关于津元宝：<br>
					 “天津惠”平台设立平台货币“津元宝”，用于兑奖专区兑奖、本地特惠抵扣现金使用。客户在“天津惠”首页、兑奖专区页面、本地特惠页面、个人中心页面都可以查看本人“津元宝”余额及“津元宝”收支明细。<span style="color:red;">幸运大转盘活动中获得的津元宝有效期，为自津元宝获得日起90天</span><br>
					<a href="#" >显示全部</a>
					<div style="display:none;">
					
					4.关于京东E卡：<br>
					京东E卡是由京东商城发行的单用途商业预付卡，在www.jd.com网站内使用，仅用于购买京东自营商品。京东E卡只能买京东自营商品，不能购买图书和音像出版物和话费充值。京东E卡使用过程中遇到任何问题，可咨询京东客服，京东客服电话：400-656-0055。
京东E卡使用说明：（1）您只需按照京东的正常购物流程操作,在提交订单按钮的上方选择使用京东E卡，并输入密码即可（使用时即同时绑定账户）。（2）也可将京东E卡先行绑定账号，在使用时选择已绑定的卡即可。绑定步骤：登录您的京东账号，进入「我的京东」页面，选择「资产中心」中的「京东卡/E卡」，然后输入E卡卡密和验证码，即可绑定成功。（3）使用京东E卡购买的商品发生退货时，京东E卡所支付金额会退回卡内，不能退现金。
京东E卡注意事项：（1）京东E卡有效期一般为36个月，请您在有效期内尽快使用。（2）京东E卡仅能购买京东自营商品（“自营商品”指在商品详情页明确标识为“商品从京东库房出库，由京东安排配送，并由京东提供售后服务”的商品，但是第三方卖家商品和图书及音像出版物和话费不在此内）。抢购预定预售预约商品不能用（具体以京东规定为准则）。最简单的判断方法：自营商品的商品编码是6位或者7位数。（3）在京东购买商品时京东E卡所支付金额不再开具发票,其不影响产品保修。（例：购买120元商品，使用京东E卡100元一张，开据发票金额为20元）。（4）使用京东E卡购买的商品发生退货时，所支付资金会自动退回到卡内。<br>
					5.关于话费：<br>
					<span style="color:red;">携号转网手机号可能存在无法正常充值的情况，给您造成的不便请您谅解。</span>由于月初月末，订单交易量比较大，运营商充值系统繁忙偶尔存在延迟到账或者充值失败的情况，请联系客服为您处理。客服电话：4008109200. 郑重说明：（1）本平台所有话费均不直接参与运营商活动。（2）平台为自动充值，一旦付款成功就无法修改或者撤销订单，只能最终充值结果。在网上提交的充值内容，是具备法律效应的交易指令。若因个人原因造成损失，平台恕不承担责任，并且不承诺找回损失的义务。（3）购买前请查询要充值号码的话费余额，如已停机的，请查询欠费多少，以免万一充值后话费依然不足，不能正常开机，造成不必要的误会。（4）若交易成功后没有收到短信，建议您用充值号码拨打运营商客服电话查询（移动：10086、联通：10010、电信：10000）最近缴费充值记录。<br>
					6.活动声明：<br>
					活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。
					<p style="margin-bottom:1rem;">客服电话：022-58750200。</p>
					</div>
				</div>
				<div class="txt rule" style="display:none" id="19rules_2nper">
					 1.活动时间：2019年7月-11月<br>
					 2.活动内容：<br>
					 （1）客户通过建行手机银行，成功完成转账、投资理财（基金、理财产品）、缴费充值交易（不含全国话费充值）后，即可在交易结果页面点击“天津惠幸运大转盘”广告，进行一次抽奖，每人每天最多抽2次。
					 （2）登录建行手机银行-悦享生活-天津惠，参加精彩纷呈的优惠活动。<br>
					 3.关于津元宝：<br>
					 “天津惠”平台设立平台货币“津元宝”，用于兑奖专区兑奖、本地特惠抵扣现金使用。客户在“天津惠”首页、兑奖专区页面、本地特惠页面、个人中心页面都可以查看本人“津元宝”余额，在个人中心页面可以查看“津元宝”收支明细。<span style="color:red;">幸运大转盘活动中获得的津元宝有效期，为自津元宝获得日起90天</span>虚拟手机号不允许注册天津惠并参加活动，请您使用实体手机号注册天津惠并参加活动。
					<a href="#" >显示全部</a>
					<div style="display:none;">
					4.关于京东E卡：<br>
					京东E卡是由京东商城发行的单用途商业预付卡，在www.jd.com网站内使用，仅用于购买京东自营商品。京东E卡只能买京东自营商品，不能购买图书和音像出版物和话费充值。京东E卡使用过程中遇到任何问题，可咨询京东客服，京东客服电话：400-656-0055。
京东E卡使用说明：（1）您只需按照京东的正常购物流程操作,在提交订单按钮的上方选择使用京东E卡，并输入密码即可（使用时即同时绑定账户）。（2）也可将京东E卡先行绑定账号，在使用时选择已绑定的卡即可。绑定步骤：登录您的京东账号，进入「我的京东」页面，选择「资产中心」中的「京东卡/E卡」，然后输入E卡卡密和验证码，即可绑定成功。（3）使用京东E卡购买的商品发生退货时，京东E卡所支付金额会退回卡内，不能退现金。
京东E卡注意事项：（1）京东E卡有效期一般为36个月，请您在有效期内尽快使用。（2）京东E卡仅能购买京东自营商品（“自营商品”指在商品详情页明确标识为“商品从京东库房出库，由京东安排配送，并由京东提供售后服务”的商品，但是第三方卖家商品和图书及音像出版物和话费不在此内）。抢购预定预售预约商品不能用（具体以京东规定为准则）。最简单的判断方法：自营商品的商品编码是6位或者7位数。（3）在京东购买商品时京东E卡所支付金额不再开具发票,其不影响产品保修。（例：购买120元商品，使用京东E卡100元一张，开据发票金额为20元）。（4）使用京东E卡购买的商品发生退货时，所支付资金会自动退回到卡内。<br>
					5.关于话费：<br>
					<span style="color:red;">携号转网手机号可能存在无法正常充值的情况，给您造成的不便请您谅解。</span>由于月初月末，订单交易量比较大，运营商充值系统繁忙偶尔存在延迟到账或者充值失败的情况，请联系客服为您处理。客服电话：4008109200. 郑重说明：（1）本平台所有话费均不直接参与运营商活动。（2）平台为自动充值，一旦付款成功就无法修改或者撤销订单，只能最终充值结果。在网上提交的充值内容，是具备法律效应的交易指令。若因个人原因造成损失，平台恕不承担责任，并且不承诺找回损失的义务。（3）购买前请查询要充值号码的话费余额，如已停机的，请查询欠费多少，以免万一充值后话费依然不足，不能正常开机，造成不必要的误会。（4）若交易成功后没有收到短信，建议您用充值号码拨打运营商客服电话查询（移动：10086、联通：10010、电信：10000）最近缴费充值记录。<br>
					6.活动声明：<br>
					活动过程中，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。
					<p style="margin-bottom:1rem;">拼团商品问题客服电话：4001570096，拼团支付问题客服电话：022-58750200，咨询时间：周一至周五9:30至17:00。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
    </div>
   
   <!--提示框-->
 <div class="tishi" style="display: none;">
        <div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                    <div class="c-close-a"></div>
                    <div class="prize-info" style="bottom:4rem;">
                        <span>恭喜您，您本次抽奖获得5锭津元宝</span>
                    </div>
            </div>
        </div>
    </div>
    
   <!-- 中奖-->
    <div class="bgblack" id="get-jindou" style="display: none;">
        <div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                    <div class="c-close-a"></div>
                    <p style="top:10%;font-size:0.8rem;">中奖啦</p>
                    <div class="prize-info" style="top:3rem;">
                        <span id= "huode">恭喜您，您本次抽奖获得5锭津元宝</span>
                    </div>
                <div class="btnpos" style="bottom:2.4rem;">
                    <button class="am-btn am-btn-sm am-center am-btn-warning jianbianbtn alert_close alert_closes">查看领取</button>
                </div>
                <div class="bottomTxt">
                	<span class="spa ingotsendtime" style="color:red;">自2019年1月1日0点起，津元宝有效期为<br/>自津元宝获得日起90天</span>
                </div>
            </div>
        </div>
    </div>
    
    <!--分享津元宝提示框-->
    <div class="bgblack2" id="sharediv" style="display:none;">
        <div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                    <div class="c-close-a"></div>
                    <div class="prize-info" style="bottom:5.4rem;">
                        <span id= "huode">感谢您的分享，<br/>您已获得${shareIngots}锭津元宝！</span>
                    </div>
                <div class="btnpos" style="bottom:2.4rem;">
                    <button class="am-btn am-btn-sm am-center am-btn-warning jianbianbtn alert_close findjybbtn">查看领取</button>
                </div>
                <div class="bottomTxt">
                	<span class="spa ingotsendtime" style="color:red;">自2019年1月1日0点起，津元宝有效期为<br/>自津元宝获得日起90天</span>
                </div>
            </div>
        </div>
    </div>


	<div class="bindPhone" style="display: none;">
   
   		<div class="am-alert am-center am-text-warning am-center prize_alert chanceno_alert">
            <div class="alert-body">
                <div class="c-close-a"></div>
                <p>绑定手机号</p>
               	<div class="bpInput">
		            <input id="phone" type="tel" name="" maxlength="11" pattern="[0-9]*" placeholder="请输入手机号">
		        </div>
		        
		        <input class="bpcode" id="bpcodebtn" type="button" value="获取验证码" onclick="sendCode()";/>
		        <div class="bpCodeIpt">
		            <input placeholder="请输入验证码" id="testcode" type="number" name=""
		                onKeyUp="if(this.value.length>4){this.value=this.value.substr(0,4)};this.value=this.value.replace(/[^\d]/g,'');">
		        </div>
                <div class="btnpos">
                    <button class="am-btn am-btn-sm am-center am-btn-warning jianbianbtn alert_close" onclick="register();" >登录</button>
                </div>
            </div>
        </div>
    </div>



    <div id="tempic" style="display: none;">
        <img alt="" src="">
    </div>

    <div id="foot"></div>
    <!--在这里编写你的代码-->

    <script src="${stax}/assets/js/jquery.min.js"></script>
    <script src="${stax}/assets/js/amazeui.min.js"></script>
    <script src="${stax}/assets/js/jQueryRotate.js"></script>
    <script src="${stax}/assets/js/utils.js"></script>
    <script src="${stax}/assets/js/index.js?v=1"></script>
    <script src="${stax}/assets/js/weui.min.js"></script>
    <script src="${stax}/assets/js/iscroll4.js"></script>
	<script src="${stax}/assets/js/iscrollAssist.js"></script>
	<script src="${stax}/assets/js/jhshare.js"></script>

    <script>
        //document.getElementsByClassName('wrap')[0].style.minHeight = window.innerHeight + 'px';
 		
        
        $(document).ready(function () {
			$('body').height($('body')[0].clientHeight);
			$('body').width($('body')[0].clientWidth);
		});
        //基本数据
        
       	var activityId ="${activityId}";//活动id
       	var bankuid ="${bankuid}";
       	var bankid ="${bankid}";
        var uid ="${uid}";
		var detailId = 0;  //中奖id
		var remt = 0; //剩余次数
		var startIndex = 0;	//分页用
		var byd = '${byd}';
		var gameId = '${gameId}';
		var errorMsg;
		var url ="";
		var isUser = true;
		var ton = "${ton}";
		var bud = "${bud}";
		if(bankid){
			localStorage.setItem("bankId", bankid);
		}
		if(bankuid){
			localStorage.setItem("bankuid", bankuid);    		    		
		}
		
		if(ton){
			localStorage.removeItem('ton');
			localStorage.setItem("ton",ton);
		}
		if(byd != "" && uid != ""){
			localStorage.removeItem('userId');
			localStorage.removeItem('byd');
			localStorage.setItem("userId",uid);
			localStorage.setItem("byd",byd);
			localStorage.setItem("bankuid", bankuid);    		    		
		}else{
			isUser = false;
		}
		if(localStorage.getItem("userId") == null && localStorage.getItem("byd") == null){
			isUser = false;
		}else if(localStorage.getItem("userId") == "" && localStorage.getItem("byd") == ""){
			isUser = false;
		}else{
			isUser = true;
		}
		if(bankid){
			localStorage.setItem("bankId", bankid);
		}
		
		var indexUrl = "${indexUrl}";
	  	if(indexUrl) localStorage.setItem("homeUrl", '${indexUrl}');
		
		$(".home , .goHome").click(function(){
			uid = localStorage.getItem("userId");
			byd = localStorage.getItem("byd");
			if(uid&&uid!=""&&byd&&byd!=""){
				window.location.href = "${ctx}/tjhui/tjhuiindex.do";
			}else{
				$(".bindPhone").css("display","block");
			}
		});
		
		
		
		
		
		var attr ="${attr}";
		$(function(){
			if(attr == "attr-a"){
				$(".ingotsendtime").html("自2019年1月1日0点起，津元宝有效期为<br/>自津元宝获得日起90天");
				$("#18rules").show();
				$("#19rules").hide();
				$("#19rules_2nper").hide();
			}else if(attr == "attr-b"){
				$(".ingotsendtime").html("自2019年1月1日0点起，津元宝有效期为<br/>自津元宝获得日起90天");
				$("#18rules").hide();
				$("#19rules").show();
				$(".share_p").show();
			}else if(attr == "attr-c"){
				$(".ingotsendtime").html("自2019年1月1日0点起，津元宝有效期为<br/>自津元宝获得日起90天");
				$("#18rules").hide();
				$("#19rules").hide();
				$("#19rules_2nper").show();
				$(".share_p").hide();
			}
			getuserInfos();
		});

		
		function getuserInfos(){
			if(isUser){
				$.ajax({
					type: "GET",
					url: "${ctx}/tjdzpqrqm/getUserInfos.json",
					data: "byd="+encodeURIComponent(localStorage.getItem("byd"))+"&activityId="+encodeURIComponent(activityId)+"&r="+Math.random(),
					success: function(resp){
						$(".sharetime").html(resp.share+"/1");
						$(".buytime").html(resp.buytimes);
					}
				});
			}
		}
		
		var addr = '${addr}';
		var cango = false;
	  	if(addr){
	  		if(addr.indexOf('天津') > -1){
	  			cango = true;
	  		}
	  	}
        $(function() {
        	errorMsg = '${msg}';
        	 if (errorMsg && errorMsg != '') {
                  weui.alert(errorMsg);
                  return;
        	}  
       	    if (errorMsg && errorMsg != '') {
                // 抽取按钮按钮点击触发事件
                $('.pointer').click(function() {
                    weui.alert(errorMsg);
                });
            } else {
                // 抽取按钮按钮点击触发事件
                $('.pointer').click(function() {
                	if(!isUser){
                  		$(".bindPhone").css("display","block");
                  	}else{
                  		play();
                  	}
                });
            }
        });
        
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

      	
      	/**绑定手机登录**/
      	function register(){
      		
      		var phone = $('#phone').val();
      		var ccode = $('#testcode').val();
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
    			url: "${ctx}/tjdzpqrqm/register.json",
    			data: "phone="+phone+"&code="+ccode+"&bankid="+bankid
    					+"&bud="+encodeURIComponent(bud)+"&activityId="+encodeURIComponent(activityId)+"&r="+Math.random(),
    			success: function(resp){
    				loading.hide();
    				if(resp.msg){
    					$(".bindPhone").hide();
    					weui.alert(resp.msg);
    				}else{
    					$('.bindPhone').fadeOut(200);
    					isUser = true;
    					buytimes = resp.buytimes;
    					$(".buytime").html(buytimes);
    					localStorage.setItem("userId",resp.uid);
    					localStorage.setItem("byd",resp.byd);
    				}
    			},
    			error:function(er){
    				loading.hide();
    				console.log(er);
    			}
        	});
      	}
      	

        /*验证手机号,通过则发送短信*/
        $(document).on("input oninput","#phone",function(e){
        	
             if(e.type === "input" || e.orignalEvent.propertyName === "value"){         
                 this.value=this.value.replace(/\D/gi,"");
                 
 	                if(this.value.length == 11){
 	                	
 	                if(checkPhone(this.value)){
 	                	$('#bpcodebtn').attr("disabled",false);
 	                	$("#bpcodebtn").css("background","#0BB6F2");  
						
 	                }
 	            }else if(this.value.length < 11){
 	            	$("#bpcodebtn").css("background","#959595"); 
 	            	$("#bpcodebtn").attr("disabled",true);
 	            }
          	 }
         });
        
        function sendCode(){
        	$("#bpcodebtn").attr("disabled",true);
             var phone = $("#phone").val();
             var loading = weui.loading('正在加载...');	//loading
             	$.ajax({
             		type:"POST",
             		url:"${ctx}/tjdzpqrqm/getcode.json?phone="+$('#phone').val()+"&cango="+cango+"&r="+Math.random(),
             		success: function(resp){
             			loading.hide();
             			if(resp.msg != ""){
             			getCode();
             				$("#bpcodebtn").css("background","#959595"); 
             				$(".tishi span").text(resp.msg);
             				$(".tishi").show();
             				
             			}else{
             				getCode();
             			}
             		},
             		error:function(er){
             			loading.hide();
             			console.log(er);
             		}
             	});
        }
     /*验证手机号*/
     /* function checkPhone(num){
         var phone = parseInt(num);
         var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
         if(!reg.test(phone)){
         	$(".tishi span").text("请输入正确的手机号码");
         	$(".tishi").show();
             return false;
         }    
         return true;
     } */
     
    var timer;
     var oBtn = document.getElementById("bpcodebtn");
     function getCode(){
     	clearInterval(timer);
     	/*验证码倒计时*/
            if(checkPhone($("#phone").val())){
            
 			var s = 60;
               timer = setInterval(function(){
             	  
                    s--;
                    $("#bpcodebtn").css("background","#959595"); 
                    $("#bpcodebtn").attr("disabled",true);
                    oBtn.value = s+"秒后重发";
                    if(s == 0){
                    	clearInterval(timer);
                    	oBtn.value = "获取验证码";
                    	$("#bpcodebtn").css("background","#0BB6F2"); 
                    	$("#bpcodebtn").attr("disabled",false);
                    }
                },1000);
 			
         };
     }
        
       
        
        
        var prizeList = ${products};
        var count = prizeList.length;
        var onSending = false;
        var store = $.AMUI.store;

        $(document).ready(function() {
           store.set('gameId', gameId);
            for (var i = 0; i < prizeList.length; i++) {
                if (i % 2 == 0){
                	prizeList[i].color = "#6D2E33";
                    prizeList[i].bgcolor = "#fff";
                }else{
                    prizeList[i].color = "#6D2E33";
                    prizeList[i].bgcolor = "#8DCBFA";
                }  
                var tempic = new Image();
                tempic.src = "${ctx}/"+prizeList[i].picUrl;
                prizeList[i].img = tempic;
            } 
            
           
            //浮层关闭
            $('.alert_close').on('click', function() {
                $("#no-prize").css("display","none");
                $("#no-chance").css("display","none");
                $("#get-jindou").css("display","none");
                $("#sharediv").css("display","none");
            });
            
            $('#cash_alert #goexcharge').on('touchstart', function() {
                goPage('exchange');
            });
            
            //关闭新中奖菜单
            $(".c-close-a").on("click", function() {
                $("#no-prize").css("display","none");
                $("#no-chance").css("display","none");
                $("#get-jindou").css("display","none");
                $("#how-pay").css("display","none");
                $("#myPrize").css("display","none");
                $(".bindPhone").css("display","none");
                $("#rule").css("display","none");
                $(".tishi").css("display","none");
                $(".js_dialog").css("display","none");
                $("#sharediv").css("display","none");
            });
            

        });

        window.onload = function() {
            drawWheelCanvas(prizeList, prizeList.length);//渲染转盘
        };

       
        
         /*****************************************展示中奖记录********************************************/
        /*查询并展示中奖记录 */
         function myPrize(){
       		if(!isUser){
       			$(".bindPhone").css("display","block");
           	}else{
           		$("#box").css("display","none");
            	$("#record").css("display","block");
            	$.ajax({
            		type : "post",
    				url : "${ctx}/tjdzpqrqm/receiveinfos.json",
    				data : "byd="+encodeURIComponent(localStorage.getItem("byd"))+"&activityId="+encodeURIComponent(activityId)+"&start="+startIndex,
    				success : function(resp) {
    					startIndex += resp.datas.length;
    					var li="";
    					for(var i = 0; i< resp.datas.length; i++){
    						li+="<li><p>"+resp.datas[i].createTime+"</p><p>"+resp.datas[i].name+"</p></li>";
    					}
    					$(".scroller ul").append(li);
    				}
            	});
           	}
        	/* 中奖记录内容的滚动 */
    		$("#wrapper").on("touchstart", function(e) {
    		  
    		    startX = e.originalEvent.changedTouches[0].pageX,
    		    startY = e.originalEvent.changedTouches[0].pageY;
    		});
    		$("#wrapper").on("touchmove", function(e) {
    		   
    		    moveEndX = e.originalEvent.changedTouches[0].pageX,
    		    moveEndY = e.originalEvent.changedTouches[0].pageY,
    		    X = moveEndX - startX,
    		    Y = moveEndY - startY;
    		   
    		});
    		$("#wrapper").on("touchend", function(e) {
    		    
    		    moveEndX = e.originalEvent.changedTouches[0].pageX,
    		    moveEndY = e.originalEvent.changedTouches[0].pageY,
    		    X = moveEndX - startX,
    		    Y = moveEndY - startY;
    		    if ( Y < -50 ) {
    		    	pullUpAction();
    		    	
    		    }
    		});
    		function pullUpAction(){
    			//在这个发送ajax请求
    			setTimeout(function(){
    				$.ajax({
    	        		type : "post",
    					url : "${ctx}/tjdzpqrqm/receiveinfos.json",
    					data : "byd="+encodeURIComponent(localStorage.getItem("byd"))+"&activityId="+encodeURIComponent(activityId)+"&start="+startIndex,
    					success : function(resp) {
    						startIndex += resp.datas.length;
    						var li="";
    						for(var i = 0; i< resp.datas.length; i++){
    							li+="<li><p>"+resp.datas[i].createTime+"</p><p>"+resp.datas[i].name+"</p></li>";
    						}
    						$(".scroller ul").append(li);
    					}
    	        	});
    			
    			},1000);
    		}
    		
    	    
    		
         };
         
         /**关闭中奖记录**/                
        function hideMyPrize(){
        	$("#box").css("display","block");
        	$("#record").css("display","none");
         }
         
        /*****************************************活动规则********************************************/
        /**展示活动规则 **/
        function activityRules(){
        	if(!isUser){
    			$(".bindPhone").css("display","block");
        	}else{
        		 $("#rule").show();
                 $("#box").hide();
        	}
        	
             /* 显示全部 */
             $(".rule a").on('click',function(){
            	 
         		$(".rule").find($("div")).show();
         		$(this).hide();
         	});
        }
        /**关闭活动规则 **/
        function hideTitleBar(){
        	 $("#rule").hide();
             $("#box").show();
        }
         
        /*****************************************抽奖********************************************/
       
        
        function play() {
            var loading = weui.loading('loading', { className : 'loading' }); //loading
            
            $.ajax({
                type : "POST",
                url : "${ctx}/tjdzpqrqm/play.json",
                data : "activityId="+encodeURIComponent(activityId)+"&byd="+encodeURIComponent(localStorage.getItem("byd"))+"&id="+encodeURIComponent(localStorage.getItem("userId"))+"&r=" + Math.random(),
                success : function(resp) {
                    loading.hide();
                    if (resp.msg && resp.msg != '') {
                        weui.alert(resp.msg);
                        return;
              		}
                    buytimes = resp.buytimes;
					$(".buytime").html(buytimes);
                    turnWheel.bRotate = true;
                    if (resp.relt > 0) {
                        for (var i = 0; i < prizeList.length; i++) {
                            if (prizeList[i].id == resp.relt) {
                                // 开始抽奖
                                detailId = prizeList[i].id;
                                rotateFunc(i, prizeList[i].name);
                                break;
                            }
                        }
                    }else{
                    	weui.alert("抽奖失败！");
                    }
                },
                error : function(data) {
                    loading.hide();
                    alert("网络错误，请检查您的网络设置！");
                }
            });
        }
        
        //旋转转盘 item:奖品序号，从0开始的; txt：提示语 ,count 奖品的总数量;
        var rotateFunc = function(item, tip) {
            // 应该旋转的角度，旋转插件角度参数是角度制。
            var baseAngle = 360 / count;
            // 旋转角度 == 270°（当前第一个角度和指针位置的偏移量） - 奖品的位置 * 每块所占的角度 - 每块所占的角度的一半(指针指向区域的中间)
            angles = 360 * 3 / 4 - (item * baseAngle) - baseAngle / 2; // 因为第一个奖品是从0°开始的，即水平向右方向
            $('#wheelCanvas').stopRotate();
            // 注意，jqueryrotate 插件传递的角度不是弧度制。
            // 哪个标签调用方法，旋转哪个控件
            $('#wheelCanvas').rotate(
                    {
                        angle : 0,
                        animateTo : angles + 360 * 5, // 这里多旋转了5圈，圈数越多，转的越快
                        duration : 8000,
                        callback : function() { // 回调方法
                            if (prizeList[item].money && prizeList[item].money > 0) {
                                $("#huode").html("恭喜您,本次抽奖获得<br><a style='color:#ffb854'>"+prizeList[item].name);
                                $(".bgblack").css("display","block");
                                url ="/mycenter/myingot.do?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&ghbbs=1";
                            }else if(prizeList[item].productId && prizeList[item].productId > 0){
                           	    $("#huode").html("恭喜您,本次抽奖获得<a style='color:#ffb854'>"+prizeList[item].name);
                                $(".bgblack").css("display","block");
                                url ="/mycenter/myprize.do?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&ghbbs=1";
                            }else {
                            	weui.alert("很遗憾，您本次未中奖。");
                            }
                            turnWheel.bRotate = !turnWheel.bRotate;
                        }
                       
                    });
        };

        /*
         * 渲染转盘
         * */
        function drawWheelCanvas(data, times) {
            // 获取canvas画板，相当于layer？？
            var canvas = document.getElementById("wheelCanvas");
            //    var canvas = ($("#wheelCanvas")).get()[0]; // 注意，jQuery获取的是包装过的对象，不是DOM对象,可以进行转换

            // 计算每块占的角度，弧度制
            var baseAngle = Math.PI * 2 / times;
            // 获取上下文
            var ctx = canvas.getContext("2d");

            var canvasW = canvas.width; // 画板的高度
            var canvasH = canvas.height; // 画板的宽度
            //在给定矩形内清空一个矩形
            ctx.clearRect(0, 0, canvasW, canvasH);
            //strokeStyle 绘制颜色
            ctx.strokeStyle = "#000"; // 红色
            //font 画布上文本内容的当前字体属性
            //ctx.font = '16px Microsoft YaHei';
              ctx.font = '20px Microsoft YaHei';
            // 注意，开始画的位置是从0°角的位置开始画的。也就是水平向右的方向。
            // 画具体内容
            for (var index = 0; index < times; index++) {
                // 当前的角度turnWheel.startAngle
                var angle = turnWheel.startAngle + index * baseAngle;
                // 填充颜色
                ctx.fillStyle = data[index].bgcolor;

                // 开始画内容
                // ---------基本的背景颜色----------
                ctx.beginPath();
                /*
                 * 画圆弧，和IOS的Quartz2D类似
                 * context.arc(x,y,r,sAngle,eAngle,counterclockwise);
                 * x :圆的中心点x
                 * y :圆的中心点x
                 * sAngle,eAngle :起始角度、结束角度
                 * counterclockwise : 绘制方向,可选，False = 顺时针，true = 逆时针
                 * */
                ctx.arc(canvasW * 0.5, canvasH * 0.5, turnWheel.outsideRadius,
                        angle, angle + baseAngle, false);
                ctx.arc(canvasW * 0.5, canvasH * 0.5, turnWheel.insideRadius,
                        angle + baseAngle, angle, true);
                ctx.stroke();
                ctx.fill();
                //保存画布的状态，和图形上下文栈类似，后面可以Restore还原状态（坐标还原为当前的0，0），
                ctx.save();

                /*----绘制奖品内容----重点----*/
                // 红色字体
                ctx.fillStyle = data[index].color;//"#ff2c09";
                var rewardName = data[index].name;
                var line_height =20;
                // translate方法重新映射画布上的 (0,0) 位置
                // context.translate(x,y);
                // 见PPT图片，
                var translateX = canvasW * 0.5
                        + Math.cos(angle + baseAngle / 2)
                        * turnWheel.textRadius;
                var translateY = canvasH * 0.5
                        + Math.sin(angle + baseAngle / 2)
                        * turnWheel.textRadius;
                ctx.translate(translateX, translateY);

                // rotate方法旋转当前的绘图，因为文字适合当前扇形中心线垂直的！
                // angle，当前扇形自身旋转的角度 +  baseAngle / 2 中心线多旋转的角度  + 垂直的角度90°
                ctx.rotate(angle + baseAngle / 2 + Math.PI / 2);

                /** 下面代码根据奖品类型、奖品名称长度渲染不同效果，如字体、颜色、图片效果。(具体根据实际情况改变) **/
                // canvas 的 measureText() 方法返回包含一个对象，该对象包含以像素计的指定字体宽度。
                // fillText() 方法在画布上绘制填色的文本。文本的默认颜色是黑色. fillStyle 属性以另一种颜色/渐变来渲染文本
                /*
                 * context.fillText(text,x,y,maxWidth);
                 * 注意！！！y是文字的最底部的值，并不是top的值！！！
                 *
                 *
                 * */
                if (rewardName.indexOf("积分") >= 0) {
                    ctx.fillText(rewardName, -ctx.measureText(rewardName).width / 2, 0);
                    ctx.fillText(index * 100 + '积分', -ctx.measureText(rewardName).width / 3, 40);
                   

                } else if (rewardName.indexOf("积分") == -1 && rewardName.length > 8) {//奖品名称长度超过一定范围
                	
                    rewardName = rewardName.substring(0, 8) + "||" + rewardName.substring(8);
                    var rewardNames = rewardName.split("||");
                    
                    for (var j = 0; j < rewardNames.length; j++) {                   	
                        ctx.fillText(rewardNames[j], -ctx.measureText(rewardNames[j]).width / 2, j * line_height);

                    }
                }else if(rewardName.indexOf("积分") == -1 && rewardName == "谢谢参与!"){
                	/* rewardName = rewardName.substring(0, 2) + "||" + rewardName.substring(2);
                    var rewardNames = rewardName.split("||");
                    
                    for (var j = 0; j < rewardNames.length; j++) {                   	
                        ctx.fillText(rewardNames[j], -ctx.measureText(rewardNames[j]).width / 2, j * 10);

                    } */
                    ctx.fillText(rewardName, -ctx.measureText(rewardName).width / 2, 40)
                    
                }else if(rewardName.indexOf("积分") == -1 && rewardName == "10元话费"){
                	ctx.fillText(rewardName, -ctx.measureText(rewardName).width / 2, 40)
                	
                }else if(rewardName.indexOf("积分") == -1 && rewardName == "50元京东E卡"){
                	
                	ctx.fillText(rewardName, -ctx.measureText(rewardName).width / 2, 40)
                }else {
                    //在画布上绘制填色的文本。文本的默认颜色是黑色
                    ctx.fillText(rewardName, -ctx.measureText(rewardName).width / 2, 50);

                }

                //添加对应图标
                      /* var imgPrize = new Image();
                      imgPrize.src = "../../../assets/images/dzpimages/1.png"; */
                imgPrize = data[index].img;
                
                //         imgPrize.onload=functi.left imgon(){
                //             ctx.drawImage(imgPrize,-30,10,65,43);
                //          console.log(index + "    "  + imgPrize.src)
                //         };
                ctx.drawImage(imgPrize, -35, -20, 55, 38);//-30, 10, 65, 43
                //         console.log(index + "    "  + imgPrize.src);

                //还原画板的状态到上一个save()状态之前
                ctx.restore();
                /*----绘制奖品结束----*/

            }
        }
        
        /*****************************************分享********************************************/
          //分享；
//         $(".share div").on("click",function(){
// 			if(attr == "attr-c"){
// // 				toShare('“天津惠幸运大转盘”转起来！', '使用建行手机银行做交易，抽大奖！', 
// // 	            		encodeURIComponent('http://tianjin.boyaunite.com/jsp/dial/dialShare.jsp'), 'http://tianjin.boyaunite.com/assets/images/dzp.jpg');
// 				toShare('“天津惠幸运大转盘”转起来！', '使用建行手机银行做交易，抽大奖！', 
// 	            		encodeURIComponent('http://192.168.3.189:8080/tjpt/jsp/dial/dialShare.jsp'), 'http://tianjin.boyaunite.com/assets/images/dzp.jpg');
	   
// 			}else if(attr == "attr-b" || attr == "attr-a"){
// 	         	share();	
// 			}
//         });
//     	function share(){
        	
//     		if(!isUser){
//     			$(".bindPhone").css("display","block");
//           	}else{
//        			$.ajax({
//          			type : "POST",
//                      url : "${ctx}/tjdzpqrqm/resendrelay.json",
//                      data : "activityId=" + encodeURIComponent(activityId) + "&detailId=" + detailId + "&byd=" +encodeURIComponent(localStorage.getItem("byd"))+"&userId="+encodeURIComponent(localStorage.getItem("userId")),
//                      success : function(resp) {
//                      		$(".sharetime").html("1/1");
//                      		if(resp.msg == ""){
//                      			$("#sharediv").show();
//                      			url ="/mycenter/myingot.do?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&ghbbs=1";
//                     		}
//                      }
//          		});
//        			$(".sharetime").html("1/1");
//       			checkVersion();
//                	onThisClick();
//           	}
//         }
//     	function onThisClick() {
//     	    var dict = [];
//     	    dict["scheme"] = "ccbwebapi";    //iOS调用Native通用的scheme参数，不同的功能调用的参数不同，需按约定传值
//     	    dict["operation"] = "webshare";  //iOS调用Native通用的operation参数，不同的功能调用的参数不同，需按约定传值
//     	    dict["title"] = "天津惠幸运大转盘转起来！";         //分享标题，由商户拟定
//     	    dict["description"]= "用建行手机银行做交易，抽大奖！"; //分享内容，由商户拟定
// //     	    dict["url"]= "http://zhpt.boyaunite.com/wei/tuan/"+duser.uxd+".do"; //分享链接，由商户拟定
// //     	    dict["url"]= "http://ccb.mangezi.com/s13201/p19153/details!000167058dacd82d"; //分享链接，由商户拟定
// 			dict["url"]= "http://ccb.mangezi.com/s13201/p19153/details!0001683afcf7885e"; //分享链接，由商户拟定
//     	    dict["imageurl"] ="http://tianjin.boyaunite.com/assets/images/dzp.jpg"; //分享图片的图片链接，由商户拟定    图片应小于32KB
//     	    callNative(dict);
//     	}

//     	function callNative(dict) {
//     	    var para = makeParas(dict);
//     	     //alert(para);
//     	    executeCallIframe(dict["scheme"]+"://"+ dict["operation"]+"?"+para)
//     	}

//     	var iframe = null;
//     	function executeCallIframe(url) {
// //     	    alert("url======="+url);
//     		if(iframe == null) {
//     	        iframe = document.createElement("IFRAME");
//     	        iframe.style.display = "none";
//     	        document.body.appendChild(iframe);
//     	    }
//     	    iframe.setAttribute("src", url);
//     	}

//     	function makeParas(dict) {
//     	    var para = "";
//     	    for (var key in dict){
//     	        if( key != "scheme" && key != "operation"){
//     	            para = para + key+"="+dict[key]+"&";
//     	        }
//     	    }
//     	    para=para.substr(0,para.length-1);
//     	    return para;
//     	}

//     	function checkVersion(){
//     	    var dict = [];
//     	    dict["scheme"] = "ccbwebapi";
//     	    dict["operation"] = "ccbversion";
//     	    dict["callback"] = "demoCallback";
//     	    callNative(dict);
//     	}

//     	function demoCallback(success,resultDic){
// //     		alert(4444);
//     	    if(success){
//     	        //获取客户端版本号成功后的处理逻辑。请商户在此添加版本号控制逻辑。（暂时用消息提示举例）
// //     	    	$.ajax({
// //     				type: "POST",
// //     				url: "${ctx}/pt/share.json",
// //     				data: "bud="+duser.bud+"&lgt="+duser.lgt+"&uxd="+duser.uxd+"&o=&t=2&r="+Math.random(),
// //     				success: function(resp){
    					
// //     				},
// //     				error:function(er){
// //     					console.log(er);
// //     				}
// //     	    	});
//     	    }else{
//     	        //获取客户端版本号失败后的处理逻辑。请商户在此添加版本号控制逻辑。（暂时用消息提示举例）
//     	        //alert(resultDic["errorMsg"]);
//     	     }
    	
//     	}

    	/*****************************************跳转********************************************/
    	//我的奖品
    	function getmyprize(){
    		window.location.href ="${ctx}/mycenter/myprize.do?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&ghbbs=1";
    	}
    	//津元宝明细
    	function getIngotlist(){
    		window.location.href = "${ctx}/mycenter/myingot.do?userId="+encodeURIComponent(localStorage.getItem("userId"))+"&ghbbs=1";
    	}
    	//查看领取
    	$(".alert_closes").click(function(){
    		window.location.href = "${ctx}"+url;
    	});
    	
		//查看分享的津元宝
		$(".findjybbtn").click(function(){
			window.location.href = "${ctx}"+url;
		});
    	
    	$(function () { 
    	  var isPageHide = false; 
    	  window.addEventListener('pageshow', function () { 
    	    if (isPageHide) { 
    	      window.location.reload(); 
    	    } 
    	  }); 
    	  window.addEventListener('pagehide', function () { 
    	    isPageHide = true; 
    	  }); 
    	});
    </script>
</body>
</html>