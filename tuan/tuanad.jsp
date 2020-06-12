<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>拼团</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .container{background: #fff;}
        .c-leftimg-rightall{border-bottom: 10px solid #f2f1f1}
        .c-leftimg-rightall .weui-media-box__desc{width:8.5rem;}
        .weui-media-box__info{margin-top: 0;font-size:12px}
        .weui-media-box__info__meta{padding-right:5px;color:#666;}
        .weui-media-box__desc{color:#666;}
        .container{padding-top: 0;}
    </style>
    <title></title>
</head>
<body>

</body>
    <div class="container">

        <!-- 列表内容 -->
        <div class="c-content">
            <div class="weui-panel__bd c-leftimg-rightall">
                <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" src="${prod.picUrl}" alt="">
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">${prod.prodName}</h4>
                        <p class="weui-media-box__desc"><span class="c-c-r c-f-s-16 c-m-r-5">￥${prod.prodPrice}</span>￥${prod.oldPrice}</p>
                        <ul class="weui-media-box__info">
                            <li class="weui-media-box__info__meta">已团${prod.saled}件</li>
                            <li class="weui-media-box__info__meta">剩余${prod.remain}件</li>
                            <li class="weui-media-box__info__meta">${prod.saling}个待成团</li>
                        </ul>
                        <p class="weui-media-box__desc">拼团ID:<span class="c-c-o">${tuan.tuanCode}</span></p>
                        
                    </div>
                </div>
            </div>


            <div class="weui-panel__bd">
                <div class="weui-media-box weui-media-box_text">
                    <h4 class="weui-media-box__title c-t-a-c">仅剩<span class="c-c-r">${tuan.lackNum}</span>个名额  <span class="countdown c-c-o">00:00:00</span> 后结束</h4>
                    <p class="c-f-s-16">参团须知：</p>
                        <p class="c-f-s-13">1.拼团有效期
                        拼团有效期是自开团时刻起的24小时内，如果距离商品失效时
                        间小于24小时，则以商品的结束时间为准。<br />
                        2.拼团失败
                        超过成团有效期24小时内，未达成相应参团人数的团，则该团
                        失败。<br />
                        3.退款处理
                        拼团失败后平台会在24小时内完成退款，退还到您的支付账户<br /></p>
                </div>

                <div class="button-sp-area" style="margin:1rem auto;">
                    <a href="javascript:;" class="weui-btn weui-btn_plain-primary">进入/下载建设银行手机APP</a>
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
    
});

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
