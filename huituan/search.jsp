<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>拼团搜索页</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .c-content{padding-top:48px;}
    </style>
    <title></title>
</head>
<body>

</body>
    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back" onclick="window.history.back()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">搜索</div>
        </div>
        

        <!-- 搜索栏 -->
        <div class="page__bd">
            <div class="weui-search-bar" id="searchBar">
                <form class="weui-search-bar__form">
                    <div class="weui-search-bar__box">
                        <i class="weui-icon-search"></i>
                        <input type="search" class="weui-search-bar__input" id="searchInput" placeholder="拼团ID" onKeyUp="topSearch(this)">
                        <a href="javascript:" class="weui-icon-clear" id="searchClear"></a>
                    </div>
                    <label class="weui-search-bar__label" id="searchText" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);">
                        <i class="weui-icon-search"></i>
                        <span>搜索ID快速参团</span>
                    </label>
                </form>
                <a href="javascript:" class="weui-search-bar__cancel-btn" id="searchCancel">取消</a>
            </div>
<!--             <div class="weui-cells searchbar-result" id="searchResult" style="display: none;"> -->
<!--                 <div class="weui-cell weui-cell_access"> -->
<!--                     <div class="weui-cell__bd weui-cell_primary"> -->
<!--                         <p>实时搜索文本</p> -->
<!--                     </div> -->
<!--                 </div> -->
<!--                 <div class="weui-cell weui-cell_access"> -->
<!--                     <div class="weui-cell__bd weui-cell_primary"> -->
<!--                         <p>实时搜索文本</p> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
        </div>

        <!-- 列表内容 -->
        <div class="c-content">
            <div class="weui-panel__bd c-leftimg-rightall" id="datadiv">
<!--                  <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg"> 
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" src="${stax}/assets/images/2-1-goods1.jpg" alt="">
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">星巴克咖啡电子饮品券</h4>
                        <p class="weui-media-box__desc">手机尾号0215用户开团</p>
                        <p class="weui-media-box__desc">拼团ID：1982034</p>
                        <p class="weui-media-box__desc">还差3人，剩余:22:22:23</p>
                        <div class="c-list-right-div">
                           <div class="c-list-right-btn">
                                <a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_default">去参团</a>
                           </div>
                        </div>
                    </div>
                    
                </div>
                <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" src="${stax}/assets/images/2-1-goods1.jpg" alt="">
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">星巴克咖啡电子饮品券</h4>
                        <p class="weui-media-box__desc">手机尾号0215用户开团</p>
                        <p class="weui-media-box__desc">拼团ID：1982034</p>
                        <p class="weui-media-box__desc">还差3人，剩余:<span class="c-c-r">22:22:23</span></p>
                        <div class="c-list-right-div">
                           <div class="c-list-right-btn">
                                <a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_default">去参团</a>
                           </div>
                        </div>
                    </div>
                    
                </div> -->
            </div>
        </div>
      
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>

