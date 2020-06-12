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
<title>组织条线专业测试</title>
<link rel="stylesheet" href="${stax}/assets/css/girl/tjtest.css?v=1">
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css">
<link rel="stylesheet" href="${stax}/assets/css/common1.css?v=1">
<link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css">
<style>
@font-face{font-family:FZDHJT;src:url(${stax}/assets/fonts/fzdhjt.ttf);}
@font-face{font-family:FZHTJT;src:url(${stax}/assets/fonts/FZHTJW.TTF);}
.box {
	width: 100%;
	height:100%;
	/* height: 13.42rem; */
	background: url(${stax}/assets/images/test/bg2.png) no-repeat
		100% 100%;
	background-size: 100% 100%;
}

.container1 {
	width:6.6rem;
	height:5.55rem;
	margin: auto;
    background: url(${stax}/assets/images/test/tu.png) no-repeat 100%
		100%; 
	background-size: 100% 100%;
	margin-top: 0.5rem;
	text-align: center;
}
.container{
	width:6.6rem;
	padding-bottom: 0.3rem;
	height:7.55rem;
	margin: auto; 
	position: relative;
    background: url(${stax}/assets/images/test/tu1.png) no-repeat 100%
		100%; 
	background-size: 100% 100%;
	margin-top: 0.5rem;
	text-align: center;
}
.container .main{
	position:absolute;
	width:6.6rem;
	top:6%;
	height:6rem;
	margin-top:.5rem;
	overflow:scroll
}
.explain,.record{
	background:url(${stax}/assets/images/test/bg1.png) 
}
.cont {
	width:6.6rem;
	margin: auto;
	background: url(${stax}/assets/images/girls/festivalCont-1.png) no-repeat 100%
		100%;
	background-size:inherit;
	margin-top: 0.3rem;
	text-align: center;
	padding-top: 0.5rem;
	padding-bottom:0.5rem;
}

