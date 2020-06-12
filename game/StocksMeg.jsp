<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class="no-js">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>金蜜蜂模拟炒股大赛</title>
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
<style>
	*{padding:0;margin:0;list-style:none;}
	html,body{width:100%;height:100%;}
	#box{width:100%;height:14.5rem;padding-top:2.32rem;background:url(${stax}/assets/images/JmfBack.jpg) no-repeat 100% 100%;background-size:100% 100%;}
	.titleBar {
		width: 100%;
		height: 0.88rem;
		line-height: 0.88rem;
		background: #08B6F2;
		font-size: 0.36rem;
		text-align: center;
		color: #fff;
		background: #08B6F2;
		position:fixed;
		top:0;
	}
	
	.titleBar-back .fa {
		font-size: 16px;
		color: #fff;
		vertical-align: baseline;
		margin-right: 5px;
	}
	
	.titleBar-back {
		color: #fff;
		font-size: 16px;
		vertical-align: middle;
		width: 60px;
		height: 44px;
		line-height: 44px;
		padding-left: .4rem;
		position: absolute;
		left: 0;
		top: 0;
		bottom: 44px;
		word-wrap: normal;
		text-overflow: ellipsis;
		white-space: nowrap;
		overflow: hidden;
		display: flex;
		align-items: center;
		justify-content: start;
	}
	
	.titleBar-back img {
		width: 0.2rem;
	}
	#box{width:100%;height:13rem;padding-top:2.44rem;background:url(${stax}/assets/images/JmfStocks.jpg) no-repeat 100% 100%;background-size:100% 100%;background-size:100% 100%;margin-top:0.88rem;}
	.times{width:5.6rem;padding:0rem 0rem;margin:auto;text-align:center;background:#CB8E53;border-radius:0.5rem;font-size:0.24rem;font-family:"FZDaHei-B02S";color:#fff;}
	.btn img{width:3.08rem;margin:auto;margin-top:3.35rem;text-align:center;}
	.btn{text-align:center;}
	.content{width:6.6rem;margin:auto;margin-top:0.55rem;position:relative;top:-0.2rem;line-height:0.8rem;}
	.conTitle div{width:50%;text-align:center;height:100%;border-radius:0.6rem;}
	.conTitle{width:5.2rem;height:0.8rem;background:#BFBFBF;font-weight:bold;display:flex;align-items:center;justify-content:space-around;font-size:0.36rem;color:#fff;border-radius:0.6rem;margin:auto;position:absolute;left:0;right:0;z-index:22;}
	.content ul , .content ol{color:#EE5232;font-size:0.3rem;text-align:center;font-weight:bold;background:#fff;padding-top:0.2rem;border-radius:0.3rem;position:absolute;left:0rem;right:0;top:0.55rem;z-index:11;}
	ul li:nth-child(even) , ol li:nth-child(even){background:#EEEEEE;}
	ul li:last-child , ol li:last-child{border-bottom-right-radius:0.3rem;border-bottom-left-radius:0.3rem;}
	ul li{width:100%;height:0.86rem;line-height:0.86rem;}
	ol li{width:100%;height:0.86rem;line-height:0.86rem;display:flex;align-items:center;justify-content:space-around;}
	.active{width:3.8rem;background:#EE5232;border-radius:0.6rem;position:absolute;left:0;z-index:-1;}
	.zhezhao{width:100%;height:100%;background:rgba(0,0,0,0.4);position:fixed;top:0;z-index:111;display:none;}
	.payTishi{width:76%;padding:5% 2%;height:3rem;position:fixed;top:4rem;background:#fff;z-index:112;left:0;right:0;margin:auto;border-radius:0.1rem;display:none;}
	.weui-icon-cancel{position:absolute;top:-0.6rem;right:-0.1rem;font-size:.6rem;color:#fff;}
	.payTishi P{font-size:0.32rem;text-align:center;margin-top:0.3rem;}
	.payTishi .button{display:flex;align-items:center;justify-content:space-around;margin-top:0.5rem;position:absolute;left:0;right:0;bottom:0.6rem;}
	.payTishi .button .cancel{width:2.1rem;height:0.64rem;background:#666;border:0;font-size:0.3rem;color:#fff;border-radius:0.1rem;}
	.payTishi .button .confirm{width:2.1rem;height:0.64rem;background:#EF5233;border:0;font-size:0.3rem;color:#fff;border-radius:0.1rem;}
	.weui-toast{font-size:18px;}
</style>
</head>
<body>
	<div class="titleBar">
		<div class="titleBar-back" onclick="toHome()">
			<img src="${stax}/assets/images/history.png" />&nbsp;返回
		</div>
		<div class="titleBar-text am-text-truncate">首页</div>
	</div>
	<div id="box">
		<div class="times">
			<p>比赛时间：2019年7月10日-2019年7月14日</p>
			<p>入金时间：2019年7月15日-2019年8月9日</p>
		</div>
		<div class="btn">
			<img src="${stax}/assets/images/JmfBtn.png" />
		</div>
		<div class="content">
			<div class="conTitle">	
				<div class="active"></div>		
				<div>入金规则</div>
				<div>入金记录</div>
			</div>
			<ul>
				<li>第1次入金，入金金额为10万</li>
				<li>第2次入金，入金金额为20万</li>
				<li>第3次入金，入金金额为30万</li>
				<li>第4次入金，入金金额为30万</li>
			</ul>
			
			<ol style="display:none;">
<!-- 				<li><span>1</span><span>2019.02.18</span><span>￥10,000</span></li> -->
				<li>无</li>
				<li>无</li>
				<li>无</li>
				<li>无</li>
			</ol>
		</div>
	</div>
	
	<!-- 提示框 -->
	<div class="zhezhao"></div>
	<div class="payTishi">
		<i class="weui-icon-cancel"></i>
		<p>亲，每人最多允许入金四次哟，请准备参赛吧~</p>
		<div class="button">
			<button class="cancel">取消</button>
			<button class="confirm">确定</button>
		</div>
	</div>
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/rem.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script>
		
	$(function(){
		
		/* 关闭弹窗 */
		$(".weui-icon-cancel , .cancel").click(function(){
			$(".payTishi , .zhezhao").hide();
		})
		
		
		$(".conTitle div").click(function(){
			if($(this).index() == 1){
				$(".active").animate({"left":"0"},300);
				$("ul").show();
				$("ol").hide();
			}else{
// 				if($("ol").is(':hidden')){
// 					getInfo();
// 				}
				$(".active").animate({"left":"2.6rem"},300);
				$("ul").hide();
				$("ol").show();
			}
		})
		
		getInfo();
	});
		
	function getInfo(){
		$.ajax({
			type : "GET",
			url : "${ctx}/stock/list.json",
			data : "uid="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
			success : function(resp) {
				var times = 0;
				if (resp.data && resp.data.length > 0) {
					times = resp.data.length;
					$("ol").html('');
					for(var i =0; i<resp.data.length; i++){
						$("ol").append('<li><span>'+resp.data[i].ind+'</span><span>'+resp.data[i].date+'</span><span>'+resp.data[i].money+'</span></li>');
					}
					for(var j=resp.data.length; j<4; j++){
						$("ol").append('<li>无</li>');
					}
				}
				
				if(times === 0){
					$(".payTishi p").html('亲，体验“金蜜蜂”模拟炒股，第一次 支付1元即可入金10万（支付金额会 实时退回至您的支付账户呦）');
				} else if(times === 1){
					$(".payTishi p").html('亲，体验“金蜜蜂”模拟炒股，第二次 支付1元即可入金20万（支付金额会 实时退回至您的支付账户呦）');
				} else if(times === 2){
					$(".payTishi p").html('亲，体验“金蜜蜂”模拟炒股，第三次 支付1元即可入金30万（支付金额会 实时退回至您的支付账户呦）');
				} else if(times === 3){
					$(".payTishi p").html('亲，体验“金蜜蜂”模拟炒股，第四次 支付1元即可入金30万（支付金额会 实时退回至您的支付账户呦）');
				} else if(times === 4){
					$(".payTishi p").html('亲，每人最多允许入金四次哟，请准备参赛吧~');
				}
				$(".btn").click(function(){
					$(".payTishi , .zhezhao").show();
				})
				
				/* 确定支付 */
				$(".confirm").click(function(){
					$(".payTishi , .zhezhao").hide();
					if(times < 4) goPay();
				})

			},
			error : function(er) {
				console.log(er);
			}
		});
	}
	
	function goPay(){
		var loading = weui.loading('正在加载...');	//loading
		$.ajax({
			type: "POST",
			url: "${ctx}/stock/addmoney.json",
			data: "uid="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
			timeout : 13000, //超时时间设置，单位毫秒
			success: function(resp){
				loading.hide();
				if(resp.msg && resp.msg != ""){
					weui.alert(resp.msg);
				}else if(resp.payUrl){
					oos = resp.payUrl;
					MBS_DIRECT_PAY();
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
    	});
	}
	
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
	var oos = "";
	
	/**返回首页**/
  	function toHome(){
  		window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
  	}
	</script>
</body>
</html>