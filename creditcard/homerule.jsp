<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>活动介绍</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no, email=no" />
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css" />
<link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css" />
<link rel="stylesheet" href="${stax}/assets/css/common.css" />
<link rel="stylesheet" href="${stax}/assets/css/animate.min.css" />
<style type="text/css">
.weui-panel__bd {
	background: none;
}

.weui-media-box {
	background: #fff;
	align-items: flex-start;
}

.c-leftimg-rightall .weui-media-box__desc {
	width: 9rem;
}

.c-leftimg-rightall .c-c-r {
	font-size: .8rem
}

.c-change {
	position: absolute;
	left: 15px;
	bottom: .3rem;
	width: 100%;
}

.c-leftimg-rightall .c-change  .c-f-r {
	width: 5.8rem;
}

.weui-form-preview__bd {
	font-size: .6rem;
	color: #333;
	width: 100%;
}

.weui-form-preview__label {
	color: #333;
}
.c-bold{
	font-weight:bold;
}
</style>
</head>
<body>
	<div class="container" style="background: #fff;">
		<div class="titleBar">
			<div class="titleBar-back" onclick="goHome();">
				<img src="${stax}/assets/images/history.png" />&nbsp;返回
			</div>
			<div class="titleBar-text am-text-truncate">活动介绍</div>
			<!-- <div class="titleBar-close">关闭</div> -->
		</div>


		<!-- 列表内容 -->
		 <div class="c-content">
            <div  id="wrapper">
                    <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea">
                        <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-m-b-10" style="font-size: .6rem;color:#333;display: block;">
                        <p style="text-align:center;font-size:0.7rem;font-weight:bold;">新卡送好礼，“100锭津元宝”送给你</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c-bold">一、活动时间：</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019年1月1日至12月31日<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c-bold">二、活动对象：</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2019年1月1日-12月31日期间，办理我行龙卡信用卡的新客户（新客户指首次申请龙卡信用卡主卡的中国大陆居民，主附卡同时申请时附属卡客户或仅申请附属卡的客户或不参加本次活动），活动期间每个客户限赠一次。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c-bold">三、活动内容：</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;活动期间，凡在我行办理龙卡信用卡的新客户，核卡后30天内完成激活且任意消费3笔，可获赠建行手机银行-悦享生活-天津惠平台内“100锭津元宝”，客户可通过“津元宝”或“津元宝+现金”形式，兑换“天津惠”平台内可兑换的全部虚拟或实物商品。活动期间每个客户限赠1次，每月限前10000名，先到先得，送完即止。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="c-bold">四、活动细则：</span><br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1. 参加活动客户的申请与消费时间均需在2019年1月1日-2019年12月31日。消费时间以建行系统的记账时间为准（北京时间）。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.津元宝的获赠名额，根据客户核卡后30天内满足任意消费3笔中最后一笔消费的建行系统记账时间，按每个自然月统计排序，即从每个月1号开始排序，每月限前10000名，先到先得。交易包含线上线下消费（退货交易不参与活动）。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.符合获赠条件30个工作日后，持卡人可登录建行手机银行，通过“悦享生活”，使用申办龙卡信用卡时在我行系统中预留的手机号登录“天津惠”，在“个人中心”查看“100锭津元宝”。同时建行将通过106980095533短信平台推送获赠通知到客户申办龙卡信用卡时在我行系统中预留的手机号上。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.天津惠平台以“手机号+验证码”形式注册用户，手机号每人每年通过“悦享生活-天津惠-个人中心”只可变更一次。如误用非申办龙卡信用卡时在我行系统中预留的手机号登录“天津惠”，变更手机号后即可查看到“津元宝”。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5. “津元宝”自客户可以领取之日起，有效期3个月，到期自动清零，客户可通过“天津惠”-“个人中心”查看“津元宝”到期时间，超时未使用视作自动放弃。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6. 活动结束60天内客户未提出异议。我行将默认为客户对活动无异议。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;7．如活动期间客户所持龙卡信用卡已销户、冻结、有逾期欠款未归还、套现，或有其他违反龙卡信用卡章程、领用协议、本活动规则或建行其他相关规定，建行有权取消其参加本次活动的资格。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8. 本活动详细办法以现场公告及建行网站（www.ccb.com/tj）公布为准，其它未尽事宜，全部依照龙卡信用卡章程、领用协议约定条款执行。了解更多资讯请关注及绑定“建行天津”官方微信。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;9．本规则未尽事宜依据中华人民共和国法律法规，金融业政策规定、中国建设银行相应业务管理办法及相关行业惯例办理。 <br>  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10．建行有权根据需要取消本活动或修订本规定（包括但不限于参加资格、活动时间及奖励方式等），并经相关途径（如我行网站、对账单、短信、报刊或各分支网点等）公告后生效。   <br>
<br/>

 
                        </div>
                        
                    </div>

            </div>
        </div>
</div>

	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/common.js"></script>
	<script type="text/javascript">
	function goHome() {
		window.location.href = "${ctx}/jsp/creditcard/index.jsp";	
	}
	</script>
</body>
</html>