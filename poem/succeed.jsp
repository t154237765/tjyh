<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>闯关成功</title>
<meta
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0"
	name="viewport" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black" />
<meta name="format-detection" content="telephone=no, email=no" />
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css" />
<link rel="stylesheet" href="${stax}/assets/css/common.css" />
<style type="text/css">
html {
	background: #f6f6f3;
}

.pk-wrapper {
	padding-top: 6rem;
}

.pk-wrapper h1 {
	font-weight: 600;
	font-size: 1.1rem;
}

.pk-wrapper h1 span {
	font-weight: 700;
	font-size: 1.2rem;
}

.pk-wrapper h3 {
	font-size: .8rem;
}

.button-sp-area {
	width: 70%;
	margin-top: 1rem;
}

.button-sp-area a {
	padding: .4rem 0;
}

.weui-dialog__bd:first-child {
	padding-top: 1rem;
	color: #09b6f2;
}

.weui-cells_form {
	border: 0;
	color: #666;
	font-size: 14px;
	background: #eee;
}

.weui-cells_form .textarea {
	background: none;
}

.weui-textarea-counter {
	display: none;
}

.weui-textarea {
	background: transparent;
}

.weui-cells:after,.weui-media-box:before {
	border: 0;
}

.container {
	background: url(${stax}/assets/images/3-6bg.jpg) no-repeat 0 44px #f6f6f3;
	background-size: contain;
}

.getPrize {
	background: #fff;
	margin: 0 1rem;
	padding-top: 1rem;
	margin-top: 1rem;
}

.weui-media-box_appmsg .weui-media-box__hd {
	width: 2.4rem;
	height: 2.4rem;
}

.weui-media-box_appmsg {
	padding-left: 2rem;
}

.weui-media-box_appmsg .weui-media-box__thumb {
	width: 2.4rem;
	height: 2.4rem;
	vertical-align: middle;
}
.btn{position: absolute;top: 0;left: 0;right: 0;bottom: 0;width: 100%;opacity: 0;}
</style>
</head>
<body>

	<div class="container">
		<div class="titleBar">
			<div class="titleBar-back" onclick="shutdown();">
				<img src="${stax}/assets/images/history.png" />&nbsp;返回
			</div>
			<div class="titleBar-text am-text-truncate">闯关成功</div>
			<!-- <div class="titleBar-close" onclick="alert('shutdown');">关闭</div> -->
		</div>
		<div class="titleBar-close">关闭</div>

		<div class="c-content">
			<div class="pk-wrapper">
				<h1>
					恭喜您成功通关“诗词<span>大会</span>”
				</h1>

				<div class="getPrize" id="dataArea">

					<c:forEach items="${myPrizes}" var="prize">
						<div href="javascript:void(0);"
							class="weui-media-box weui-media-box_appmsg c-m-b-10">
							<div class="weui-media-box__hd">
								<img class="weui-media-box__thumb" src="${prize.picUrl}" alt="">
							</div>
							<div class="weui-media-box__bd c-t-a-l">
								<h4 class="weui-media-box__title">${prize.name}</h4>
							</div>
						</div>
					</c:forEach>

					<%-- 
                    <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-m-b-10">
                        <div class="weui-media-box__hd">
                            <img class="weui-media-box__thumb" src="${stax}/assets/images/3-5-3.png" alt="">
                        </div>
                        <div class="weui-media-box__bd c-t-a-l">
                            <h4 class="weui-media-box__title">爱奇艺会员一周</h4>
                        </div>
                    </div> --%>
				</div>

				<div class="js_dialog" id="iosDialog1"
					style="opacity: 1; display: none;">
					<div class="weui-mask"></div>
					<div class="weui-dialog">
						<div class="weui-dialog__bd c-c-b c-f-s-16">
							复制如下信息分享到朋友圈/微信好友邀请他们一起参加吧
							<p style="color:red;margin-top:5px;font-size:14px;">(点击下方文本框内文字即可复制)</p>
							<div class="weui-cells weui-cells_form">
								<div class="weui-cell">
									<div class="weui-cell__bd">
										<textarea class="weui-textarea" placeholder="请输入文本" rows="3"
											id="shareTxt">
                                
                                </textarea>
                                <button class="btn" data-clipboard-target="#shareTxt"></button>
										<div class="weui-textarea-counter">
											<span>0</span>/200
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="weui-dialog__ft">
							<a href="javascript:;"
								class="weui-dialog__btn weui-dialog__btn_primary c-c-6" onclick="shut();">取消</a>
						</div>
					</div>
				</div>


				<div class="button-sp-area">
					<a href="javascript:;" class="weui-btn weui-btn_plain-primary"
						style="line-height: 1.4" onclick="share();">邀请好友参加</a>
				</div>
			</div>
		</div>

	</div>
	<!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=13"></script>
<script src="${stax}/assets/js/clipboard.js"></script>
<script>
	var indexUrl = localStorage.getItem("indexUrl"); //返回首页的URL

	$(function() {
		$("#pkbg").width(window.innerWidth);
		$("#pkbg").height(window.innerHeight - 44);

		//alert("${param.pkerId}");

		//$('#shareTxt').val('建设银行诗词大会，答题抽奖得好礼，点击'+
		//		webctx+'/poem/heActivity.do查看详情'); 
		
		/*弹出框1*/
		/* $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
		    $(this).parents('.js_dialog').fadeOut(200);
		}); */
		
	})

	function share() {
		$("#iosDialog1").css("display","block");
		// location.href = "${ctx}/poem/activityDel.do"; 
	}
	
	function shut(){
		$("#iosDialog1").css("display","none");
	}

	//返回按钮单击事件
	function shutdown() {		
		window.location.href = '${ctx}' + indexUrl;
	}
	
	
	/* function oCopy(obj){
	        obj.select();
	        document.execCommand("Copy");
	        obj.blur();
	        weui.toast("复制成功!",1000);
	       setTimeout(function(){$("#iosDialog1").hide();},1000) 
	    } */
	    var clipboard = new Clipboard('.btn');

	    clipboard.on('success', function(e) {
	        console.info('Action:', e.action);
	        console.info('Text:', e.text);
	        console.info('Trigger:', e.trigger);
	        weui.toast("复制成功!",1000);
	        e.clearSelection();
	    });

	    clipboard.on('error', function(e) {
	        alert('请选择“拷贝”进行复制!')
	    });
</script>
</body>
</html>