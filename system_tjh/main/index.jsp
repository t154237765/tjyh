<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<link rel="stylesheet" type="text/css" href="css/skin_/main.css" />
<link rel="stylesheet" type="text/css" href="css/jquery.dialog.css" />
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/global.js"></script>
<title>后台管理模板</title>
<style type="text/css">
#hd{ position:relative; width:100%; height:114px; background:url(img/skin_/topbg.png) repeat-x; z-index:2;}
.hd-top .setting .setting-skin i.skin-icon{left:9px;top:9px;width:11px; height:10px; background:url(img/skin_/skinicon.png);}
.hd-top .setting .setting-skin i.arrow-icon{right:12px;top:12px;width:7px; height:4px; background:url(img/skin_/skinxl.png);}
.hd-top .setting .setting-skin .switch-bar{width:82px;height:29px; background:url(img/skin_/skin-bg.png);}
.hd-top .setting .setting-main li a.close-btn{ float:left; margin:16px 0 0 11px; width:14px; height:14px;background:url(img/skin_/quit.png);}
.hd-bottom .home>a{float:left; margin:9px 0 0 32px; width:24px; height:24px; background:url(img/skin_/home.png);}
.hd-bottom .nav-btn a.nav-prev-btn:hover{background:url(img/skin_/leftright.png) 0 -23px;}
.hd-bottom .nav-btn a.nav-next-btn{ background:url(img/skin_/leftright.png) -23px -23px;}
.hd-bottom .nav-btn a.nav-next-btn:hover{ background:url(img/skin_/leftright.png) -23px 0;}
.hd-bottom .nav-btn a.nav-prev-btn{ background:url(img/skin_/leftright.png);}
#ft{ height:29px; line-height:29px; background:url(img/skin_/footerbg.png) repeat-x;}
.ft1 .ft-icon1{ float:left; margin:8px 5px 0 11px; width:14px; height:14px; background:url(img/skin_/i.png);}
.ft2 .ft-icon2{ float:left; margin:12px 11px 0 9px; width:4px; height:7px; background:url(img/skin_/footerright.png);}
.system-switch ul li i{/*position:absolute;*/float:left;margin:8px 8px 0 0;width:4px;height:6px;background:url(img/skin_/switch-system/toplist.png);}
.system-switch .opt-panel-mr{position:absolute;top:0;bottom:5px;right:-6px;width:6px;background:url(img/skin_/switch-system/sright.png);}
.system-switch .opt-panel-bc{position:absolute;left:0;bottom:-9px;right:5px;height:9px;background:url(img/skin_/switch-system/sdown.png);}
.system-switch .opt-panel-br{position:absolute;bottom:-9px;right:-6px;width:11px;height:14px;background:url(img/skin_/switch-system/yj.png);}
</style>
</head>

<body>
<div id="container">
	<div id="hd">
    	<div class="hd-top">
            <h1 class="logo"><a href="javascript:;" class="logo-icon">后台管理</a></h1>
            <div class="user-info">
                <span class="user-name">admin</span>
                <a href="javascript:;" class="more-info"></a>
            </div>
            <div class="setting ue-clear">     
                <ul class="setting-main ue-clear">
                    <li><a href="javascript:;">帮助</a></li>
                    <li><a href="javascript:;" class="close-btn exit"></a></li>
                </ul>
            </div>
        </div>
        
    </div>
    <div id="bd">
        <iframe width="100%" height="100%" id="mainIframe" src="nav.jsp" frameborder="0"></iframe>
    </div>
   
</div>

<div class="exitDialog">
	<div class="content">
    	<div class="ui-dialog-icon"></div>
        <div class="ui-dialog-text">
        	<p class="dialog-content">你确定要退出系统？</p>
            <p class="tips">如果是请点击“确定”，否则点“取消”</p>
            
            <div class="buttons">
                <input type="button" class="button long2 ok" value="确定" />
                <input type="button" class="button long2 normal" value="取消" />
            </div>
        </div>
        
    </div>
</div>

<div class="opt-panel user-opt" style="top:52px;left:330px;">
	<ul>
    	<li><a class="text">用户资料</a></li>
        <li><a class="text">短消息<span class="num">(2)</span></a></li>
        <li><a class="text">资料信息</a></li>
        <li><a class="text">注销</a></li>
        <li><a class="text">自定义</a></li>
    </ul>
    <div class="opt-panel-tl"></div>
    <div class="opt-panel-tc"></div>
    <div class="opt-panel-tr"></div>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bl"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
    <div class="opt-panel-arrow"></div>
