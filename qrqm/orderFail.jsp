<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>订购失败</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no, email=no" />
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css" />
<link rel="stylesheet" href="${stax}/assets/css/common.css" />
<style type="text/css">
p {
	font-size: .6rem;
}

.c-imagetag {
	top: .8rem;
}

.picTxtList .c-list-left-div {
	width: 14rem;
}

.c-title-right {
	font-size: 14px;
	line-height: 1.8;
	float: right;
	margin-right: .6rem;
}

.weui-icon_msg {
	font-size: 45px;
	color: #09b6f2;
}

.c-leftimg-rightall .icon-box__title {
	color: #faa519;
	font-size: .8rem;
}

.icon-box {
	justify-content: center;
	margin-bottom: 15px;
	padding-top: 10px;
	padding-bottom: 3rem;
	display: -webkit-box;
	display: -webkit-flex;
	display: flex;
	-webkit-box-align: center;
	-webkit-align-items: center;
	align-items: center;
}

.c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd {
	width: 4rem;
	height: 4rem;
}

.weui-navbar__item.weui-bar__item_on {
	background: #09b6f2;
	color: #fff;
}

.c-p-l {
	float: left;
	display: inline-block;
	width: 3rem;
}

.c-p-r {
	float: right;
	display: inline-block;
	width: 11rem;
	text-align: right;
}

.weui-media-box {
	clear: both;
	height: 3rem;
}

.weui-media-box {
	padding-bottom: 5px;
}

.c-m-b-10 {
	margin-bottom: 1rem;
}

.weui-panel__bd {
	position: relative;
}

.c-t-name {
	position: absolute;
	top: -.9rem;
	left: 0;
	color: #09b6f2;
	font-size: .6rem;
	padding-left: 15px;
}

.c-content {
	background: #eee;
	padding-bottom: 60px
}

.c-tishi2 {
	position: absolute;
	bottom: .5rem;
	left: 10%;
	font-size: .6rem;
	width: 80%;
	text-align: left;
	margin: 0 auto;
	text-indent: 1rem;
}

.c-box {
	display: flex;
	padding: .5rem;
}

.c-box .aaa {
	background: url(${stax}/assets/images/goon.jpg) no-repeat;
	background-size: 100%;
	width: 100%;
	height: 200px;
	text-align: center;
	padding-top: 1rem;
}

.c-box span {
	color: #0066b3;
	font-size: 1.5rem;
}

.c-box p {
	font-size: 1rem;
}

.c-box .c-btn {
	border: 1px solid #0066b3;
	color: #0066b3;
	font-size: .7rem;
	border-radius: 1rem;
	width: 4.4rem;
	height: 1.4rem;
	line-height: 1.4rem;
	vertical-align: middle;
	display: inline-block;
	margin-top: .4rem;
}
</style>
</head>
<body>

</body>
<div class="container" style="background: #fff;">
	<div class="titleBar">
		<div class="titleBar-back" onclick="toHome()">
			<img src="${stax}/assets/images/history.png" />&nbsp;返回
		</div>
		<div class="titleBar-text am-text-truncate">专属活动</div>
	<!-- 	<div class="titleBar-close">关闭</div> -->
	</div>


	<!-- 列表内容 -->
	<div class="c-content" style="background: #fff;">
		<!-- 充值失败 -->
		<div class="weui-panel__bd c-leftimg-rightall c-m-b-10 c-p-b-10">

			<div class="icon-box">
				<img src="${stax}/assets/images/nol.jpg" alt=""
					style="width: 1.8rem; height: 1.8rem;">

				<div class="c-tishi2" style="color: #fc2828;">
					订购失败，系统将自动恢复您参与次数， 并在24小时内将您支付的货款原路退回至支 付账户，请注意查收。</div>
			</div>
		</div>
		<div class="weui-panel__bd c-leftimg-rightall"
			style="height: 8rem; overflow: hidden;">
			<div class="c-box">
				<div class="aaa">
					<p>
						您还有<span>${homeMany}</span>次购买机会呦！
					</p>
					<div class="c-btn">继续购买</div>
				</div>
			</div>
		</div>

	</div>


</div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script type="text/javascript">
	var bid = "${bid}";
	if (bid) {
		localStorage.setItem("bid", bid);
	}
	$(".c-btn").click(function() {
		$.ajax({
			type : "GET",
			url : "${ctx}/qrqmlogin/gotoDetailsPage.json",
			data : "bid=" + encodeURIComponent(localStorage.getItem("bid")),
			success : function(resp) {
				window.location.href = "${ctx}" + resp.indexUrl;
			}
		});

	});
	
	/**按返回键**/
	function toHome(){
		$.ajax({
			type: "GET",
			url: "${ctx}/qrqmlogin/gotoDetailsPage.json",
			data: "bid="
				+ encodeURIComponent(localStorage
						.getItem("bid")),
			success: function(resp){
				window.location.href ="${ctx}"+resp.indexUrl;
			}
		});
	}
</script>
</body>
</html>