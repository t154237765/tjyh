<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!doctype html>
<html class="no-js fixed-layout">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>天津惠管理后台</title>
  <meta name="description" content="这是一个 index 页面">
  <meta name="keywords" content="index">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="icon" type="image/png" href="${ctx}/jsp/system_tjh/assets/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="${ctx}/jsp/system_tjh/assets/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/admin.css">
  <link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/jquery.dataTables.min.css" />
  <link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/app.css">	
  
  <style type="text/css">
  	.am-datatable-hd{visibility: hidden;}
  </style>
</head>
<body id="homepage" class="jianhang">
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar am-topbar-inverse admin-header" id="c-header">
  	<div class="am-u-md-1">
	  <div class="am-topbar-brand">
	  	天津惠管理后台
	  </div>
	</div>

  <div class="am-collapse am-topbar-collapse am-fr" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list c-backup">
      <li class="username"><a href="javascript:;"></a></li>
      <li class="am-dropdown" data-am-dropdown>
       	 <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;" style="border:1px solid #fff;" id="logout">
	           	退出 
	     </a>
      </li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
<div class="am-u-md-1" id="mainsub">
	
	<span id="c-close" onclick="closeNav()">&times</span>
	
  <div class="admin-sidebar am-offcanvas" id="admin-offcanvas">
    <div class="am-offcanvas-bar admin-offcanvas-bar">
    <!-- 二级菜单class:c-menu-plus,三级菜单class:c-menu-child -->
      <ul class="am-list admin-sidebar-list">
        
        <!-- 活动管理 -->
      	<li data-link="active" class="admin-parent" data-bread="1">
          <a data-am-collapse="{target: '#collapse-nav'}"><img class="icons" src="${ctx}/jsp/system_tjh/assets/i/hdgl.png"></img>活动管理<span class="am-icon-plus am-margin-left"></span></a>
          <ol class="am-list admin-sidebar-sub am-collapse" id="collapse-nav" style="">
            <li class="c-menu-plus" data-code="sale-buy" data-bread="2"><a href="javascript:;" class="am-cf">半价抢购<span class="am-icon-plus am-margin-left"></span></a>
            </li>
           <!--  <li class="c-menu-child" data-code="buy-notify" data-bread="3" style="display: none;"><a href="javascript:;" class="am-cf">购买通知管理</a></li> -->
            <li data-code="change-area" data-bread="2" class="c-menu-plus2"><a href="javascript:;" class="am-cf">兑奖专区<span class="am-icon-plus am-margin-left"></span></a></li>
            <li data-code="record" data-bread="3" class="c-menu-child2" style="display: none;"><a href="javascript:;" class="am-cf">兑奖记录</a></li>
          </ol>
        </li>
        
        <!-- 限时抢购 -->
        <li data-link="limit" class="admin-parent" data-bread="1">
          <a data-am-collapse="{target: '#limit-nav'}"><img class="icons" src="${ctx}/jsp/system_tjh/assets/i/xsqg.png"></img>限时抢购<span class="am-icon-plus am-margin-left"></span></a>
          <ol class="am-list admin-sidebar-sub am-collapse" id="limit-nav" style="">
            <li data-code="limit-shop" data-bread="2"><a href="javascript:;" class="am-cf">商品管理</a></li>
            <li data-code="limit-order" data-bread="2"><a href="javascript:;" class="am-cf">虚拟商品订单管理</a></li>
          </ol>
        </li>
        
        <!-- 本地特惠 -->
        <li data-link="location" class="admin-parent" data-bread="1">
          <a data-am-collapse="{target: '#location-nav'}"><img class="icons" src="${ctx}/jsp/system_tjh/assets/i/bdth.png"></img>本地特惠<span class="am-icon-plus am-margin-left"></span></a>
          <ol class="am-list admin-sidebar-sub am-collapse" id="location-nav" style="">
            <li data-code="location-order" data-bread="2"><a href="javascript:;" class="am-cf">虚拟商品订单管理</a></li>
          </ol>
        </li>
				
        <!-- 用户管理 -->
        <li data-link="user" class="admin-parent" data-bread="1">
          <a data-am-collapse="{target: '#user-nav'}"><img class="icons" src="${ctx}/jsp/system_tjh/assets/i/yhgl.png"></img>用户管理<span class="am-icon-plus am-margin-left"></span></a>
          <ol class="am-list admin-sidebar-sub am-collapse" id="user-nav" style="">
            <li data-code="user-record" data-bread="2"><a href="javascript:;" class="am-cf">津元宝导入记录</a></li>
          </ol>
        </li>
      </ul>
    </div>
  </div>