.container1 .start1 div,.cont .num div {
	width: 1.91rem;
	font-family:FZHTJT;
	line-height: 0.75rem;
	margin: auto;
	background: url(${stax}/assets/images/test/btn.png) no-repeat 100%
		100%;
	background-size: 100% 100%;
	font-size: 0.36rem;
	color: #683b01;
	font-weight: 900;
}
.container .start div,.cont .num div {
	width: 1.91rem;
	font-family:FZHTJT;
	line-height: 0.75rem;
	margin: auto;
	background: url(${stax}/assets/images/test/btn.png) no-repeat 100%
		100%;
	background-size: 100% 100%;
	font-size: 0.36rem;
	color: #683b01;
	font-weight: 900;
}
.answer{font-size:.4rem;margin:.4rem .6rem .6rem .4rem;text-align:center;color:#008AE5;font-weight:bold;}
.answer li div{display:flex;flex-wrap:wrap;font-size:.25rem;}
.answer ul div span{text-align:left;text-indent:.8rem;font-weight:none;font-size:.25rem;width:80%;background:#E5E5E5;margin:0.1rem auto;border-radius:.1rem}
/* .answer ul li span:hover{background:#008AE5;color:#fff;} */
 .act{background:#008AE5!important;color:#fff;}
span.ti {
    font-size: .3rem;
    margin-top: .3rem;
    text-align: left;
    display: flex;
    margin-left: .5rem;
    color:#008AE5;
    margin-right:.3rem;
}
.cont .start2 div{
	
	bottom:1.5rem;
	left:0;
	right:0;
	margin:auto;
}

.prize .title,.banner .title {
	width:3.12rem;
	text-align: center;
	height:0.7rem;
	line-height:0.7rem;
	background: url(${stax}/assets/images/girls/festivalTitle.png) no-repeat 100%
		100%;
	background-size: 100% 100%;
	font-size: 0.36rem;
	color: #F4788D;
	margin: auto;
}

.banner .title {
	margin-top: 0.3rem;
}

.swiper-button-prev {
	background-image: url(${stax}/assets/images/girls/btnLeft2.png);
}

.swiper-button-next {
	background-image: url(${stax}/assets/images/girls/btnRight2.png);
}

.weui-dialog {
	width: 82%;
	max-width: 100%;
	overflow: visible;
}
.start1{padding-top:4rem;}
.start{display:flex;}
.start {
    margin-top: -.5rem;
    width: 100%;
    left: 0;
    position: absolute;
    bottom: 10%;
}
//正在加載
  .weui-toast {
    width: 4.6rem;
    min-height: 2.6rem;
    top: 8rem;
    margin-left: -2.5rem;
}
.activeCont{
	top:5rem;
	height:5rem;
}
.activeCont .txt{
	height:3rem;
}
.weui-icon-cancel {
    color: #bdaeae;
    font-size: 22px;
}

	.title{width:6rem;font-family:"方正大黑简体";font-size:0.3rem;color:#0459b8;text-align:center;background:#fff;border-radius:0.3rem;position:absolute;margin:auto;left:0;right:0;top:2.8rem;}
</style>
</head>
<body>
	
		<div class="titleBar">
					<div class="titleBar-back" onclick="toHome()">
						<img src="${stax}/assets/images/history.png" />&nbsp;返回
					</div>
			<div class="titleBar-text am-text-truncate">组织条线专业测试</div>
		</div>
	<div class="shijian"><p class="title">答题时间：11月28早9点-12月1号24点</p></div>
	
	<div class="box">
		<div class="top">
			<!-- <div class="record" style="display:none">
			中奖记录
			</div> -->
			<div class="explain">
			活动说明
			</div>
		</div>
		
		<!-- 未答题 -->
		<div class="container1">
			<div class="start1">
				<div style="color:white">开始答题</div>
			</div>
		</div>
		<div class="container" style="display: none;">
			<div style="display:none;height:.5rem"></div>
			<div class="main" style="overflow:scroll">
				<span class="ti">选择题</span>
					<div class="answer">
						
							<ul class="answer_ul">
		<!-- 						<li><div>手机银行能否题别人进行信用卡激活？</div>
									<div><span>A:能</span>
										<span>B：不能</span>
									</div>
								</li>		-->		
							</ul>		
					</div>
				</div>		
					<div class="start">
						<div style="color:white" class="prev">上一题</div>
						<div style="color:white" class="next">下一题</div>
					</div>
		<div class="weui-loading_toast " style="display: none; "> 
       <div class="weui-mask_transparent"></div> 
        <div class="weui-toast weui-animate-fade-in"> 
            <i class="weui-loading weui-icon_toast"></i> 
          <!--   <p class="weui-toast__content">正在加载...</p>  -->
        </div> 
    	</div>
		
		</div> 
 
 	
		<!-- 进行答题 -->
		<!-- <div class="cont" style="display: none;">
			<div class="countdown" id="time"></div>
			<div class="start2">
							<p class="topic">手机银行可以替别我二高危儿岗位二工位而过温柔个人各位而高危儿个为</p> 
								<ol>
									<li><input type="radio" name="radio" value="" /> <span>为能嗡给我二高危儿</span>
									</li>
									<li><input type="radio" name="radio" value="" /> <span>违反能二网</span>
									</li>
									<li><input type="radio" name="radio" value="" /> <span>为能嗡给我二高危儿</span>									
								</ol> 
								
			</div>
			<div class="num">
				<div class="sava">提交答案</div>
			</div>
		</div> -->
		

	<!-- 活动介绍 -->
	<div class="active">
		<div class="activeCont">
			<p class="activeTitle"
				style="color: #333; font-size: 0.36rem; text-align: center; margin: 2% 0%;">活动说明</p>
			<i class="weui-icon-cancel c-login-close"></i>
			<div class="txt">
				<p>1、答题对象：天津建行内部员工</p>
				<p>2、答题时间：11月28早9点-12月1号24点</p>
				<p>3、答题细则：</p>
				<p>（1）在规定时间内完成答题即可，如果在规定时间内未完成答题的，系统将会自动提交答案；</p>
				<p>（2）答题期间如若中途退出，重新进入即可继续答题；</p>
				<p>（3）提交答案后测试结束，超过答题时间测试结束；</p>
				
			</div>
			<div class="activeBtn">我知道了</div>
		</div>
	</div>


	
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/rem.js"></script>	
	<script src="${stax}/assets/js/amazeui.swiper.min.js"></script>
	<script>
	
		var bwid = "${bwid}";
		var rem = "${rem}";
		var emsg = "${msg}";
		var wid = '';
		var qid = '';
		var oids = [];
		var isHb = false;
		
		$(function(){
			$(".answer_ul span").click(function(){
// 				console.log($(this).html())
			})
			
		})
		/* 开始答题 */
		$(".container1 .start1 div").click(function() {
			if(emsg){
				alert(emsg);
			}else{
	 			//console.log("开始答题");
	 			$(".container1").css("display","none")
				$(".container").css("display","block")
	 			
				if (bwid && bwid ) {
					//校验次数
					//加载答题数据
					//$(".cont").show();
					 getques("a"); 
				}
	
				/* 答题开始 */
				/* $(".container").hide();
				$(".cont").show(); */
			}
		})

		/* 活动说明 */
		$(".explain").click(function() {
			$(".active").show();
			$(".box").css("position", "fixed");
		});
		$(".c-login-close , .activeBtn").click(function() {
			$(".active").hide();
			$(".box").css("position", "");
		});

		//获取答题数据
		function getques(flag) {
			if (isHb) return;
			isHb = true;
			var loading = weui.loading('正在加载...');	//loading
			if(!qid) qid = "";
			var das = "&qid="+encodeURIComponent(qid);
			if(flag=="a") das += "&begin=19s";	//开始
			else if(flag=="b") das += "&upd=0";	//上一题
			else if(flag=="c") das += "&upd=1";	//下一题
			else{
				loading.hide();
				isHb = false;
				alert('数据有误018');
				return;
			}
// 			console.log(das);
			$.ajax({
				url : '${ctx}/orgtest/getques.json',
				type : 'get',
				data : 'bwid=' + encodeURIComponent(bwid) + das +'&r=' + Math.random(),
				success : function(resp) {
					loading.hide();
					isHb = false;
//  					console.log(resp);
					if (resp.msg && resp.msg != "") {
						alert(resp.msg)
						return;
					}
					if (resp.datas && resp.datas != "") {
						addData(resp.datas);
					}
				},error:function(e){
					loading.hide();
					isHb = false;
					console.log(e);
				}
			});
		}

		//加载问题和选项
		function addData(quesData) {
			//console.log(quesData)
			oids = [];
			wid = quesData.wid;
			qid = quesData.qid;
			var otyp = quesData.otyp;
			var qtyp = quesData.qtyp;	//问题类型1-单选题 2-多选题 3 判断
			if(qtyp == '1') $('.ti').html('单项选择题(共40题,每题1分)');
			if(qtyp == '2') $('.ti').html('多项选择题(共20题,每题2分,多选或漏选均不得分)');
			if(qtyp == '3') $('.ti').html('判断题(共20题,每题1分)');
			
			$('.answer_ul').empty();
			
			
			var da = '<li><div class="oul">' + quesData.qus + '</div><div class="opt">';	
			for (var i = 0; i < quesData.opts.length; i++) {			
				if(quesData.opts[i].selt){
					da += '<span data-id="'+quesData.opts[i].oid+'" class="act">'+ quesData.opts[i].opt +'</span>';
				}else{		
					da += '<span data-id="'+quesData.opts[i].oid+'">'+ quesData.opts[i].opt +'</span>';
				}
			}

			$(".prev").unbind();
			$(".next").unbind();
			//0-第一题 1-中间 2-最后一题
			if(otyp==0){
				$(".prev").css("display","none")
				$(".next").click(function(flag){
					if("1" == rem) savadata("c")
					else getques("c");
				})
			}else if(otyp==2){
				$(".prev").css("display","block")
				$(".next").html("提交答案")
				if(!"1" == rem) $(".next").html("已提交")
				$(".prev").click(function(flag){
					if("1" == rem) savadata("b")
					else getques("b");
				})
				$(".next").click(function(flag){
					if("1" == rem) savadata("e")
					else alert('您已提交过答案，请勿重复点击');
				})
			}else if(otyp==1){
				$(".prev").css("display","block")
				$(".next").css("display","block")
				$(".next").html("下一题")
				$(".prev").click(function(flag){
					if("1" == rem) savadata("b")
					else getques("b");
				})
				$(".next").click(function(flag){
					if("1" == rem) savadata("c")
					else getques("c");
				})
			}
			
			da += '</div></li>';
			$('.answer_ul').append(da);
		
			$(".opt span").unbind();
			if("1" == rem){
				$(".opt span").click(function(){
					if(qtyp==2){			
						$(this).toggleClass("act")
					}else{
						$(this).addClass("act")
						$(this).siblings("span").removeClass("act")
					}		
				})
			}
			
		}
		
		var sava =false;
		function savadata(flag) {
			
			if(sava)return;
			sava = true;
			var loading = weui.loading('正在加载...');	//loading 
			oids = [];
			
			var optsid = "";
			$(".act").each(function(){
				optsid += encodeURIComponent($(this).data("id"))+',';
			});
			if(optsid != "" && optsid.length > 0){
				optsid = optsid.substr(0, optsid.length - 1);
			}
// 			console.log(optsid);
			
			$.ajax({
				url : '${ctx}/orgtest/savaAnswer.json',
				type : 'post',
				data : 'bwid=' + encodeURIComponent(bwid) +
					'&wid=' + encodeURIComponent(wid) +
					'&qid=' + encodeURIComponent(qid) +
					'&oids=' + optsid + '&flag=' + flag +
					'&r='+ Math.random(),
				success : function(resp) {
					loading.hide();
					sava = false;
					if (resp.msg && resp.msg != "") {
						alert(resp.msg)
						return;
					}
					if(flag=="e"){
						alert("提交成功");
						rem = "0";
						$(".next").html("已提交")
					}else{
						getques(flag);
					}
				},error:function(e){
					loading.hide();
					sava = false;
					console.log(e);
				}
			});
		}
		
	    
	    function toHome(){
	    	window.history.back();
// 		    var indexUrl = localStorage.getItem("homeUrl");
// 	    	window.location.href = "${ctx}/tjhui"+indexUrl;
	    }
	    
	</script>
</body>
</html>