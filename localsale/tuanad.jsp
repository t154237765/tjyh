<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>好利来50元现金券</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .weui-navbar-right{background: #eaeaea;}
        .c-leftimg-rightall .weui-media-box__desc{width:8.5rem;}
        .weui-media-box__info{margin-top: 0;font-size:12px}
        .weui-media-box__info__meta{padding-right:5px;color:#666;}
        .weui-media-box__desc{color:#666;}
        .openbtn{line-height: 2.5rem;width:2.8rem;height:1.8rem;background:url(${stax}/assets/images/goldbig.jpg) no-repeat;background-size:contain;color:#b86c00;font-size: .6rem;text-align: center;vertical-align: middle;    position: absolute;bottom: 2.4rem;left: 9rem;}
        .weui-form-preview__bd, .weui-form-preview__label{font-size:.7rem;color:#333;}
        .c-bottom-area{top:auto;bottom:0;}
        .bottom-close{top:auto;bottom: 9rem;}
        .mygoldbean{font-size:.7rem;text-align:center;background:#fff;border-bottom:1px solid #eee;}
		.mygoldbean h3,.mygoldbean img{display:inline-block;}
		.mygoldbean img{width:1.3rem;height:1rem;}
		.buyimg{text-align:center;padding-top: 1rem;padding-bottom: 1rem;}
		.buyimg img{width:70%;margin:0 auto;}
		
		.spinner{width:1.2rem;height:1rem;font-size: 1rem;line-height: 1rem;vertical-align: middle;background: #ddd;
        		margin-right: 3px;text-align: center;color: #666}
        .spinner .value{color:#999;}
        #spinner{font-size:14px; -webkit-text-fill-color:#666; -webkit-opacity:1; opacity: 1;}
        
        .timealert{position:absolute;top:-30px;left:0;text-align:center;width: 100%;border-top: 1px solid #ddd;padding: 5px 0;font-size: 12px;background:#fff;}
    	#c-change{font-size: 12px;text-align: left;padding-left: 15px;  vertical-align: middle;line-height: 1rem;height: 1rem;padding:5px 0 0 15px;}
    	.weui-navbar-down .red{background:#0066b3;}
    	.c-bottom-area .weui-navbar-right{background:#fff;}
    	.bottom-close{width:21px;height: 21px;background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;position:absolute;top: 10.2rem;right: 5px;background-size:contain;}
		.bottom-close{background: none;width:30px;height:30px;top:0rem;right:0;}
		.bottom-close-img{background: url(${stax}/assets/images/bottom-close.png) 0 0 no-repeat;width:21px;height:21px;background-size: contain;margin:5px;}
    
    </style>
</head>
<body>

</body>
    <div class="container">
		<div class="c-index-hot mygoldbean">
			<h3>我的</h3><img src="/tjpt/assets/images/goldbean.jpg">: 122锭
		</div>
		<div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">好利来50元现金券</div>
        </div>

        <!-- 列表内容 -->
        <div class="c-content">
            <div class="weui-panel__bd c-leftimg-rightall">
            	<div class="weui-media-box__hd buyimg">
                    <img class="weui-media-box__thumb" src="${stax}/assets/images/hll50.jpg" alt="" >
                </div>
                <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                    
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">${prod.prodName}</h4>
                        <p class="weui-media-box__desc"><span class="c-c-r c-f-s-16 c-m-r-5">￥${prod.prodPrice}</span></p>
                        <ul class="weui-media-box__info">
                            <li class="weui-media-box__info__meta">已售${prod.saled}份</li>
                        </ul>
                        
                    </div>
                </div>
            </div>


            <div class="weui-panel__bd" style="margin-top:.5rem;">
            	<div class="weui-cell weui-cell_access">
					<div class="weui-cell__bd">
						<span class="c-f-s-14" style="vertical-align: middle;color:#666">使用津元宝：</span>
					</div>
					<button class="decrease spinner">-</button>
	                <input type="text" class="spinner" id="spinner" value="0" disabled="" />
	                <button class="increase spinner">+</button>
				</div>
                <div class="weui-media-box weui-media-box_text" style="padding-bottom:86px">
                    <p class="c-f-s-18">商品说明:</p>
                    <p class="c-f-s-13">1.本商品每个用户每月仅限兑换1次</p>
					<p class="c-f-s-13">2.所兑换商品直接充值至登录平台的手机号码</p>
					<p class="c-f-s-13">3.由于月初月末，订单交易量比较大，运营商充值系统繁忙偶尔存在延迟到账或者充值失败的情况，请您直接联系我们，我们将在第一时间为您处理。如因错填号码而导致的损失均由用户自行负责（为保障您的合法利益，请慎重填写充值号码）客服电话：400-810-9200 </p>
					<p class="c-f-s-13">4.郑重说明：</p>
					<p class="c-f-s-13">（1）本平台所有话费均不直接参与运营商活动。</p>
					<p class="c-f-s-13">（2）请用户仔细核对要充值的手机号码，平台为自动充值，一旦付款成功就无法修改或者撤销订单，只能最终充值结果。在网上提交的充值内容，是具备法律效应的交易指令。若因个人原因填写号码错误造成损失，平台恕不承担责任，并且不承诺找回损失的义务。</p>
					<p class="c-f-s-13">（3）购买前请查询要充值号码的话费余额，如已停机的，请查询欠费多少，以免万一充值后话费依然不足，不能正常开机，造成不必要的误会，谢谢合作!</p>
					<p class="c-f-s-13">（4）若交易成功后没有收到短信，建议您用充值号码拨打运营商客服电话查询（移动：10086、联通：10010、电信：10010）最近缴费充值记录。</p>
                    
                </div>
<!-- 
                <div class="button-sp-area" style="margin:0 auto;">
                    <a href="http://group.ccb.com/cn/v3/head_content/mbsapp.html" class="weui-btn weui-btn_plain-primary">立即兑换</a>
                </div> -->

            </div>

        </div>

			<div class="weui-navbar weui-navbar-down weui-navbar-right c-b-t-1">
            	<div class="timealert"><span>请于5分钟内完成支付，超时将自动取消订单</span></div>
                <div class="weui-navbar__item weui-bar__item_on" id="c-change">
                    	<span class="c-f-s-14" id="daizhif" style="font-size:.7rem;color:#333;">实际支付:</span>
                		<span class="c-c-r c-f-s-14 c-m-r-5" id="payMoney">0.00</span>
                		<br/>
                    	<span id="costsp" style="">
	                    	津元宝:<span id="dismoney" class="c-c-r">0.00</span>
                		</span>
                </div>
                <div class="red c-f-s-18 weui-navbar-div" onclick="" id="buyBtn">立即购买</div>
            </div>

	<!--底部弹出层-->
        <div class="c-black-mask" style="display: none;"></div>
        <div class="c-bottom-area" style="display: none;">
           
            <div class="bottom-close">
            	<div class="bottom-close-img"></div>
            </div>
            
            <div class="weui-navbar weui-navbar-down weui-navbar-right">
                <div class="button-sp-area" style="margin:0 auto;">
                    <a href="http://group.ccb.com/cn/v3/head_content/mbsapp.html" class="weui-btn weui-btn_plain-primary">确认支付</a>
                </div>
            </div>
            
            <h3 class="icon-box__title c-m-t-1" style="font-size: .8rem;text-align: center;">购买详情</h3>
            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10">
				<div class="weui-form-preview__bd">
	                <div class="weui-form-preview__item">
	                    <label class="weui-form-preview__label">商品名称</label>
	                    <span class="weui-form-preview__value">50元全国话费</span>
	                </div>
	                <div class="weui-form-preview__item">
	                    <label class="weui-form-preview__label">支付金额</label>
	                    <span class="weui-form-preview__value c-c-r">￥0.01元</span>
	                </div>
	                <div class="weui-form-preview__item">
	                    <label class="weui-form-preview__label">使用津元宝</label>
	                    <span class="weui-form-preview__value c-c-r">50津元宝</span>
	                </div>
	            </div>
	       	</div>
	       	
        </div>
      
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>

<script class="navbar js_show">
    /* 提示 */
//     weui.toast('本次拼团已经结束', {
//         duration: 2000,
//         className: 'toast-warn',
//         callback: function(){ 
//             return false;  
//         }
//     });
</script>

<script>
$(function(){
	/*替换click*/
  	FastClick.attach(document.body);
    //初始化页面信息
    setCountDown();
    
    /*付款弹出层*/
    $('.c-bottom-area').on('click', '.bottom-close', function(){
        $(this).parents('.c-bottom-area').fadeOut(200);
        $('.c-black-mask').fadeOut(200);
    });
    var maxin = 3;
    /***数字加减事件**/
    function testColor(){
    	var sV = parseInt($("#spinner").val());
        if(sV >= maxin){$(".increase").css({"color":"#999","background":"#eee"});}else{$(".increase").css({"color":"#666","background":"#ddd"});}
        if(sV===0){$(".decrease").css({"color":"#999","background":"#eee"});}else{$(".decrease").css({"color":"#666","background":"#ddd"});}
    }
    testColor();
    
    function testColorBtn(num){
        if(num >= maxin){$(".increase").css({"color":"#999","background":"#eee"});}else{$(".increase").css({"color":"#666","background":"#ddd"});}
        if(num===0){$(".decrease").css({"color":"#999","background":"#eee"});}else{$(".decrease").css({"color":"#666","background":"#ddd"});}
    }
    
	$(".container").on("click",".increase",function(){
        var sV = parseInt($("#spinner").val());
        if(sV===3)return;
        sV++;
        testColorBtn(sV);
        $("#spinner").val(sV);
        //countTotal(sV);
    });
    $(".container").on("click",".decrease",function(){
        var sV = parseInt($("#spinner").val());
        if(sV===0)return;
        sV--;
        testColorBtn(sV);
        $("#spinner").val(sV);
        //countTotal(sV);
    });
    
    $('.weui-navbar-down .red').on('click', function(){
    	$(".c-bottom-area").show();
    	$(".c-black-mask").show();
    });
});


//保留两位小数  
//功能：将浮点数四舍五入，取小数点后2位 
function toDecimal(x) {
	var f = parseFloat(x);
	if (isNaN(f)) {
		return 0.00;
	}
//		f = Math.round(x*100)/100;
	return f.toFixed(2);
}

var time1;
function setCountDown(){

    // 倒计时
    var oCd=document.querySelectorAll('.countdown');
    
    //未来时间
    var oDate = new Date();
    var ctime = '${tuan.closeTime}';
    var dt = ctime.split(' ');
    if(dt.length > 0){
    	var date = dt[0].split('-');
    	if(date && date.length == 3)
        	oDate.setFullYear(date[0],parseInt(date[1]) - 1,date[2]);
    }
    if(dt.length > 1){
    	var time = dt[1].split(':');
    	if(time && time.length == 3)
        	oDate.setHours(time[0],time[1],time[2]);
    }

    function checkTime(i){ //将0-9的数字前面加上0，例1变为01 
     if(i<10) {i = "0" + i;} 
     return i; 
    } 

    function checkDay(i){
        if(!i){return '';}else{i = i + "天";}
        return i;
    }

    function countDown(){
        var now=new Date();
    
        var s=parseInt((oDate.getTime()-now.getTime())/1000);
        if(s < 0) return;
        
        var d=parseInt(s/86400);

        s%=86400;
        
        var h=parseInt(s/3600);
        s%=3600;
        
        var m=parseInt(s/60);
        s%=60;
        
        for(var i=0;i<oCd.length;i++){
            oCd[i].innerHTML=checkDay(d)+checkTime(h)+':'+checkTime(m)+':'+checkTime(s);
        }
        
    }
    countDown();
    time1 = window.setInterval(countDown,1000);
}
</script>
</body>
</html>
