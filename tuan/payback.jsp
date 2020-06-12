<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>商品详情</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .c-imagetag{top: .8rem;}
        .picTxtList .c-list-left-div{width: 14rem;}
        .c-title-right{font-size: 13px;line-height: 1.8;float: right;margin-right: 22px}
        .frame {width: 10rem;height: 1rem;background-color: #fff;margin-left: 2.6rem;border-radius: 5rem;position: relative;clear:both;border:1px solid #00a0e9;overflow: hidden;}
        .bar {width: 43%;height: 100%;border-top-left-radius: 5rem;border-bottom-left-radius: 5rem;position: absolute;left: 0;top: 0;background: #00a0e9;}
        .frame-left{position: absolute;left: .7rem   ;top: 0;}
        .frame-right{position: absolute;right: .7rem;top: 0;}
        .weui-dialog__bd:first-child{padding-top:1rem;color: #09b6f2;}
        .weui-cells_form{border: 0;color:#666;font-size: 14px;background: #eee;}
        .weui-cells_form .textarea{background: none;}
        .weui-textarea-counter{display: none;}
        .btn{position: absolute;top: 0;left: 0;right: 0;bottom: 0;width: 100%;opacity: 0;}
    </style>
    <title></title>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <%-- <div class="titleBar-text am-text-truncate">${prod.prodName}</div> --%>
            <div class="titleBar-text am-text-truncate">待成团</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" style="padding-bottom: 50px">
           <div class="weui-panel__bd picTxtList c-m-b-5">
                <div class="weui-media-box weui-media-box_text">
                    <div class="c-imagetag">
                        <span>${prod.peopleNum}人成团</span>
                    </div>
                    <p class="c-panel-image">
                        <img src="${prod.picUrl}" alt="">
                    </p>
                    <div class="weui-flex c-goods-details">
                        <div class="c-list-left-div">
                            <h4 class="weui-media-box__title">${prod.prodName}</h4>
                            <p class="weui-media-box__desc"><span class="c-c-r c-f-s-18">￥ ${prod.prodPrice}</span><span class="c-t-d-t c-c-9">${prod.oldPrice}</span></p>
                            <ul class="weui-media-box__info c-c-9">
                                <li class="weui-media-box__info__meta">已团${prod.saled}件</li>
                                <li class="weui-media-box__info__meta">剩余${prod.remain}件</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="weui-panel__bd c-leftimg-rightall">
                <h3><i class="fa fa-user-o c-f-s-17" aria-hidden="true"></i>拼团信息(已参团)
                <a class="c-title-right">拼团ID:<span class="c-c-o">${tuan.tuanCode}</span></a>
                </h3>
                <div href="javascript:void(0);" class="weui-media-box c-t-a-c">
                    <h4 class="weui-media-box__title">
                        <span class="countdown c-c-o">00:00:00</span> 后结束 
                    </h4>
                </div>
                <div class="c-t-a-c c-p-b-1" style="position: relative;">
<%--                     <span class="c-f-s-15 frame-left">${tuan.teamNum}人</span> --%>
<%--                     <span class="c-f-s-15 frame-right">${tuan.groupNum}人</span> --%>
                    <div class="frame c-t-a-c">
                      
                      <div class="bar"></div>
                      

                    </div>
                </div>
                <div href="javascript:void(0);" class="weui-media-box c-p-b-1 c-t-a-c">
                    <h4 class="weui-media-box__title">

                        <span class="c-c-o">${tuan.groupNum}</span>人团  <span class="c-c-o">${tuan.teamNum}</span>人已参团<br>
                    </h4>
                    
                </div>
                
            </div>

        </div>

<!--         <div> -->
<!--             <div class="page__bd"> -->
<!--                 <div class="weui-tab"> -->
<!--                     <div class="weui-navbar weui-navbar-down"> -->
<!--                         <div class="weui-navbar__item weui-bar__item_on red"> -->
<!--                             	联系卖家 -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->

        <div class="js_dialog" id="iosDialog2" style="opacity: 1; display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <div class="weui-dialog__bd c-c-b c-f-s-16">复制如下信息分享到朋友圈/微信好友邀请他们一起参团吧
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__bd">
                                <textarea class="weui-textarea" placeholder="请输入文本" rows="3" id="shareTxt">
                                	
                                </textarea>
                                <button class="btn" data-clipboard-target="#shareTxt"></button>
                                <div class="weui-textarea-counter"><span>0</span>/200</div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-6">取消</a>
                </div>
            </div>
        </div>

    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js?v=12"></script>
<script src="${stax}/assets/js/clipboard.js"></script>

<script class="navbar js_show">
    $(function(){
    	/*替换click*/
      	FastClick.attach(document.body);
    	
        $('.weui-navbar__item').on('click', function () {
            $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
        });
    });
</script>

<script>
var indexUrl = localStorage.getItem("tjindexUrl");

	$(".bar").css('width','0%');
    $(function(){
        var $iosDialog2 = $('#iosDialog2');

        $('.weui-navbar-down').on('click', function(){
            $iosDialog2.fadeIn(200);
        });

        /*弹出框2*/
        $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });
        
      	//初始化页面信息
	    setCountDown();
      	
      	var perc = '0%';
      	var num = parseFloat('${tuan.teamNum}'); 
      	var total = parseFloat('${tuan.groupNum}');
      	perc = Math.round(num / total * 10000) / 100.00 + "%";
        
      	$(".bar").css('width', perc);
      	
      	$('#shareTxt').val('我刚刚在建行手机商盟发起了一个${prod.prodName}的拼团，快来一起参团吧，点击'+
      				ctx+'/pintuan/tuanad.do?ad=${tuan.tuanCode}查看');
    });
    
    function toHome(){
    	var bflag = "${payback}";
    	if(bflag){
    		//window.location.href = '${ctx}/pintuan/indexhx.do?idcard='+localStorage.getItem("tjuserIdCard");
    		window.location.href = '${ctx}'+indexUrl;
    	}else{
    		window.history.back();
    	}
    	
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

    /* function oCopy(obj){
        obj.select();
        document.execCommand("Copy");
        obj.blur();
        weui.toast("复制成功!",1000);
        setTimeout(function(){$("#iosDialog2").hide();},1000)   
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
