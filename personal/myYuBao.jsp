<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>我的津元宝</title>
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

        .mygoldbean{font-size:.7rem;text-align:left;background:#fff;border-bottom:1px solid #ddd;clear:both;height:2rem;padding:.5rem 1rem;font-size:.6rem;}
        .mygoldbean h3,.mygoldbean img,.mygoldbean h4{display:inline-block;font-size:.8rem;}
        .mygoldbean img{width:1.3rem;height:1rem;}
        .c-ding-left{float:left;}
        .c-ding-right{float:right;}
        .c-ding-right div{font-size:.8rem;margin-top: .3rem;}
        p{font-size:.6rem;}
        .c-leftimg-rightall h3{padding:0;}
        .c-c-g{color:#45cab5;}

        .mygoldbean2{font-size:.7rem;text-align:center;background:#fff;border-bottom:1px solid #ddd;}
        .mygoldbean2 h3,.mygoldbean2 img{display:inline-block;}
        .mygoldbean2 img{width:1.3rem;height:1rem;}
        .mygoldbean2 h3 {font-size: .7rem;padding: 7px;padding-left: 15px;}
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
            <div class="titleBar-text am-text-truncate">我的津元宝</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" id="c-iscroll">
            <div class="c-index-hot mygoldbean2">
                <h3>我的</h3><img src="/tjpt/assets/images/goldbean.jpg">: 122锭
            </div>
            <div  id="wrapper">
                <div  style="-webkit-margin-before:0em;">
                    <div id="pulldown" >
                        <span class="pulldown-icon"></span><span id="pulldown-label"></span>
                    </div>
                    <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea">
                        <div class="c-index-hot mygoldbean">
                            <div class="c-ding-left">
                                <h3>2017-11-22 12:33</h4>
                                <p>通过诗词大会获得</p>
                            </div>
                            <div class="c-ding-right">
                                <div class="c-c-r">+20</div>
                            </div>
                        </div>
                        <div class="c-index-hot mygoldbean">
                            <div class="c-ding-left">
                                <h3>2017-11-22 12:33</h4>
                                <p>通过诗词大会获得</p>
                            </div>
                            <div class="c-ding-right">
                                <div class="c-c-g">-20</div>
                            </div>
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
    		
			var pdiv = ''					    
			$('#dataArea').append(pdiv);
		}
    }

   
</script>

</body>
</html>