</div>

<div class="opt-panel skin-opt" style="top:36px;right:157px;">
	<ul class="ue-clear">
    	<li attr-color="#0f8dc7"></li>
        <li attr-color="#1ea4a9"></li>
        <li attr-color="#eb7f00"></li>
        <li attr-color="#ed0f04"></li>
        <li attr-color="#f24b39"></li>
        <li attr-color="#ed0f04"></li>
        <li attr-color="#eb7f00"></li>
        <li attr-color="#ed0f04"></li>
        <li attr-color="#1ea4a9"></li>
    </ul>
    <div class="opt-panel-ml"></div>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bl"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
</div>

<div class="system-switch">
	<ul>
    	<li>
            <span class="system-name"><i></i>数字管理系统</span>
        </li>
        <li>
            <span class="system-name"><i></i>网络信息管理系统</span>
        </li>
        <li>
            <span class="system-name"><i></i>后台管理系统</span>
        </li>
        <li>
            <span class="system-name"><i></i>信息科技ERP系统</span>
        </li>
        <li>
            <span class="system-name"><i></i>网络管理系统</span>
        </li>
    </ul>
    <div class="opt-panel-mr"></div>
    <div class="opt-panel-bc"></div>
    <div class="opt-panel-br"></div>
</div>

</body>
<script type="text/javascript" src="js/core.js"></script>
<script type="text/javascript" src="js/jquery.dialog.js"></script>
<script type="text/javascript">
$("#bd").height($(window).height()-$("#hd").outerHeight()-26);

$(window).resize(function(e) {
    $("#bd").height($(window).height()-$("#hd").outerHeight()-26);

});

$('.exitDialog').Dialog({
	title:'提示信息',
	autoOpen: false,
	width:400,
	height:200
});

$('.exit').click(function(){
	$('.exitDialog').Dialog('open');
});

$('.exitDialog input[type=button]').click(function(e) {
    $('.exitDialog').Dialog('close');
	
	if($(this).hasClass('ok')){
		window.location.href = "login.html"	;
	}
});

(function(){
	var totalWidth = 0, current = 1;
	
	$.each($('.nav').find('li'), function(){
		totalWidth += $(this).outerWidth();
	});
	
	$('.nav').width(totalWidth);
	
	function currentLeft(){
		return -(current - 1) * 93;	
	}
	
	$('.nav-btn a').click(function(e) {
		var tempWidth = totalWidth - ( Math.abs($('.nav').css('left').split('p')[0]) + $('.nav-wrap').width() );
        if($(this).hasClass('nav-prev-btn')){
			if( parseInt($('.nav').css('left').split('p')[0])  < 0){
				current--;
				Math.abs($('.nav').css('left').split('p')[0]) > 93 ? $('.nav').animate({'left': currentLeft()}, 200) : $('.nav').animate({'left': 0}, 200);
			}
		}else{

			if(tempWidth  > 0)	{
				
			   	current++;
				tempWidth > 93 ? $('.nav').animate({'left': currentLeft()}, 200) : $('.nav').animate({'left': $('.nav').css('left').split('p')[0]-tempWidth}, 200);
			}
		}
    });
	
	
	
	$.each($('.skin-opt li'),function(index, element){
		if((index + 1) % 3 == 0){
			$(this).addClass('third');	
		}
		$(this).css('background',$(this).attr('attr-color'));
	});
	
	$('.setting-skin').click(function(e) {
        $('.skin-opt').show();
    });
	
	$('.skin-opt').click(function(e) {
        if($(e.target).is('li')){
			alert($(e.target).attr('attr-color'));	
		}
    });
	
	$('.hd-top .user-info .more-info').click(function(e) {
       $(this).toggleClass('active'); 
	   $('.user-opt').toggle();
    });
	
	$('.logo-icon').click(function(e) {
         $(this).toggleClass('active'); 
	     $('.system-switch').toggle();
    });
	
	hideElement($('.user-opt'), $('.more-info'), function(current, target){

		$('.more-info').removeClass('active'); 
	});
	
	hideElement($('.skin-opt'), $('.switch-bar'));
	
	hideElement($('.system-switch'), $('.logo-icon'), function(current, target){

		$('.logo-icon').removeClass('active'); 
	});
	
	
	
})();

	

</script>

</html>
