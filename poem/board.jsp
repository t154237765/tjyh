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
    	.pk-wrapper1{padding:4.8rem 1rem 1rem;top:0;/* background: url(${stax}/assets/images/3-range-b.jpg) left bottom no-repeat; */text-align: center;background-size:contain;}
        .pk-wrapper1 h1{font-weight:500;letter-spacing: 0px;font-size: 1.1rem;background: #fff;font-family:"华文新魏";padding: 1rem .4rem;}
        
        .pk-wrapper1 h5{font-size: .8rem;margin-bottom: .3rem;}
        .pk-wrapper1 h5.c-actrule{margin-top:7.5rem;}
        .container{padding-top:0;}

        .listrange{width:100%;background:none;margin-top:10px;}
        .rangeone{clear:both;font-size:.6rem;height:3rem;text-align: center;border-top:1px solid #eee;border-bottom:1px solid #eee;}
        .rangeleft{float: left;width:3rem;height: 100%;text-align: center;border-right:1px solid #eee;}
        .rangeright{float:right;width:10.5rem;}
        .line1{font-weight:bold;border-bottom:1px solid #eee;}
        .line2{border-bottom:1px solid #eee;}
        .element{position: relative;top: 50%;transform: translateY(-50%);text-align: center;}
        .c-content{background: url(${stax}/assets/images/3-range.jpg) no-repeat; background-size: contain;padding-top: 1rem;
        width: 100%;min-height: 100%;overflow:hidden;}
    </style>
</head>
<body>

    <div class="container" style="margin-top:44px;background:#fbfaf8;">
        <div class="titleBar">
            <div class="titleBar-back" onclick="window.history.back()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">诗词大会</div>
        </div>

        <div class="c-content">
	        <!-- <img src="${stax}/assets/images/3-range.jpg" id="pkbg"> -->
			<div class="pk-wrapper1">
                <p id="myposcon" style="font-size: .8rem;"><img src="${stax}/assets/images/rangestar.png" style="width:1rem;height: 1.3rem;display: inline-block;">我的排名：<span id="myposnum" style="color:#ffa200"></span></p>
                <div class="listrange">
                	<div class="rangeone">
                		<%-- <div class="rangeleft">
                			<div class="element">
                				<img src="${stax}/assets/images/range0.png" style="width:2rem;height: 2rem;margin-left:.4rem;">
                			</div>
                			<div class="element">
                				<img src="${stax}/assets/images/range1.png" style="width:2rem;height: 2rem;margin-left:.4rem;">
                			</div>
                			<div class="element">
                				<img src="${stax}/assets/images/range2.png" style="width:2rem;height: 2rem;margin-left:.4rem;">
                			</div>
                			<div class="element">4</div>
                			<div class="element">5</div>	
                			<div class="element">6</div>	
                			<div class="element">7</div>	
                			<div class="element">8</div>	
                			<div class="element">9</div>	
                			<div class="element">10</div>	
                				
                			
                		</div>
                		
                		<div class="rangeright">
                			<div class="line1"></div>
                			<div class="line2">已通关数:第<span></span>关</div>
                			<div class="line3">通关总时长:</div>
                		</div>
                		
                	</div> --%>
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
    	   if (myRank != 0) {
    		   $("#myposnum").html("第" + myRank + "位");
    	   } else {
    		   $("#myposcon").html("未闯关");
    	   }
       }
   })
</script>
</body>
</html>