</div>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content" id="c-maincontent">

  	<div class="c-bread">
  		<ol class="am-breadcrumb">
		  <li><a href="#" class="c-level-1"></a></li>
		  <li style="display: none;"><a href="#" class="c-level-2"></a></li>
		  <li style="display: none;"><a href="#" class="c-level-3"></a></li>
		</ol>
  	</div>
    
    <div class="admin-content-body" id="c-right-wrapper">


    </div>

  </div>
  <!-- content end -->

</div>

<script src="${ctx}/jsp/system_tjh/assets/js/jquery.min.js"></script>
<script src="${ctx}/jsp/system_tjh/assets/js/amazeui.min.js"></script>
<script src="${ctx}/jsp/system_tjh/assets/js/app.js"></script>
<script src="${ctx}/jsp/system_tjh/assets/js/datatables-master/dist/amazeui.datatables.min.js"></script>
<script src="${ctx}/jsp/system_tjh/assets/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8" src="${ctx}/jsp/system_tjh/page/ueditor-1.4.3.3/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="${ctx}/jsp/system_tjh/page/ueditor-1.4.3.3/_examples/editor_api.js"> </script>
<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
<script type="text/javascript" charset="utf-8" src="${ctx}/jsp/system_tjh/page/ueditor-1.4.3.3/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">
$(function(){
	var username = "${name}";
	if(username != ""){
		$(".username").text(username);
	}else{
		window.location.href = "${ctx}/a/indexpage/index.do";
	}
	
	//左栏菜单事件
	$("#admin-offcanvas ul li").on("click",function(event){
		var liname = $(this).attr("data-link");
		var link;
		if(liname == 'ad-manage' || liname == 'active' || liname == 'service' || liname == 'data-count' || liname == 'admin-parent'){
			link = "${ctx}/jsp/system_tjh/page/false.jsp";
		}else{
			link = "${ctx}/jsp/system_tjh/page/"+$(this).attr("data-link") + ".jsp";
		}
		//右栏内容切换	
		$.ajax({
			url:link,
			type:"get",
			data:{},
			dataType:"html",
			success:function(html){	//载入右侧内容
				$("#c-right-wrapper").html(html);
			}
		});
		var bread = $(this).attr("data-bread");
		var menuName = $(this).children(":first").text();		
		//面包屑导航切换
		if(bread==="1"){ 			//一级菜单
			$(".c-level-1").text(menuName);
			$(".c-level-1").parent().show().find("a").addClass("am-active");
			$(".c-level-2, .c-level-3").parent().hide();
		}
		if(bread==="2"){			//二级菜单
			var parentName = $(this).parent().parent().find("a").eq(0).text();
			$(".c-level-2").parent().show().find("a").addClass("am-active");
			$(".c-level-1").parent().show().find("a").removeClass("am-active");
			$(".c-level-1").text(parentName);
			$(".c-level-2").text(menuName);
			$(".c-level-3").parent().hide();
		}
		if(bread==="3"){			//三级菜单
			var parentName = $(this).parent().parent().find("a").eq(0).text();
			var preM = $(this).prev().find("a").text();
			$(".c-level-2").parent().show().find("a").removeClass("am-active");
			$(".c-level-1").parent().show().find("a").removeClass("am-active");
			$(".c-level-3").parent().show().find("a").addClass("am-active");
			$(".c-level-1").text(parentName);
			$(".c-level-2").text(preM);
			$(".c-level-3").text(menuName);
		}
	});
	
	$("#admin-offcanvas ol li").on("click",function(event){
			event.stopPropagation();
			var rou = $(this).parent().parent().attr("data-link");
			var link = "${ctx}/jsp/system_tjh/page/"+$(this).attr("data-code") + ".jsp";
			if(rou == "active"){
				var dataCode = $(this).attr("data-code");
				if(dataCode =='buy-notify'){
					link = "${ctx}/jsp/system_tjh/page/false.jsp";
				}else{
					link = "${ctx}/jsp/system_tjh/page/active/" + $(this).attr("data-code") + ".jsp";
				}
			}else if(rou == "limit"){
				link = "${ctx}/jsp/system_tjh/page/limit/" + $(this).attr("data-code") + ".jsp";
			}else if(rou == "location"){
				link = "${ctx}/jsp/system_tjh/page/location/" + $(this).attr("data-code") + ".jsp";
			}else if(rou == "user"){
				link = "${ctx}/jsp/system_tjh/page/user/" + $(this).attr("data-code") + ".jsp";
			}
			$.ajax({
				url:link,
				type:"get",
				data:{},
				dataType:"html",
				success:function(html){	//载入右侧内容
					$("#c-right-wrapper").html(html);
				}
			});
	});
	//添加部门
	
    $(".am-tabs-bd").find(".doc-confirm-toggle").on("click", function() {
			$("#my-confirm").modal({
				relatedTarget: this,
				onConfirm: function(n) {
					
				},
				onCancel: function(n) {
					
				}
			});
		});
		
  //侧边栏改变图标颜色
	  $(".admin-sidebar-list li a").click(function(){
		  var iconarr=[
	 		     		"${ctx}/jsp/system_tjh/assets/i/gggl.png",
	 		     		"${ctx}/jsp/system_tjh/assets/i/hdgl.png",
	 		     		"${ctx}/jsp/system_tjh/assets/i/xsqg.png",
	 		     		"${ctx}/jsp/system_tjh/assets/i/bdth.png",
	 		     		"${ctx}/jsp/system_tjh/assets/i/kfjl.png",
	 		     		"${ctx}/jsp/system_tjh/assets/i/yhgl.png",
	 		     		"${ctx}/jsp/system_tjh/assets/i/sjtj.png"];
		  var s = $(".admin-sidebar-list>li>a").length;
		  for(var i=0; i < s;i++){
			  $(".admin-sidebar-list>li>a>img")[i].src=iconarr[i];
		  }
		  if($(this).hasClass("am-cf")){
	 			var src = $(this).find("img").attr("src");
	 			if(src)src = src.replace(".png","");
	 			$(this).find("img").attr("src",src+1+".png" );
	 		};  
	  });
	
	$("#logout").click(function(){
		window.location.href = "${ctx}/a/indexpage/logout.do";
	});
	$('#example').dataTable({
		"lengthMenu": [
			[5, 25, 50, -1],
			[5, 25, 50, "All"]
		]
	});
	
	//实现头部导航的切换
  	$('.c-bread li a').click(function(event){
  		if($(this).attr("class") == "c-level-1 am-active"){
  			$(this).css("pointer-events","none")
  		}else if($(this).attr("class") == "c-level-2 am-active"){
  			$(this).css("pointer-events","none")
  		}else if($(this).attr("class") == "c-level-3 am-active"){
  			$(this).css("pointer-events","none")
  		}else if($(this).attr("class") == "c-level-4 am-active"){
  			$(this).css("pointer-events","none")
  		}
  		console.log($(this).attr("class"))
  		$(this).parents("li").nextAll().hide();
  		$(this).addClass("am-active")
  		
  		var title = $(this).text();
  		var link;
  		if(title == "广告管理"){
  			link = "${ctx}/jsp/system_tjh/page/false.jsp";
  		}else if(title == "活动管理"){
  			/* link = "${ctx}/jsp/system_tjh/jsp/page/active.jsp"; */
  			link = "${ctx}/jsp/system_tjh/page/false.jsp";
  		}else if(title == "半价抢购"){
  			link = "${ctx}/jsp/system_tjh/page/active/sale-buy.jsp";
  		}else if(title == "兑奖专区"){
  			/* link = "${ctx}/jsp/system_tjh/page/active/buy-notify.jsp"; */
  			link = "${ctx}/jsp/system_tjh/page/active/sale-buy.jsp";
  		}else if(title == "购买通知管理"){
  			link = "${ctx}/jsp/system_tjh/page/active/buy-notify.jsp";
  		}else if(title == "兑奖纪录"){
  			link = "${ctx}/jsp/system_tjh/page/active/record.jsp";
  		}else if(title == "限时抢购"){
  			link = "${ctx}/jsp/system_tjh/page/limit.jsp";
  		}else if(title == "商品管理"){
  			link = "${ctx}/jsp/system_tjh/page/limit/limit-shop.jsp";
  		}else if(title == "本地特惠"){
  			link = "${ctx}/jsp/system_tjh/page/location.jsp";
  		}else if(title == "客服管理"){
  			link = "${ctx}/jsp/system_tjh/page/service.jsp";
  		}else if(title == "用户管理"){
  			link = "${ctx}/jsp/system_tjh/page/user.jsp";
  		}else if(title == "津元宝导入纪录"){
  			link = "${ctx}/jsp/system_tjh/page/user-record.jsp";
  		}
  		
  		
  		$.ajax({
			url:link,
			type:"get",
			data:{},
			dataType:"html",
			success:function(html){	//载入右侧内容
				$("#c-right-wrapper").html(html);
			}
		});
  			
  	});
	
	
});

</script>
</body>

</html>
























