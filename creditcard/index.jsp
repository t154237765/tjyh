<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>信用卡领取专区</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/amazeui.swiper.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/animate.min.css"/>
    <style type="text/css">
        .weui-panel__bd{background:none;}
        .weui-media-box{background: #fff;align-items: flex-start;}
        .c-leftimg-rightall .weui-media-box__desc {width: 9rem;}
        .c-leftimg-rightall .c-c-r{font-size: .8rem}
        .c-change{position: absolute;left: 15px;bottom:.3rem;width:100%;}
        .c-leftimg-rightall .c-change  .c-f-r{width:5.8rem;}
        .weui-navbar{top:44px;}
        .c-content{padding-top:53px;}
        .weui-navbar img{display: inline-block;width: 1rem;height: 1rem;}
        .weui-navbar span{height: 2rem;display: inline-block;margin-top: -.4rem;vertical-align: text-top;margin-left:.1rem;}
        .weui-media-box_appmsg .weui-media-box__bd{margin-top:1rem;}
        #dataArea .c-m-b-10{border-bottom: 5px solid #f1f1f1;margin-bottom:0;}
        .container{background:#fff;}
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{height:3.7rem;}
        .hot_list{width:100%;padding:0% 0%;display:flex;align-items:center;flex-wrap:wrap;}
        .hot_list div{width:50%;}
        .hot_list div img{width:100%;}
        
        /* 规则弹窗 */
        .rules{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.4);z-index:33333;}
        .rules h4{font-size:18px;width:90%;text-align:center;margin: auto;}
        .rules .cont{padding-top: .2rem;width:80%;background:#fff;margin:auto;margin-top:6.4rem;height:50%;border-radius:0.2rem;padding-bottom:0.6rem;}
    	.rules .rules-tishi p{font-size:15px;width:90%;text-align:left;padding:0% 5%;text-indent: 1.2rem;}
    	.rules .cancel1{width:5.5rem;height:1.5rem;line-height:1.5rem;border-radius:0.1rem;text-align:center;font-size:0.76rem;background:#CE3633;color:#fff;margin:auto;padding-bottom:0;}
   		.rules .cont_top{height:90%;overflow:scroll;}
  		.rules .button1{margin-top: .3rem;} 
   		
   		
    </style>
</head>
<body>


    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="goHome();">
               <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">信用卡赠券专区</div>
            <!-- <div class="titleBar-close">关闭</div> -->
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content">
            <div class="weui-navbar">
                <div class="weui-navbar__item">
                    <img src="../creditcard/image/hdjs.jpg" /><span>活动介绍</span>
                </div>
                <div class="weui-navbar__item" onclick="infos();">
                    <img src="../creditcard/image/lqjl.jpg" /><span>我的优惠券</span>
                </div>
            </div>
            <div  id="wrapper" style="display:none;">
               <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea">
               </div>
            </div>
               <div class="hot_list">
            	<div>
            		<a href="http://www.ccb.com/cn/html1/office/xyk/subject/18/0919bkhshsj/index.html"><img src="${stax}/assets/images/hot-1.png" /></a>
            	</div>
            	<div>
            		<a href="http://ccb.uncle-ad.com/hot"><img src="${stax}/assets/images/hot-2.png" /></a>
            	</div>
            	<div>
            		<a href="http://www.ccb.com/cn/html1/office/xyk/subject/19/0809ad/index.html"><img src="${stax}/assets/images/hot-3.png" /></a>
            	</div>
            	<div>
            		<a href="http://www.ccb.com/cn/html1/office/xyk/subject/19/0731bbfx/index.html"><img src="${stax}/assets/images/hot-4.png" /></a>
            	</div>
            		<div class="buy">
            		<a href="#"><img src="${stax}/assets/images/hot-5.jpg" /></a>
            	</div>
            </div>
        </div>
        <!-- 活动规则 -->
	<div class="rules" style="display:none;">
		<div class="cont">
			<div class="cont_top">
				<h4>新客“1元购权益”,龙卡专属大礼包</h4>
				<div class="rules-tishi">
					<p>2020年1月1日-2020年6月30日期间，凡在我行办理龙卡信用卡的新客户（新客户指首次申请龙卡信用卡主卡的中国大陆居民，主附卡同时申请时附属卡客户或仅申请附属卡的客户不参加本次活动），成功核发卡片60天内即可在建行手机银行-悦生活-天津惠平台-信用卡专区获得 “1元购权益”专属大礼包。礼包价值120元，包含内容：价值20元话费、价值20元喜马拉雅月卡、价值25元爱奇艺黄金会员月卡、价值10元肯德基代金券、价值15元饿了么月卡、价值30元神州专车代金券，六项权益均可1元购买，单客户每项权益限购一次。客户购买礼包内商户，需使用新申办卡片进行购买，活动期间限前100000名，先到先得，额满即止。</p>
					<p>注：本活动详细办法以建行网站（www.ccb.com/tj）公布为准。</p>	
				</div>
			</div>
			<div class="button1">
				<div class="cancel1">确定</div>
			</div>
		</div>
		
	</div>
    </div>
    <script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/common.js"></script>
	<script type="text/javascript">
		$(function(){
			$(".buy").click(function(){
				$(".rules").show();
			})
			$(".cancel1").click(function(){
				$(".rules").hide();
			})	
			//展示商品信息
			$.ajax({
				url:'${ctx}/creditcard/showcreaditcardprods.do',
				type:'post',
				success:function(resp){
					for(var i=0;i<resp.products.length;i++){
						var pid = encodeURIComponent(resp.products[i].id);
						var status = resp.products[i].status;
						if(status == 0){
							var products = '<div class="weui-media-box weui-media-box_appmsg c-m-b-10" onclick="isWhite(\''+pid+'\')">'+
							   '<div class="weui-media-box__hd">'+
							   '<img class="weui-media-box__thumb" src="'+resp.products[i].picUrl+'" alt="">'+
							   '</div>'+
							   '<div class="weui-media-box__bd">'+
							   '<h4 class="weui-media-box__title">'+resp.products[i].prodName+'</h4>'+
							   '</div>'+
							   '</div>';
							$("#dataArea").append(products);
						}
					}
				}
			});
		});
		//判断用户是否属于白名单用户
		function isWhite(e){
			$.ajax({
				url:'${ctx}/creditcard/checkIsWhite.do',
				data:'userId='+encodeURIComponent(localStorage.getItem("userId"))+"&pid="+e,
				type:'post',
				success:function(resp){
					var isWhile = resp.isWhite;
					if(isWhile){
						weui.alert(isWhile);
					}else{
						//跳转商品详情
						window.location.href = "${ctx}/creditcard/showcreaditcardprodinfo.do?pid="+e;
					}
				}
			});
		}
		function homerule(){
			window.location.href = "${ctx}/jsp/creditcard/homerule.jsp";
		}
		function infos(){
			window.location.href = "${ctx}/jsp/creditcard/receiveinfos.jsp";
		}
		function goHome(){
			window.location.href = '${ctx}/tjhui/'+localStorage.getItem("homeUrl");
		}
	</script>
</body>
</html>