<script type="text/javascript">
    // 搜索栏
    $(function(){
    	/*替换click*/
      	FastClick.attach(document.body);
    	
        var $searchBar = $('#searchBar'),
//             $searchResult = $('#searchResult'),
            $searchText = $('#searchText'),
            $searchInput = $('#searchInput'),
            $searchClear = $('#searchClear'),
            $searchCancel = $('#searchCancel');

        function hideSearchResult(){
//             $searchResult.hide();
            $searchInput.val('');
        }
        function cancelSearch(){
            hideSearchResult();
            $searchBar.removeClass('weui-search-bar_focusing');
            $searchText.show();
        }

        $searchBar.on('click', function(){
            $searchBar.addClass('weui-search-bar_focusing');
            $searchInput.focus();
        });
        $searchInput
            .on('blur', function () {
                if(!this.value.length) cancelSearch();
            })
            .on('input', function(){
                if(this.value.length) {
                    //$searchResult.show();
                } else {
                    //$searchResult.hide();
                }
            })
        ;
        $searchClear.on('click', function(){
            hideSearchResult();
            $searchInput.focus();
        });
        $searchCancel.on('click', function(){
            cancelSearch();
            $searchInput.blur();
        });
        
        $("#searchInput").on('keypress',function(e) {
            var keycode = e.keyCode;
//             var searchName = $(this).val();
            console.log(keycode);
            if(keycode=='13') {
                e.preventDefault();
                //请求搜索接口 
				findByCode();
            }
		});
        
        //默认显示搜索动作
    	$searchText.click();
    });
    
    function findByCode(){
    	var turnCode = $("#searchInput").val();
    	console.log(turnCode);
    	$('#datadiv').html('');
    	if(turnCode && turnCode.length > 0){
    		var loading = weui.loading('正在加载...');	//loading
        	$.ajax({
    			type: "GET",
    			url: "${ctx}/huituan/findByTuanId.json",
    			data: "tuanCode="+turnCode+"&r="+Math.random(),
    			success: function(resp){
    				loading.hide();
    				if(resp.tuanList && resp.tuanList.length > 0){
    					fillData(resp.tuanList);
    				}else{
    					weui.toast('您搜索的拼团已经结束或不存在', {
    				        duration: 2000,
    				        className: 'toast-warn',
    				        callback: function(){
    				            return false;  
    				        }
    				    });
    				}
    			},
    			error:function(er){
    				loading.hide();
    				console.log(er);
    			}
        	});
    	}
    }
    
    function fillData(data){
    	for(var i=0; i<data.length; i++){
    		var phone = data[i].phone;
    		var da = '<div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">'+
					        '<div class="weui-media-box__hd">'+
					        '<img class="weui-media-box__thumb" src="'+data[i].picUrl+'" alt="">'+
					    '</div>'+
					    '<div class="weui-media-box__bd">'+
					        '<h4 class="weui-media-box__title">'+data[i].prodName+'</h4>'+
					        '<p class="weui-media-box__desc">手机尾号'+phone.substr(phone.length - 4, 4)+'用户开团</p>'+
					        '<p class="weui-media-box__desc">拼团ID：'+data[i].tuanCode+'</p>'+
					        '<p class="weui-media-box__desc">还差'+data[i].lackNum+'人 剩余:<span class="c-c-r" id="cdspan'+i+'">00:00:00</span></p>'+
					        '<div class="c-list-right-div">'+
					           '<div class="c-list-right-btn" onclick="toView('+data[i].pid+',\''+data[i].tuanCode+'\')">'+
					                '<a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_default">去参团</a>'+
					           '</div>'+
					        '</div>'+
					    '</div>'+
					'</div>';
					
			$('#datadiv').append(da);
			setMyTimer("cdspan"+i, data[i].closeTime);
    	}
    }
    
    function toView(pid, tcode){
//     	if(pid == "16"){
//     		weui.alert('此商品暂未开通此通道');
//     		return;
//     	}
    	var bankId = localStorage.getItem("bankId");
    	if(!bankId){
    		alert('数据缺失 bid');
    		return;
    	}
    	var loading = weui.loading('正在加载...');	//loading
    	window.location.href = "${ctx}/huituan/sdetail.do?bankId="+bankId+"&pid="+pid+"&tcode="+tcode;
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

    // 顶部搜索
    function topSearch(n){
        if(n.value.length>6){n.value=n.value.substr(0,6)};
        n.value=n.value.replace(/[^\d]/g,'');
    }
    
    
    /**返回首页**/
 	/* function toHome(){
 		window.location.href = '${ctx}'+localStorage.getItem("tjindexUrl");
 	} */

    /* 提示 */
//     weui.toast('您搜索的拼团已经结束或不存在', {
//         duration: 2000,
//         className: 'toast-warn',
//         callback: function(){
//             return false;  
//         }
//     });
</script>

</body>
</html>
