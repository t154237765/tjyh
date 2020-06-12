<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>我的奖品</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .weui-panel__bd{background:none;}
        .weui-media-box{background: #fff;align-items: flex-start;padding-bottom: 2.2rem;}
        .c-leftimg-rightall .weui-media-box__desc {width: 10rem;}
        .c-leftimg-rightall .c-c-r{font-size: .8rem;margin-top:.4rem;}
        .c-change{position: absolute;left: 15px;bottom:1.2rem;width:100%;}
        .c-leftimg-rightall .c-change  .c-f-r{width:5.8rem;}
        
        .openbtn{line-height: 2rem;width:2.2rem;height:1.8rem;background:url(${stax}/assets/images/goldbig.jpg) no-repeat;background-size:contain;color:#b86c00;font-size: .6rem;text-align: center;vertical-align: middle;    position: absolute;bottom: 2.8rem;left: 8.2rem;}
        .c-oldprice{text-decoration:line-through;color:#aaa;}
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{height:3.5rem;}
        .weui-media-box_appmsg .weui-media-box__bd{margin-top:-.3rem;}
        .c-leftimg-rightall .weui-media-box__desc,.weui-media-box__info{margin-top:.2rem;}
        .prizeitem{font-size: .7rem;color: #000;margin-bottom: 5px;}
        .prizeitem .weui-form-preview__label,.prizeitem .weui-form-preview__value{color: #000;}
        .container{background:#fff;}
        #dataArea{width:100%;}
        ul{width:100%;font-size:0.56rem;color:#000;}
        ul>li{width:94%;padding:1% 3%;border-bottom:0.5rem solid #F2F1F1;display:flex;align-items:center;justify-content:space-between;background:#fff;}
        .left{width:40%;}
        .left img{width:4.6rem;}
        ol{width:105%;,margin-left:5%;}
        ol li{display:-webkit-box;width:80%;}
        .t1{width:40%;}
        .right{width:100%;margin-left:5%;}
        .right p{font-size:0.56rem;margin:1% 0%;}
        .getTime1 , .prizeQm , .prizeName , .getTime2{width:85%;}
    </style>
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
            <div class="titleBar-back" onclick="goHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">我的奖品</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" id="c-iscroll">
            <div  id="wrapper">
                <div  style="-webkit-margin-before:0em;">
                    <div id="pulldown" >
                        <span class="pulldown-icon"></span><span id="pulldown-label"></span>
                    </div>
                    <div class="weui-panel__bd c-leftimg-rightall"  id="dataArea">
						<ul>
						</ul>
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
	var startIndex = 0;	//分页用
	var page = 1;
	var userId = encodeURIComponent(localStorage.getItem("userId"));
	var minH = window.innerHeight-$("#scroll-top-block").height();  //检测是否有内容
    var iscrollObj;
    $("#dataArea").css("minHeight",minH+"px");

    var pulldownAction = function(){
//         $('#dataArea').html('');
//         startIndex = 0;
        getPrizes(this);
        $("#pullup-label").text("上拉加载更多");
    };
    var pullupAction = function(){
        getPrizes(this);
    };

    window.onload=function(){
        iscrollObj = iscrollAssist.newVerScrollForPull(
            $('#wrapper'),pulldownAction,pullupAction
        );
    	getPrizes(iscrollObj);
	};
	 //获取订单信息-渲染-计算高度
    function getPrizes(iscrollObj){
    	$(".weui-loading_toast").show();
        function promiseLoad(){
            return new Promise(function(resolve,reject){
            	$.ajax({
       			 type: "GET",
                    url: "${ctx}/mycenter/getmyprize.json",
                    data: "userId="+userId+'&bankuid='+encodeURIComponent(localStorage.getItem("bankuid"))+"&start="+startIndex+"&r="+Math.random(),
                    success: function(resp){
                    	 resolve(resp);
                    }
            	});
            	
               /*  $.ajax({
                    type: "GET",
                    url: "${ctx}/mycenter/getmyprize.json",
                    data: "userId="+userId+"&start="+startIndex+"&r="+Math.random(),
                    success: function(resp){
                        if(page == 1 && !resp.awards.length){
                            $("#wrapper").html("<img src='${stax}/assets/images/null.png' style='margin:0 auto;height:4.5rem;margin-bottom:1.5rem;'><span style='font-size:.8rem;color:#999;'>您还没有奖品哦</span>").css({"paddingTop":"6rem"});
                            $(".container").css({"background":"#f6f6f6","text-align":"center"});
                        }
                        resolve(resp);
                    },
                    error:function(er){
                        reject(er);
                    }
                }); */
            });
        };$(".weui-loading_toast ").hide();
    	promiseLoad().then(
            function(resp){
                if(resp.awards && resp.awards.length > 0){
                    fillPrd(resp.awards);
                    startIndex = resp.nextIndex;
                    page++;
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
    	console.log(data);
    	
    	for(var i=0; i<data.length; i++){
    		var code = "";
    		var codeDuetime="";
    		if(data[i].couponCode != undefined){
    			code = data[i].couponCode;
    		}
    		if(data[i].codeDuetime != undefined){
    			codeDuetime = data[i].codeDuetime;
    		}
    		
    		var pdiv = '<li><div class="left"><img src="${ctx}/'+data[i].picUrl+'"/></div><div class="right">'
			+'<ol>'
				+'<li><p class="t1">领取时间：</p><p class="getTime1">'+data[i].createTime+'</p></li>'
				+'<li><p class="t1">奖品名称：</p><p class="prizeName">'+data[i].prodName+'</p></li>'
				+'<li><p class="t1">奖品券码：</p><p class="prizeQm">'+code+'</p></li>'
				+'<li><p class="t1">奖品到期：</p><p class="getTime2">'+codeDuetime+'</p></li>'
				+'</ol>'
				+'</div>'
				+'</li>';
					    
			$('#dataArea ul').append(pdiv);
		}
    	
    	if (data.length) {
        	$('.weui-form-preview__item2').on('tap', function(){
        		var eid = $(this).attr('dataid');
        		window.location.href = '${ctx}/mycenter/getmyprize.json?userId=' + encodeURIComponent(localStorage.getItem("userId"));
        	});
    	}
    }
    
    function stopBubble(event){
        if(event.stopPropagation){
            event.stopPropagation();
        }else if(event.cancleBubble){
            event.cancleBubble = true;
        }
    };
    function cancelHandler(e){
        if(e.preventDefault){
            e.preventDefault();  //方法2 W3C   IE9以下不兼容
        }else{
            e.returnValue = false;  //方法3  兼容IE
        }
    }
    /* 点击省略号显示 */
   $(".right").click(function(){
	   cancelHandler()
		alert(54564)
	  $("this").removeClass("qm");
   })
   
   
	$(function () { 
	  var isPageHide = false; 
	  window.addEventListener('pageshow', function () { 
	    if (isPageHide) { 
	      window.location.reload(); 
	    } 
	  }); 
	  window.addEventListener('pagehide', function () { 
	    isPageHide = true; 
	  }); 
	}) 
 
	var ghbb = "${ghbb}";
	function goHome(){
	   	if(ghbb&&ghbb!=""){
			
// 	   		alert("${ctx}/tjdzpqrqm/gohomebybutton.do?ghbb="+encodeURIComponent(ghbb)+"&ton="+encodeURIComponent(localStorage.getItem("ton"))+"&uid="+encodeURIComponent(localStorage.getItem("userId"))+"&r=" + Math.random());
	   	 window.location.href = "${ctx}/tjdzpqrqm/gohomebybutton.do?ghbb="+encodeURIComponent(ghbb)+"&ton="+encodeURIComponent(localStorage.getItem("ton"))+"&uid="+encodeURIComponent(localStorage.getItem("userId"))+"&byd="+encodeURIComponent(localStorage.getItem("byd"))+"&r=" + Math.random();

	   	}else{
	   		window.history.back();
	   	}
	
    }
    
</script>

</body>
</html>