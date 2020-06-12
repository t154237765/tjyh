<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>拼团</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
        .weui-cell:before{border:0;}
        
        .c-leftimg-rightall{border-bottom:1px solid #eee;}
        .c-two-line-b{height:8px;margin-bottom:10px;}
        .c-leftimg-rightall .weui-media-box__bd{margin-top:-20px;}
        .c-leftimg-rightall .weui-media-box__title{white-space:normal;}
        .weui-media-box{padding-left: 20px;padding-right: 30px;padding-bottom: 0;}
        .weui-navbar__item.weui-bar__item_on{background: #fff;}
    </style>
    <title></title>
</head>
<body>

</body>
    <div class="container" style="overflow-x: hidden;">
        <div class="titleBar">
            <div class="titleBar-back">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">联e会</div>
            <div class="titleBar-close">关闭</div>
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content">
            <div class="weui-panel__bd c-tow-line">
                <div class="weui-media-box weui-media-box_text">
                    <h4 class="weui-media-box__title">收货人：<span>刘帅</span></h4>
                    <h4 class="weui-media-box__title c-tow-line-r">15715921782</span></h4>
                    <a class="weui-cell weui-cell_access c-p-0" href="javascript:;">
                        <div class="weui-cell__hd">
                        	<img alt="" src="${stax}/assets/images/6icon3.jpg" style="width:0.6rem;">
                        </div>
                        <div class="weui-cell__bd weui-cell_primary">
                            <p class="c-f-s-16">收货地址：<span>大连市  中山区滨海中路</span></p>
                        </div>
                    </a>
                </div>
            </div>
            <div><img class="c-two-line-b" src="${stax}/assets/images/c-two-line-b.png"></div>
            <div class="weui-panel__bd c-leftimg-rightall">
                <div href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">
                    <div class="weui-media-box__hd">
                        <img class="weui-media-box__thumb" src="${stax}/assets/images/2-1-goods1.jpg" alt="">
                    </div>
                    <div class="weui-media-box__bd">
                        <h4 class="weui-media-box__title">星巴克咖啡电子饮品券星巴克咖啡电子饮品券</h4>
                        <p class="weui-media-box__desc"><span class="c-c-r c-f-s-16 c-m-r-5">￥480.00</span></p>
                        
                    </div>
                </div>
            </div>
            <div class="weui-panel__bd c-leftimg-rightall c-p-b-2">
                <div href="javascript:void(0);" class="weui-media-box">
                    <h4 class="c-f-s-18 c-c-6">颜色分类</h4>
                    <div class="weui-cell__bd c-tags">
                        <span class="weui-badge c-badge-red">套装1【水+乳】</span>
                        <span class="weui-badge">套装1【水+乳】</span>
                        <span class="weui-badge">套装3【水+乳+面霜+精华乳】</span>
                    </div>
                    
                </div>
            </div>
            
        </div>
        <div class="page__bd">
            <div class="weui-tab">
                <div class="weui-navbar weui-navbar-down weui-navbar-right">
                    <div class="weui-navbar__item weui-bar__item_on">
                        实付款：<span class="c-c-r">￥ 112.00</span>
                    </div>
                    <div class="red c-f-s-18 weui-navbar-div">
                        立即购买
                    </div>
                </div>
            </div>
        </div>
      
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/fastclick.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>

<script type="text/javascript">
  $(function(){
	/*替换click*/
  	FastClick.attach(document.body);
  })
    /* 提示 */
//     weui.toast('您搜索的拼团已经结束或不存在', {
//         duration: 1000,
//         className: 'toast-warn',
//         callback: function(){ 
//             return false;  
//         }
//     });
</script>

</body>
</html>
