<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>我的订单</title>
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
        .c-leftimg-rightall .c-c-r{font-size: .8rem}
        .c-change{position: absolute;left: 15px;bottom:.8rem;width:100%;}
        .c-leftimg-rightall .c-change  .c-f-r{width:5.8rem;}
        
        .openbtn{line-height: 2.5rem;width:2.8rem;height:1.8rem;background:url(${stax}/assets/images/goldbig.jpg) no-repeat;background-size:contain;color:#b86c00;font-size: .6rem;text-align: center;vertical-align: middle;    position: absolute;bottom: 2.2rem;left: 9.3rem;}
        .c-oldprice{text-decoration:line-through;color:#aaa;margin-left:10px;}
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{height:3.5rem;}
        .weui-media-box_appmsg .weui-media-box__bd{margin-top:-.3rem;}
    </style>
    <title></title>
</head>
<body>

	<div class="weui-loading_toast " style="display: none;"> 
        <div class="weui-mask_transparent"></div> 
        <div class="weui-toast weui-animate-fade-in"> 
            <i class="weui-loading weui-icon_toast"></i> 
            <p class="weui-toast__content">正在加载...</p> 
        </div> 
    </div>
    
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="window.history.back()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">我的订单</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" id="c-iscroll">
            <div  id="wrapper">
                <div  style="-webkit-margin-before:0em;">
                    <div id="pulldown" >
                        <span class="pulldown-icon"></span><span id="pulldown-label"></span>
                    </div>
                    <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea">
                        <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-m-b-10">
                            <div class="weui-media-box__hd">
                                <img class="weui-media-box__thumb" src="${stax}/assets/images/2-1-goods1.jpg" alt="">
                            </div>
                            <div class="weui-media-box__bd">
                                <h4 class="weui-media-box__title">星巴克咖啡电子饮品券</h4>
                                <p class="weui-media-box__desc c-c-r">￥23.00+<br/>
                                <p class="c-f-s-xs c-oldprice">￥50.00</p>
                            </div>
                            <div class="c-change">
                                <p class="weui-media-box__desc c-f-l">订单号:<span>132343897723</span></p>
                            </div>
                            <div class="c-change" style="bottom:0;">
                                <p class="weui-media-box__desc"><span>购买时间：2017-11-23 13:33</span></p>
                            </div>
                            <div class="openbtn touchView" data-pid="4">198</div>
                        </div>
                    </div>
                    <div id="pullup" >
                        <span class="pullup-icon"></span><span id="pullup-label"></span>
                    </div>

                </div>
            </div>
        </div>
      
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/iscroll.js"></script>
<script src="${stax}/assets/js/iscrollAssist.js"></script>
<script src="${stax}/assets/js/common.js"></script>


<script type="text/javascript" >
	var lastId = 0;	//分页用
	var userId = encodeURIComponent(localStorage.getItem("userId"));
	var minH = window.innerHeight-$("#scroll-top-block").height();  //检测是否有内容
    var iscrollObj;
    $("#dataArea").css("minHeight",minH+"px");

    var pulldownAction = function(){
        //$('#dataArea').html('');
        lastId = 0;
        getOrders(this);
        $("#pullup-label").text("上拉加载更多");
    };
    var pullupAction = function(){
        getOrders(this);
    };

    window.onload=function(){
        iscrollObj = iscrollAssist.newVerScrollForPull(
            $('#wrapper'),pulldownAction,pullupAction
        );
    	getOrders(iscrollObj);
	};
	 //获取订单信息-渲染-计算高度
    function getOrders(iscrollObj){
    	$(".weui-loading_toast").show();
        function promiseLoad(){
            return new Promise(function(resolve,reject){
                $.ajax({
                    type: "GET",
                    url: "${ctx}/userCenter/getOrders.json",
                    data: "userId="+userId+"&lastId="+lastId+"&r="+Math.random(),
                    success: function(resp){
                        if(lastId == 0 && !resp.orderList.length){
                            $("#wrapper").html("<img src='${stax}/assets/images/null.png' style='margin:0 auto;height:4.5rem;margin-bottom:1.5rem;'><span style='font-size:.8rem;color:#999;'>您还没有订单哦</span>").css({"paddingTop":"6rem"});
                            $(".container").css({"background":"#f6f6f6","text-align":"center"});
                        }
                        resolve(resp);
                    },
                    error:function(er){
                        reject(er);
                    }
                });
            });
        };$(".weui-loading_toast ").hide();
    	promiseLoad().then(
            function(resp){
                if(resp.orderList && resp.orderList.length > 0){
                    fillPrd(resp.orderList);
                    setTimeout(function () {
                        iscrollObj.refresh();
                        $(".weui-loading_toast ").hide();
                    }, 200);
                }else{
                    $(".weui-loading_toast").hide();
                    $("#pullup").removeClass();
                    $("#pullup").find(".pullup-icon").removeClass("pullup-icon");
                    $("#pullup-label").text("没有更多了~");
                    if(document.getElementById('dataArea').clientHeight<window.innerHeight){
                        iscrollObj.scrollTo(0, -50);
                    }else{
                        iscrollObj.refresh();
                    }
                }
            },function(er){
                weui.toast(er, {
                    duration: 2000,
                    className: 'toast-warn',
                    callback: function(){ 
                        return false;  
                    }
                });
            }
        );

    }
    
    //填充商品列表
    function fillPrd(data){
    	for(var i=0; i<data.length; i++){
    		lastId = data[i].id;
    		
			var pardiv = '<p class="weui-media-box__desc">短信接收号码：<span>'+data[i].phone+'</span></p>'
			var code = data[i].code;
			var codediv = '<p class="weui-media-box__desc">兑换码：<span>'+(data[i].codes ? data[i].codes : "")+'</span></p>';
			if(code && (code == 'phone' || code == 'offline')){
				codediv = '';
			}
			
			pardiv += codediv;
// 			paediv += '<p class="weui-media-box__desc">有效期：<span>2017-12-31</span></p>';
			
			var ptype = data[i].ptype;
			if("1" == ptype){
				pardiv = '<p class="weui-media-box__desc">承运公司：<span>'+(data[i].cmpName ? data[i].cmpName : "暂未发货")+'</span></p>'
						+'<p class="weui-media-box__desc">运单编号：<span>'+(data[i].expressCode ? data[i].expressCode : "")+'</span></p>';
			}
			
			
			var pdiv = '<div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-m-b-10">'+
	                        '<div class="weui-media-box__hd">'+
	                            '<img class="weui-media-box__thumb" src="'+data[i].picUrl+'" alt="">'+
	                        '</div>'+
	                        '<div class="weui-media-box__bd">'+
	                            '<h4 class="weui-media-box__title">'+data[i].name+'</h4>'+
	                            '<p class="weui-media-box__desc c-c-r">￥'+data[i].payMoney+'+<br/>'+
	                            '<p class="c-f-s-xs c-oldprice">￥50.00</p>'+
	                        '</div>'+
	                        '<div class="c-change">'+
	                            '<p class="weui-media-box__desc c-f-l">订单号:<span>'+ (data[i].orderNo ? data[i].orderNo : "") +'</span></p>'+
	                        '</div>'+
	                        '<div class="c-change" style="bottom:0;">'+
	                            '<p class="weui-media-box__desc"><span>购买时间：'+data[i].payTime+'</span></p>'+
	                        '</div>'+
	                        '<div class="openbtn touchView" data-pid="4">198</div>'+
	                    '</div>'
					    
			$('#dataArea').append(pdiv);
		}
    }

   
</script>

</body>
</html>