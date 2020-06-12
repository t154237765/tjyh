<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>老带新</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .weui-panel__bd{background:none;}
        .weui-media-box{background: #fff;align-items: flex-start;padding-bottom: 1.6rem;}
        .c-leftimg-rightall .weui-media-box__desc {width: 10rem;}
        .c-change{position: absolute;left: 15px;bottom:.8rem;width:100%;}
        .c-leftimg-rightall .c-change  .c-f-r{width:5.8rem;}
        
        .openbtn{line-height: 2.5rem;width:2.8rem;height:1.8rem;background:url(${stax}/assets/images/goldbig.jpg) no-repeat;background-size:contain;color:#b86c00;font-size: .6rem;text-align: center;vertical-align: middle;    position: absolute;bottom: 2.2rem;left: 9.3rem;}
        .c-oldprice{text-decoration:line-through;color:#aaa;margin-left:10px;}
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{height:3.5rem;}
        .weui-media-box_appmsg .weui-media-box__bd{margin-top:-.3rem;}

        .mygoldbean{font-size:.7rem;text-align:left;background:#fff;border-bottom:1px solid #ddd;clear:both;padding:.5rem 1rem;font-size:.6rem;overflow:hidden;}
        .mygoldbean h3,.mygoldbean img,.mygoldbean h4{display:inline-block;font-size:.8rem;}
        .mygoldbean img{width:1.3rem;height:1rem;}
        .c-ding-left{float:left;}
        .c-ding-right{float:right;}
        .c-ding-right div{font-size:.8rem;margin-top: .3rem;}
        p{font-size:.6rem;}
        .c-leftimg-rightall h3{padding:0;}
        .c-c-g{color:#0066b3;}

        ul{width:100%;max-height:18.1rem;overflow:auto;}
		li{width:96%;padding:4% 2%;display:flex;align-items:center;text-align:center;border-bottom:1px solid #ccc;}
		li:nth-child(1){font-size:0.64rem;}
		li p{width:33%;text-align:center;font-size:0.56rem;}
		li{font-size:0.56rem;}
		.container , #pulldown, #pullup{background:#fff;}
		.p{text-align:left;margin:2% auto;width:90%;font-size:0.5rem;color:#646464;}
		.spa{text-decoration:underline;color:blue;font-size:0.6rem;}
		.p1{text-align:center;}
		.rule{width:100%;height:100%;background:rgba(0,0,0,0.4);position:fixed;top:0;z-index:1111;display:none;}
		.rule div{width:12rem;height:15rem;background:#fff;margin:auto;margin-top:5rem;border-radius:0.1rem;padding:0.5rem;text-align:center;}
		.rule p{width:12rem;height:90%;overflow:auto;font-size:0.56rem;text-align:left;}
		.rule p span{text-align:center;display:inline-block;width:100%;}
		.rule button{border:0;width:4rem;height:1.2rem;line-height:1.2rem;border-radius:0.05rem;margin-top:0.4rem;}
    </style>
    <title></title>
</head>
<body>
    
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="goHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">我的邀请</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content" id="c-iscroll">
            <div  class="wrapper">
                <div class="Div"  style="-webkit-margin-before:0em;">
                    <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea" style="margin-top:-2rem;">
                    	<ol style="margin-top:2rem;">
                    		<li>
				        		<p>注册时间</p>
				        		<p>注册电话</p>
				        		<p>目标状态</p>
				        	</li>
                    	</ol>
                    	<ul class="dataInfo">			        	
				        	
				        </ul>
                    </div>
                </div>
                <p class="p p1"><span class="spa">活动规则</span></p>
            </div>
            
        </div>
      	
    </div>
	<div class="rule">
		<div>
			<p>
				<span>活动规则</span><br>
				1、活动时间：2019年1月-2019年12月<br>
				2、活动内容：<br />
				（1）活动期间，2019年新签约手机银行客户，注册天津惠时，可以填写邀请人手机号（注册时在注册界面填写，也可以在【个人中心】“我的邀请人”栏位补填，邀请人手机号填写后不可更改。<br>
				（2）活动期间，填写了邀请人手机号的2019年新签约手机银行客户，成为活跃客户后，可以获得5锭津元宝奖励。<br>
				（3）邀请人可以在【个人中心】“我的邀请”里，查看以您作为邀请人的天津惠注册客户（您的邀请人）明细，目标达成即可获取10锭津元宝，目标达成名单按月审核通过后，津元宝奖励发送至您的天津惠账户。<br>
					目标达成：您的被邀请人是2019年建行手机银行新签约活跃客户；<br>
					审核中：您的被邀请人尚未审核或者尚未成为建行手机银行活跃客户；<br>
					目标失败：您的邀请人不是2019年建行手机银行新签约客户。<br>
				（4）手机银行活跃客户：2019年通过手机银行成功办理至少4笔账务性交易（如转账、缴费、支付交易等）。<br>
				（5）填写邀请人手机号的天津惠注册客户（被邀请人），2019年成功领养建行“云宠物”后，邀请人与被邀请人可同时获得2锭津元宝奖励。<br>
				（6）邀请人和被邀请人，均需使用建行手机银行签约手机号注册天津惠，才能享受活动优惠。<br>
				3、活动声明：<br>
				活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。本次活动的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。<br>
			</p>
			<button>我知道了</button>
		</div>
		
	</div>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>


<script type="text/javascript">
	$(function(){
		$.ajax({
			url:'${ctx}/invitandreceive/findmyinvitinfos.json',
			type:'post',
			data:'uid='+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
			success:function(resp){
				console.log(resp);
				if(resp.datas&&resp.datas.length>0){
					var li = '';
					for(var i = 0; i < resp.datas.length; i++){
						var payNum = '';
						if(resp.datas[i].auditIngoStatus == 0){
							payNum = '<span>审核中</span>';
						}else if(resp.datas[i].auditIngoStatus == 1){
							payNum = '<span style="color:red;">目标达成</span>';
						}else if(resp.datas[i].auditIngoStatus == 2){
							payNum = '<span>目标失败</span>';
						}
						li += '<li>'+
								'<p>'+resp.datas[i].createTime+'</p>'+
								'<p>'+resp.datas[i].phone+'</p>'+
								'<p>'+payNum+'</p>'+
							  '</li>';
					}
					$(".dataInfo").append(li);
				}else{
					$(".wrapper .Div").html("<img src='${stax}/assets/images/invitation.png' style='margin:0 auto;height:4.5rem;width:5rem;margin-bottom:1rem;'><span style='font-size:.8rem;color:#999;'>暂无邀请数据~</span>").css({"paddingTop":"6rem"});
                    $(".container").css({"text-align":"center"});
                    $(".p1").css({"position":"absolute","top":"15rem","left":"0","right":"0"});
				}
			}
		});
		var timers = null;
		$("ul").scroll(function(event){
			 var scrollTop = $(this).scrollTop();    //滚动条距离顶部的高度
			 var clientHeight = $(this).height();    //当前可视的页面高度
			 if (($(this)[0].scrollTop + $(this).height() + 60) >= $(this)[0].scrollHeight) {
			        clearTimeout(timers);
			        //这里还可以用 [ 延时执行 ] 来控制是否加载 （这样就解决了 当上页的条件满足时，一下子加载多次的问题啦）
			        timers = setTimeout(function() {
			            //LoadingDataFn(); //调用执行上面的加载方法
			        }, 300);
			    }
		});
		
		$(".spa").click(function(){
			$(".rule").show();
		})
		$(".rule button").click(function(){
			$(".rule").hide();
		})
		
		
	});
	
	
    function goHome(){
//    	   window.location.href = '${ctx}/mycenter/personal.do' + (localStorage.getItem("userId") ? "?userId="+encodeURIComponent(localStorage.getItem("userId")) : "");
		gomycenter();
    }

</script>

</body>
</html>