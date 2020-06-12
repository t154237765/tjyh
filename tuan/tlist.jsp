<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>开团列表</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .weui-panel__bd{background: #eee;}
        .weui-media-box_appmsg{background: #fff;}
        .container {padding-top: 0;}
        #scroll-top-block{width:100%;height:44px;background:#f2f1f1;}
        .c-leftimg-rightall .weui-media-box__desc{width: 8.5rem;}
        .qucantuan{padding-top:5px;padding-bottom:5px;}
    </style>
    <title></title>
</head>
<body>

</body>
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
            <div class="titleBar-text am-text-truncate">开团列表</div>
        </div>
       

        <!-- 列表内容 -->
        <div class="c-content" id="c-iscroll">
            <div  id="wrapper">
                <div  style="-webkit-margin-before:0em;">
                	<div id="scroll-top-block"></div>
                    <div id="pulldown" >
                        <span class="pulldown-icon"></span><span id="pulldown-label"></span>
                    </div>
                    <div class="weui-panel__bd c-leftimg-rightall">
                    	<div id="datadiv">
                    	
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
    var lastId = 0; //分页用
    var bankId = localStorage.getItem("tjbankId");
    var minH = window.innerHeight-$("#scroll-top-block").height();  //检测是否有内容
    var iscrollObj;
    $("#datadiv").css("minHeight",minH+"px");

    var pulldownAction = function(){
        $('#datadiv').html('');
        lastId = 0;
        getProds(this);
        $("#pullup-label").text("上拉加载更多");
    };
    var pullupAction = function(){
        getProds(this);
        this.refresh();
    };
    	
    window.onload=function(){
        //if($("#datadiv").height()>minH)
            iscrollObj = iscrollAssist.newVerScrollForPull(
                $('#wrapper'),pulldownAction,pullupAction
            );
            getProds(iscrollObj);
    };
    
    //获取开团信息
    function getProds(iscrollObj){
        $(".weui-loading_toast").show();

    	var pid = '${pid}';
    	if(!pid || pid == ''){
    		weui.alert('数据有误 pd '+pid);
    		return;
    	}

        function promiseLoad(){
            return new Promise(function(resolve,reject){
                $.ajax({
                    type: "GET",
                    url: "${ctx}/pintuan/getTuanInfo.json",
                    data: "pid="+pid+"&start="+lastId+"&length=10"+"&r="+Math.random(),
                    success: function(resp){
                        if(!resp.tuanList.length && lastId == 0){
                            $("#wrapper").html("<img src='${stax}/assets/images/null.png' style='margin:0 auto;height:4.5rem;margin-bottom:1.5rem;'><span style='font-size:.8rem;color:#999;'>还没有开团哦</span>").css({"paddingTop":"6rem"});
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
                if(resp.tuanList && resp.tuanList.length > 0){
                    fillPrd(resp.tuanList);
                    setTimeout(function () {
                        iscrollObj.refresh();
                        $(".weui-loading_toast ").hide();
                        if($("#datadiv>div").length<5)
                        iscrollObj.scrollTo(0, -50);
                    }, 200);
                }else{
                    $(".weui-loading_toast, loading").hide();
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
    
    //填充商品列表
    function fillPrd(data){
    	for(var i=0; i<data.length; i++){
    		lastId++;
    		var phone = data[i].phone;
    		var da = '<div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg c-m-b-10">'+
					        '<div class="weui-media-box__hd">'+
					        '<img class="weui-media-box__thumb" src="'+data[i].picUrl+'" alt="">'+
					    '</div>'+
					    '<div class="weui-media-box__bd">'+
					        '<h4 class="weui-media-box__title">'+data[i].prodName+'</h4>'+
					        '<p class="weui-media-box__desc">手机尾号'+phone.substr(phone.length - 4, 4)+'用户开团</p>'+
					        '<p class="weui-media-box__desc">拼团ID：'+data[i].tuanCode+'</p>'+
					        '<p class="weui-media-box__desc">还差'+data[i].lackNum+'人 剩余:<span class="c-c-r" id="cdspan'+lastId+'">00:00:00</span></p>'+
					        '<div class="c-list-right-div">'+
					           '<div class="c-list-right-btn qucantuan" data-pid="'+data[i].pid+'" data-tuancode="'+data[i].tuanCode+'">'+
					                '<a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_default">去参团</a>'+
					           '</div>'+
					        '</div>'+
					    '</div>'+
					'</div>';
					
			$('#datadiv').append(da);

			setMyTimer("cdspan"+lastId, data[i].closeTime);
		}
        $(".qucantuan").on("tap",function(){
            toView(this.dataset.pid, this.dataset.tuancode);
        });
    }
    
    function toView(pid, tcode){
    	
    	if(!bankId){
    		alert('数据缺失 bid');
    		return;
    	}
    	var loading = weui.loading('正在加载...');	//loading
    	window.location.href = "${ctx}/pintuan/sdetail.do?bankId="+bankId+"&pid="+pid+"&tcode="+tcode;
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
