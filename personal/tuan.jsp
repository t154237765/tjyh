<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>我的拼团</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .weui-panel__bd{background:none;}
        .weui-media-box{background: #fff;}
        
        .c-leftimg-rightall .c-list-right-div{top:0;}
        .c-leftimg-rightall .weui-btn_mini{border-radius:0;}
        .c-backM{font-size: .6rem;color: red;}
        .c-leftimg-rightall .weui-media-box__desc{width: 8.5rem;}
        .c-leftimg-rightall .c-daichengt{width:10.5rem;}
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
            <div class="titleBar-text am-text-truncate">我的拼团</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" id="c-iscroll">
            <div  id="wrapper">
                <div  style="-webkit-margin-before:0em;">
                    <div id="pulldown" >
                        <span class="pulldown-icon"></span><span id="pulldown-label"></span>
                    </div>
                    <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea">
                    
                    </div>
                    <div id="pullup" >
                        <span class="pullup-icon"></span><span id="pullup-label"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script type="text/javascript" src="${stax}/assets/js/iscroll.js"></script>
<script type="text/javascript" src="${stax}/assets/js/iscrollAssist.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>


<script type="text/javascript" >

	var lastId = 0;	//分页用
	var userId = localStorage.getItem("tjuserId");
	var minH = window.innerHeight-$("#scroll-top-block").height();  //检测是否有内容
	var iscrollObj;
	$("#dataArea").css("minHeight",minH+"px");
	
	var pulldownAction = function(){
        $('#dataArea').html('');
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
	
	function getOrders(iscrollObj){
    	$(".weui-loading_toast").show();
        function promiseLoad(){
            return new Promise(function(resolve,reject){
                $.ajax({
                    type: "GET",
                    url: "${ctx}/userCenter/gettuan.json",
                    data: "userId="+localStorage.getItem("tjuserId")+"&start="+lastId+"&length=10&r="+Math.random(),
                    success: function(resp){
                        if(lastId == 0 && !resp.orderList.length){
                            $("#wrapper").html("<img src='${stax}/assets/images/null.png' style='margin:0 auto;height:4.5rem;margin-bottom:1.5rem;'><span style='font-size:.8rem;color:#999;'>您还没有参与拼团活动哦</span>").css({"paddingTop":"6rem"});
                            $(".container").css({"background":"#f6f6f6","text-align":"center"});
                        }
                        resolve(resp);
                    },
                    error:function(er){
                        reject(er);
                    }
                });
            })
        };
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
                    $("#pullup-label").text("没有更多了~");//
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
	
	function fillPrd(data){
    	for(var i=0; i<data.length; i++){
			lastId ++;
			
			var statusText = "";
			var specialDiv = "";
			var tuanStatus = data[i].tuanStatus;	//1-组团中 2-已成团 3-已超时
			if(tuanStatus == "1"){
				statusText = "待成团";
				specialDiv = '<p class="weui-media-box__desc c-daichengt"><span>' +data[i].groupNum
						+'</span>人团 <span>'+data[i].teamNum+'</span>人参团，剩余:<span class="c-c-r" id="cdspan'+i+'">00:00:00</span></p>';
			}else if(tuanStatus == "2"){
				statusText = "已成团";
				specialDiv = '<p class="weui-media-box__desc"><span>'+data[i].groupNum+'</span>人团，成团日期:<span>'+data[i].buildTime+'</span></p>';
// 				 '<p class="weui-media-box__desc">有效期:<span>2017-12-31</span></p>';
			}else if(tuanStatus == "3"){
				statusText = "拼团失败";
				specialDiv = '<p class="weui-media-box__desc"><span>'+data[i].groupNum+'</span>人团';
			}
			
			
			var pdiv = '<div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-m-b-10" dataid="'+data[i].id+'" datasta="'+tuanStatus+'">'+
			                '<div class="weui-media-box__hd">'+
					            '<img class="weui-media-box__thumb" src="'+data[i].picUrl+'" alt="">'+
					        '</div>'+
					        '<div class="weui-media-box__bd">'+
					            '<h4 class="weui-media-box__title">'+data[i].prodName+'</h4>'+
					            '<p class="weui-media-box__desc"><span class="c-c-r c-m-r-5">￥ '+data[i].payMoney+'</span>原价 '+data[i].oldPrice+'</p>'+
					            '<p class="weui-media-box__desc">拼团ID：'+data[i].tuanCode+'</p>'+
					            specialDiv+
					            '<div class="c-list-right-div">'+
					               '<div class="c-list-right-btn">'+
					                    '<a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_default">'+statusText+'</a>'+
					               '</div>'+
					            '</div>'+
					        '</div>'+
					    '</div>';
			$('#dataArea').append(pdiv);
			
			if($("#cdspan"+i).length > 0){
				setMyTimer("cdspan"+i, data[i].closeTime);
			}
		}
    	if(data.length > 0){
    		$('.weui-media-box_appmsg').on('tap', function(){
    			if("3" == $(this).attr('datasta')) return;		//失败不显示详情
    			var oid = $(this).attr('dataid');
    			if(oid){
    				if("2" == $(this).attr('datasta')){
    					window.location.href = '${ctx}/userCenter/orderdetail.do?id='+oid;
    				}else if("1" == $(this).attr('datasta')){
    					window.location.href = '${ctx}/pay/pageBack.do?REMARK1=TJPT&REMARK2='+oid;
    				}
    			}
    		});
    	}
    	
    }
	
	
	
	
	//设置定时器
    function setMyTimer(oid, ctime){
    	console.log(ctime);
        //时间
        var oDate = new Date();
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
            
           	$('#'+oid).html(checkDay(d)+checkTime(h)+':'+checkTime(m)+':'+checkTime(s));
            
        }
        countDown();
        window.setInterval(countDown,1000);
    }
    
    function checkTime(i){ //将0-9的数字前面加上0，例1变为01 
		if(i<10) {i = "0" + i;} 
		return i; 
	} 

	function checkDay(i){
		if(!i){return '';}else{i = i + "天";}
		return i;
	}
</script>

</body>
</html>