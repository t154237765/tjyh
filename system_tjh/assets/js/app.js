(function($) {
  'use strict';
  
  var oSide1 = $('#admin-offcanvas .admin-sidebar-list li a');
  var oLevel1 = $('.c-level1 a'); 

  $(function() {
    var $fullText = $('.admin-fullText');
    $('#admin-fullscreen').on('click', function() {
      $.AMUI.fullscreen.toggle();
    });

    $(document).on($.AMUI.fullscreen.raw.fullscreenchange, function() {
      $fullText.text($.AMUI.fullscreen.isFullscreen ? '退出全屏' : '开启全屏');
    });
  });
  
  //菜单tab动画
	oSide1.click(function(){
 		oSide1.removeClass('am-cf');
 		$(this).addClass('am-cf');
 	})
	
	oLevel1.click(function(){
 		oLevel1.removeClass('active');
 		$(this).addClass('active');
	})
  
  //侧边栏动画
		var mainPage = {
			d:document.getElementById("mainsub"),
			b:document.getElementById("c-close"),
			t:document.getElementById("am-topbar-date")
		};
	
		mainPage.b.addEventListener("mouseover",function(){
			this.className = "am-animation-spin"
		});
		
		mainPage.b.addEventListener("mouseleave",function(){
			this.className = ""
		});
  
  	function closeNav() {
		mainPage.d.style.width = "0";
		mainPage.d.style.paddingLeft = "2rem";
		mainPage.d.style.minWidth = "0";
		mainPage.b.textContent = ">";
		mainPage.b.removeAttribute("onclick");
		mainPage.b.addEventListener("click",function(){
			openNav();
		})
	}
	function openNav(){
		mainPage.d.style.width = "18%";
		mainPage.d.style.minWidth = "176px";
		mainPage.d.style.maxWidth = "198px";
		mainPage.d.style.paddingLeft = "0rem";
		mainPage.b.textContent = "";
		mainPage.b.removeAttribute("onclick");
		mainPage.b.addEventListener("click",function(){
			closeNav();
		})
	}
	window.onresize = window.onload = function(){
		if(window.innerWidth<650){
			closeNav();
		}else{
			openNav();
		}
	}
  
  	/*//侧边栏改变图标颜色
  	$(".admin-sidebar-list li a").on("click",function(){
  		var iconarr=[
  		"../assets/i/gggl.png",
  		"../assets/i/hdgl.png",
  		"../assets/i/xsqg.png",
  		"../assets/i/bdth.png",
  		"../assets/i/kfjl.png",
  		"../assets/i/yhgl.png",
  		"../assets/i/sjtj.png"]
  		for(var i = 0;i<$(".admin-sidebar-list>li>a").length;i++){
  			$(".admin-sidebar-list>li>a>img")[i].src=iconarr[i];
  		}

  		if($(this).hasClass("am-cf")){
  			var src = $(this).find("img").attr("src");
  			if(src)src = src.replace(".png","");
  			$(this).find("img").attr("src",src+1+".png" );
  		}
  	})*/
	
	function stopPro(e) {
	    if (e && e.stopPropagation) {
	      //W3C取消冒泡事件
	      e.stopPropagation();
	    } else {
	      //IE取消冒泡事件
	      window.event.cancelBubble = true;
	    }
	  };
  	//左侧图标修改
  	$(".c-menu-plus>a").click(function(){
  		$(this).find("span").toggleClass("am-icon-plus am-icon-minus");

  	})
  	$(".c-menu-plus").click(function(){
  		$(this).siblings(".c-menu-child").toggle();
  	})
  	
  	$(".admin-parent>a").click(function(){
  		$(this).find("span").toggleClass("am-icon-plus am-icon-minus");
  	})
  	$(".c-menu-plus2").click(function(ev){
  		$(this).find("a").addClass("on")
  		$(this).siblings(".c-menu-child2").toggle();
  		$(this).find("span").toggleClass("am-icon-plus am-icon-minus");
  	})
  		
})(jQuery);
