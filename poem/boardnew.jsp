<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>诗词大会排名</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        #pkbg{background-size: contain; width: 100%;}
    	.pk-wrapper1{margin:7rem 1rem 1rem;top:0;background:#fff;text-align: center;background-size:contain;}
        .pk-wrapper1 h1{font-weight:500;letter-spacing: 0px;font-size: 1.1rem;background: #fff;font-family:"华文新魏";padding: 1rem .4rem;}
        
        .pk-wrapper1 h5{font-size: .8rem;margin-bottom: .3rem;}
        .pk-wrapper1 h5.c-actrule{margin-top:7.5rem;}
        .container{padding-top:0;}

        .listrange{width:100%;background:none;margin-top:10px;}
        .rangeone{clear:both;font-size:.6rem;height:auto;text-align: center;border-top:1px solid #eee;border-bottom:1px solid #eee;}
        .rangeleft{float: left;width:3rem;text-align: center;border-right:1px solid #eee;}
        .rangeright{float:right;width:10.5rem;text-align:left;}
        .line1{font-weight:bold;border-bottom:1px solid #eee;    text-align: center;}
        .line2{border-bottom:1px solid #eee;}
        .element{position: relative;text-align: center;height:3.1rem;}
        .c-content{background: url(${stax}/assets/images/3-range2.png) no-repeat; background-size: contain;width: 100%;min-height: 100%;overflow:hidden;}
        .line3{margin-bottom:.3rem;}
        .weui-navbar__item.weui-bar__item_on,.weui-navbar__item.weui-bar__item_on a{background: #0065b3;color: #fff;}
        .weui-navbar{top:44px;}
        .element img{padding-top:.4rem;}
    </style>
</head>
<body>

    <div class="container" style="margin-top:44px;background:#fff;">
        <div class="titleBar">
            <div class="titleBar-back" onclick="poemindex();">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">诗词大会</div>
        </div>

        <div class="c-content">
            <div class="weui-tab" style="height: fit-content;">
                <div class="weui-navbar">
                    <div class="weui-navbar__item weui-bar__item_on">
                        <a href="javascript:;"> 总排行榜</a>
                    </div>
                    <div class="weui-navbar__item">
                        <a href="javascript:void(0);" onclick="gomonth();"> 本月排行榜</a>
                    </div>
                    <div class="weui-navbar__item">
                        <a href="javascript:void(0);" onclick="gohimonth();"> 历史月榜</a>
                    </div>
                </div>
                <div class="weui-tab__panel">

                </div>
            </div>

			<div class="pk-wrapper1">
                <p id="myposcon" style="font-size: .7rem;font-weight:bold;"><img src="${stax}/assets/images/rangestar.png" style="width:1rem;height: 1.3rem;display: inline-block;">我的总排名：<span id="myposnum" style="color:#ffa200">28</span></p>
                <div class="listrange">
                	<div class="rangeone">
                	
                		<%-- <div class="rangeleft">
                			<div class="element">
                				<img src="${stax}/assets/images/range1.png" style="width:2rem;height: 2rem;margin-left:.4rem;">
                			</div>
                			<div class="element">
                				<img src="${stax}/assets/images/range2.png" style="width:2rem;height: 2rem;margin-left:.4rem;">
                			</div>
                			<div class="element">
                				<img src="${stax}/assets/images/range3.png" style="width:2rem;height: 2rem;margin-left:.4rem;">
                			</div>
                			<div class="element">4</div>
                			<div class="element">5</div>	
                			<div class="element">6</div>	
                			<div class="element">7</div>	
                			<div class="element">8</div>	
                			<div class="element">9</div>	
                			<div class="element">10</div>	
                		</div> --%>

                        <!-- <div class="rangeright">
                            <div class="line1">1333333333333</div>
                            <div class="line2">已通关数:第<span>643346</span>关</div>
                            <div class="line3">通关总时长:<span>20小时40分30秒</span></div>

                            <div class="line1">1333333333333</div>
                            <div class="line2">已通关数:第<span>643346</span>关</div>
                            <div class="line3">通关总时长:<span>20小时40分30秒</span></div>

                            <div class="line1">1333333333333</div>
                            <div class="line2">已通关数:第<span>643346</span>关</div>
                            <div class="line3">通关总时长:<span>20小时40分30秒</span></div>

                            <div class="line1">1333333333333</div>
                            <div class="line2">已通关数:第<span>643346</span>关</div>
                            <div class="line3">通关总时长:<span>20小时40分30秒</span></div>

                            <div class="line1">1333333333333</div>
                            <div class="line2">已通关数:第<span>643346</span>关</div>
                            <div class="line3">通关总时长:<span>20小时40分30秒</span></div>

                            <div class="line1">1333333333333</div>
                            <div class="line2">已通关数:第<span>643346</span>关</div>
                            <div class="line3">通关总时长:<span>20小时40分30秒</span></div>
                        </div> -->
                		
                	</div>
                </div>
                
            </div>
		</div>

    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script>
   $(function(){
	   var boards = ${boards};
       var myRank = ${myRank};
       if (boards && boards.length > 0) {
    	   var html = "";
    	   for (var i = 0; i < boards.length; i++) {
    		   html += '<div class="rangeone"><div class="rangeleft"><div class="element">';
    		   if (i < 3) {
    			   html += '<img src="${stax}/assets/images/range';
    			   html += (i + 1);
    			   html += '.png" style="width:2rem;height: 2rem;margin-left:.4rem;">';
    		   } else {
    			   html += (i + 1);
    		   }
    		   html += '</div></div><div class="rangeright"><div class="line1">';
    		   html += boards[i].phone;
    		   html += '</div><div class="line2">已通关数:第<span>';
    		   html += boards[i].nums;
    		   html += '</span>关</div><div class="line3">通关总时长:';
    		   html += boards[i].renderTimes;
    		   html += '</div></div></div>';
    	   }
    	   
    	   $(".listrange").html(html);
    	   
       }
       if (myRank != 0) {
		   $("#myposnum").html("第"+myRank+"位");
	   } else {
		   $("#myposcon").html("未闯关");
	   }

   })
   
   
   function gomonth(){
	   window.location.href = '${ctx}/poem/monthpoemBoard.do?userId='+encodeURIComponent(localStorage.getItem("userId"));
   }
   
   function gohimonth(){
	   window.location.href = "${ctx}/poem/historymonthPoem.do";
   }
   
   function poemindex(){
	   window.location.href = "${ctx}/poem/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
		+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
   }
   
</script>
</body>
</html>