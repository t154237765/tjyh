<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>个人中心</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    <style type="text/css">
    	p{font-size:.6rem}
        html{background: #f6f6f3;}
        #personalCenter{padding-top:44px;}

        .weui-cell__bd p{font-size: .7rem;}
        #personalCenter img.avarta+p{font-size: .8rem;margin-top:.3rem;vertical-align: middle;margin-top: -2.3rem;}
                /*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#0065B3;}
        /*更改手机号弹出框*/
        #iosDialog3 .weui-cell{padding:0;}
        #iosDialog3 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog3 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog3 .weui-cell_vcode{margin-top:5px;}
        #iosDialog3 .weui-cell_vcode:before,#iosDialog3 .weui-cells_form:after{border: 0}
        #iosDialog3 button.c-c-b{background:#09b6f2;}

        .js_dialog input.weui-input{color:#333;}
        .weui-dialog{overflow: visible;}
        #c-login-close{position: absolute;top: -1.2rem;right:0rem;color: #fff;font-size:1.2rem;}
        #c-login-close2{position: absolute;top: -1rem;right:0rem;color: #fff;}
        .page__hd{padding-top: .5rem;padding-bottom: .3rem;padding-left:1rem;}
        .page__desc{display:inline-block;}
			
		#wrapper{width: 100%;
	position: absolute;
	left: 0;
	top:2rem;
	bottom: 4rem;
	overflow: hidden;
	z-index: 1;}
        .mygoldbean{font-size:.7rem;text-align:left;background:#fff;margin-top:10px;clear:both;padding:.5rem 1rem;font-size:.6rem;}
        .mygoldbean{font-size:.7rem;text-align:left;background:#fff;margin-top:10px;clear:both;padding:.5rem 1rem;font-size:.6rem;display:flex;align-items:center;}
		.mygoldbean h3,.mygoldbean img,.mygoldbean h4{display:inline-block;font-size:.8rem;}
		.mygoldbean img{width:1.3rem;height:1rem;}
		.c-ding-left{float:left;}
		.c-ding-right{float:right;margin-top:-2.4rem;margin-right:1rem;position:absolute;top:2.8rem;right:0rem;}
		.c-ding-right div{background:#0066b3;border-radius:3rem;color:#fff;padding:0.2rem 0.4rem;margin-top:.2rem;}
		.c-ding-right{float:right;margin-top:-2.4rem;}
		.c-ding-right div{background:#0066b3;border-radius:3rem;color:#fff;padding:5px 14px;margin-top:.2rem;}
		.c-c-r{color:#000;font-size:0.5rem;}
		.c-c-r span{color:red;}
		/* 九宫格 */
		.weui-grids{background:#fff;}
		.weui-grid__icon{width:1.8rem;height:1.8rem;}
		span.weui-grid__label{font-size:12px;color:#999;}
		.weui-grid {height: 5.6rem;}
		.upload_pic{
     display: block;
     width: 100%;
     height: 40px;
     position: absolute;
     left: 20;
     top: 54;
     border-radius: 5px;
}
	#personalCenter img.avarta{width:3rem;height:3rem;margin: 0 auto;display:inline-block;}
    #personalCenter img.edit{width:1.4rem;height:1.2rem;margin: 0 auto;display:inline-block;}
	.phonedit{height:2rem;width:3rem;display:inline-block;vertical-align: middle;margin-top: -1.5rem;}
	.c-changephone{position:absolute;bottom: .5rem;left: 4.3rem;}
	.c-changephone span{color:#005BAD;font-size:.6rem;}
	#reg{width:100%;height:100%;position:fixed;z-index:10000;display:none;}
    .titleBar-text{padding-left: 0;width: 100%;}
    .rule{width:92%;height:92%;background:#fff;margin-top:44px;padding:4% 4%;overflow:scroll;}
    .rule p{font-size:0.6rem;text-indent:2em;}
    .label{color:blue;text-decoration:underline;}
    #iosDialog4 table{width:100%;text-align:center;overflow:hidden;height:8rem;}
    #iosDialog4 table tr{height:1.5rem;border-bottom:0.1px solid #DCDCDC;}
    .btnClose{width:5rem;color:#0066B3;border-radius:5rem;height:1.5rem;border:1px solid #0066B3;line-height:1.5rem;margin:5% auto;font-size:14px;position:absolute;top:75%;left:30%;}
    #c-login-close3{position:absolute;color:#fff;top:-1.5rem;left:12rem;font-size:1.5rem;z-index:9999;}
    .mygoldbean{font-size:.7rem;text-align:left;background:#fff;border-bottom:1px solid #ddd;clear:both;padding:.5rem 1rem;font-size:.6rem;overflow:hidden;position:relative;}
    .c-c-3{height:11.5rem;}
    .more{
	margin-top:5%;
	display: flex;
	align-items: center;
	justify-content: center;
	color: #333;
}
    .pullDown{font-size:28px;color:#999;}
	.scroller ul{padding:0% 4%;color:#000;}
    .scroller li{height:1.2rem;display:flex;align-items:center;justify-content:space-around;border-bottom:1px solid #DCDCDC;}
	.pull_icon{
		width: 25px;
		height: 25px;
		background-image: url('${stax}/assets/images/pull.png');
		background-repeat: no-repeat;
		background-position: center;
		background-size: 25px;
		transition: all .5s;
	}
	.loading{
		background-image: url('${stax}/assets/images/loading.png');
		background-repeat: no-repeat;
		background-position: center;
		background-size: 25px;
	}
	.more .loading{
	  -webkit-transform: rotate(0deg) translateZ(0);
	  -webkit-transition-duration: 0;
	  -webkit-animation-name: loading;
	  -webkit-animation-duration: 2s;
	  -webkit-animation-iteration-count: infinite;
	  -webkit-animation-timing-function: linear;
	}
	.more .flip{
	transform: rotate(180deg);
}
	@-webkit-keyframes loading {
	  from {
	    -webkit-transform: rotate(0deg) translateZ(0);
	  }
	  to {
	    -webkit-transform: rotate(360deg) translateZ(0);
	  }
	}
	
	
	/* 邀请注册框样式 */
	.sign1 , .sign2 ,.sign3{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.5);z-index:1111;}	
	/* .sign1 .Scont{width:70%;height:12rem;background:#fff;border-radius:0.2rem;position:absolute;top:28%;margin:auto;right:0;left:0;padding:0% 5%;} */
	.sign1 .Scont{width:70%;height:10rem;background:#fff;border-radius:0.2rem;position:absolute;top:28%;margin:auto;right:0;left:0;padding:0% 5%;}
	.sign2 .Scont{width:70%;height:8.5rem;background:#fff;border-radius:0.2rem;position:absolute;top:28%;margin:auto;right:0;left:0;padding:0% 5%;}	
	.sign3 .Scont{width:70%;height:8rem;background:#fff;border-radius:0.2rem;position:absolute;top:28%;margin:auto;right:0;left:0;padding:3% 5%;}	
	.sign1 .Scont div{display:flex;align-items:center;justify-content:space-between;}
	#checked{width:0.6rem;height:0.6rem;}
	#c-close1 , #c-close2{position:absolute;top:23%;right:10%;font-size:1.2rem;color:#fff;}
	.Scont input{border:1px solid #676767;border-radius:0.1rem;width:100%;height:1.5rem;margin-bottom:0.4rem;font-size:0.6rem;color:#646464;padding-left:0.2rem;}
	.Sbtn1{width:35%;background:#666;text-align:center;height:1.5rem;line-height:1.5rem;font-size:0.6rem;color:#fff;border-radius:0.2rem;margin-bottom:0.4rem;}
	.Sbtn2{width:40%;margin:auto;text-align:center;height:1.5rem;border-radius:1.5rem;line-height:1.5rem;background:#0065B3;font-size:0.6rem;color:#fff;margin-left:32%;margin-top:0.3rem;}
    .sBtn{display:flex;align-items:center;justify-content:space-around;}
    .sBtn button{width:4.5rem;height:1.5rem;text-align:center;line-height:1.5rem;border-radius:1.5rem;color:#fff;margin-top:0.5rem;font-size:0.6rem;}
    .sign3 button{width:4.5rem;height:1.5rem;text-align:center;line-height:1.5rem;border-radius:1.5rem;color:#fff;font-size:0.6rem;margin-top:0.5rem;background:#0065B3;margin-left:30%;}
    .slide{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.5);z-index:9998;display:none;}
    .slideTo{width:80%;display:none;border:1px solid #000;position:fixed;bottom:0;z-index:9999;background:#fff;margin:auto;right:0;left:0;height:6rem;border-radius:0.1rem;}
    .slideTo div a{display:flex;align-items:center;justify-content:center;text-align:center;margin:0.25rem 0;}
    .slideTo div img{width:1.5rem;}
    .nav-tab{width:100%;height:2.1rem;position:fixed;bottom:0rem;background:#fff;padding:0% 0%;border-top:1px solid #EEE;}
 	.navbar{display:flex;align-items:center;justify-content:space-around;height:100%;}
 	.navbar-list{width:50%;text-align:center;}
 	.navbar-list:nth-child(1){border-right:1px solid #EEE;}
 	.navbar-list img{width:1.17rem;margin:auto;margin-top:0.2rem;}
 	.navbar-list:nth-child(2) p{color:#4392F3;}
 	.navbar-list p{font-size:0.512rem;color:#666;}
    
    .inform{width:100%;height:100%;position:fixed;top:0;background:rgba(0,0,0,0.4);z-index:1111;}
    .c-close2 {width:1.2rem;height:1.2rem;background: url(${stax}/assets/images/bottom-close2.png) no-repeat;position: absolute;right:1.5rem;top:6.5rem;background-size:contain;z-index: 1000}
    .text1{width:12rem;height:8rem;line-height:1.2rem;background:#fff;border-radius:0.1rem;font-size:0.64rem;position:absolute;top:8rem;left:0;right:0;margin:auto;padding:3%;}
    </style>
</head>
<body>

    <div class="container">
        <div class="titleBar">
            <div class="titleBar-back">
<!--                 <i class="fa fa-angle-left" aria-hidden="true"></i>返回 -->
            </div>
            <div class="titleBar-text am-text-truncate">个人中心</div>
<!--             <div class="titleBar-close" onclick="alert('shutdown');">关闭</div> -->
        </div>

        <div class="c-content">
            <div class="page list js_show" id="personalCenter">
                <div class="page__hd" style="text-align: left;background:#fff;position:relative;">
                    <img class="avarta" src="${stax}/assets/images/6avarta.png">
                    <p class="page__desc" id="showPhone">请登录</p>
                    <div class="phonedit" style="display: none;">
                    	<img class="edit" src="${stax}/assets/images/phoneedit.png">
                    </div>
                    <div class="c-changephone" style="display: none;"><span>温馨提示：手机号码每年只可变更一次。</span></div>
                </div>
                <div class="c-index-hot mygoldbean">
                	<div class="c-ding-left">
                		<h3>我的</h3><img src="${stax}/assets/images/goldbean.jpg">: <h4>${ingotnum}锭</h4>
<%--                 		<p class="c-c-r" style="display: none;">其中<span>${ingotnum30days}</span>锭30天内<label class="label">即将到期</label>，请注意使用哟！</p> --%>
                 		<p class="c-c-r" style="display: none;">其中<span>${ingotnum30days}</span>锭30天内即将到期，请注意使用哟！</p>

              	</div>
					<div class="c-ding-right">
						<div>查看明细</div>
					</div>
				</div>
				<div class="weui-grids">
			        <a href="javascript:toPage('exchange');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp1.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的兑换</p>
			            <span class="weui-grid__label">(兑换专区)<br/>&nbsp;</span>
			        </a>
			        <a href="javascript:toPage('tuan');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp2.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的活动</p>
			            <span class="weui-grid__label">(专享活动<br>拼团有礼)<br/>&nbsp;</span>
			        </a>
			        <a href="javascript:toPage('order');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp3.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的订单</p>
			            <span class="weui-grid__label">(本地特惠<br/>一元购)</span>
			        </a>
			        <a href="javascript:toPage('prize');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp4.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的奖品</p>
			            <span class="weui-grid__label">(幸运大转盘)</span>
			        </a>
			        <a href="javascript:toPage('address');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp5.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">我的地址</p>
			        </a>
			        <a href="javascript:toPage('shopOrder');" class="weui-grid">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/shopList-02.png" alt="">
			            </div>
			            <p class="weui-grid__label">惠享商城订单</p>
			            <!-- <span class="weui-grid__label">400-810-9200</span> -->
			        </a>
			       <%--  <a href="javascript:toPage('invite');" class="weui-grid invite">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/newIcon02.png" alt="">
			            </div>
			            <p class="weui-grid__label">我的邀请</p>
			            <!-- <span class="weui-grid__label">400-810-9200</span> -->
			        </a>
			        <a href="javascript:toPage('receive');" class="weui-grid receive">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/newIcon01.png" alt="">
			            </div>
			            <p class="weui-grid__label">我的邀请人</p>
			            <!-- <span class="weui-grid__label">400-810-9200</span> -->
			        </a> --%>
			        <a class="weui-grid kefu">
			            <div class="weui-grid__icon">
			                <img src="${stax}/assets/images/rp6.jpg" alt="">
			            </div>
			            <p class="weui-grid__label">客服电话</p>
			            <!-- <span class="weui-grid__label">400-810-9200</span> -->
			        </a>
			    </div>
			    
            </div>
		</div>
        
        <div class="nav-tab">
			<div class="navbar">
				<div class="navbar-list"  onclick="toHome()">
					<img src="${stax}/assets/images/skin/home-2.png" />
					<p>首页</p>
				</div>
				<div class="navbar-list">
					<img src="${stax}/assets/images/skin/mycenter-2.png" />
					<p>我的</p>
				</div>
			</div>
		</div>
        <!-- 节日通知 -->
        <div class="inform" style="display:none;">
        	<div class="c-close2"></div>
	        <div class="text1">
<!-- 	         	<p style="font-size:.8rem;text-align:center;margin-bottom:10px;">春节放假通知</p> -->
				尊敬的天津惠用户：<br />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好！<br />
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;劳动节假期将至，天津惠平台所有活动均正常开展。5月1日-5月4日期间，在线客服暂停服务，5月5日起恢复正常。<br />
	        </div>
        </div>
        
		<div class="slide"></div>
			<div class="slideTo">
				<div class="weui-grid__label">
					<a href="tel:4008109200" class="call">
						<p>天津惠客服:400-810-9200</p>&nbsp;&nbsp;
						<img src="${stax}/assets/images/rp6.jpg" />
					</a>
				</div><hr>
				<div class="weui-grid__label">
					<a href="tel:4006870001" class="call">
						<p>惠享商城客服:400-687-0001</p>&nbsp;&nbsp;
						<img src="${stax}/assets/images/rp6.jpg" />
					</a>	
				</div><hr >
				<div class="quxiao"><p style="width:100%;height:100%;line-height:2rem;text-align:center;">取消</p></div>
			</div>
		
        
        <!-- 邀请注册框 -->
        <div class="sign1 js_dialog" id="iosDialog1" style="display:none;">
        	<div class="Scont">
        		<i class="weui-icon-cancel" id="c-login-close"></i>
        		<p style="margin:5% auto;text-align:center;color:#000;font-size:0.6rem;">手机验证注册</p>
                <div>
                	<input id="phone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*" placeholder="请输入您的手机号码" oninput='checkLength(this,11);'>
                </div>
                <div>
                	<input style="width:60%;" class="weui-input" type="number" pattern="[0-9]*" id="ccode"
						oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码">
                	<button class="Sbtn1" id="bpcodebtn" class="weui-vcode-btn">获取验证码</button>
                </div>
              <!--   <div>
                	<input id="iuphone" type="tel" maxlength="11" pattern="[0-9]*" placeholder="邀请人手机号（可不填）">
                </div>
                <p style="text-align:center;color:red;">邀请人填写后不可更改哟~</p> -->
                <button class="Sbtn2 weui-dialog__btn" id="btn">注册</button>
                <p style="display:flex;align-items:baseline;">
                	<input type="checkbox" id="checked" checked="checked" />我已阅读并同意
					<a class="register" href="#" style="text-decoration:underline;color:#1752C9;font-size:0.5rem;letter-spacing:0.05rem;">《注册必读》</a>
                </p>
                
                
        	</div>	
        </div>
        
        

        <div class="js_dialog" id="iosDialog3" style="opacity: 1;display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <i class="weui-icon-cancel" id="c-login-close2"></i>
                <div class="weui-dialog__bd c-f-s-16" style="color:#09b6f2;padding-top:1.7em;">更换手机号
                    <div class="weui-cells weui-cells_form">
                        <div class="weui-cell">
                            <div class="weui-cell__bd">
                                <input id="phone2" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*" placeholder="请输入新的手机号码" oninput='checkLength(this,11);'>
                            </div>
                        </div>
                        <div class="weui-cell weui-cell_vcode">
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="number" pattern="[0-9]*" id="eccode"
						oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码">
                            </div>
                            <div class="weui-cell__ft">
                                <button id="ebpcodebtn" class="weui-vcode-btn">获取验证码</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确定更换</a>
                </div>
            </div>
        </div>
        <!-- 邀请人 -->
        <div class="sign2" style="display:none;">
         	<i class="weui-icon-cancel" id="c-close1"></i>
        	<div class="Scont">
        		<input style="border-radius:1.5rem;margin-top:15%;text-align:center;" type="text" placeholder="请填写您的邀请人" maxlength="11" pattern="[0-9]*" class="iuphone"/>
                <p style="text-align:center;color:red;margin:4% 0%;">邀请人填写后不可更改哟~</p>
                <div class="sBtn">
                	<button style="background:#959595;" class="cancelInvite">取消</button>
                	<button style="background:#0065B3;" class="confirmInvite">确定</button>
                </div>
        	</div>	
        </div>
        <!-- 确定邀请人 -->
        <div class="sign3" style="display:none;">
         	<i class="weui-icon-cancel" id="c-close2"></i>
        	<div class="Scont">
                <p style="text-align:center;margin-top:10%;margin-bottom:3%;">您已确认15000000000为邀请人</p>
                <button>收到</button>
        	</div>	
        </div>
        
        
        <!-- 弹出框 -->
        <div class="js_dialog" id="iosDialog2" style="opacity: 1; display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <span class="c-c-b c-f-s-16" style="margin:1rem auto;display: inline-block;">提示</span>
                <div class="weui-dialog__bd c-c-3 c-f-s-16">您确定要退出登录吗？
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_default">取消</a>
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确认</a>
                </div>
            </div>
        </div>

        <!-- 即将到期 -->
        <div class="js_dialog" id="iosDialog4" style="opacity: 1; display: none;">

            <div class="weui-mask"></div>
            
            <div class="weui-dialog" style="max-width:85%;width:85%;">
            <i class="weui-icon-cancel" id="c-login-close3"></i>
                <span class="c-f-s-16" style="margin:0.6rem auto;display: inline-block;font-size:18px;">即将到期</span>
                <div class="weui-dialog__bd c-c-3" style="padding:0 0.3rem;">
                	
                <div id="wrapper">
					<div class="scroller">
						<ul>
							<li>
								<div>领取时间</div>
								<div>数量</div>
								<div>过期时间</div>
							</li>
							<!-- <li>
								<div>2018-06-08</div>
								<div>12</div>
								<div>2018-12-31</div>
							</li>
							<li>
								<div>2018-06-08</div>
								<div>12</div>
								<div>2018-12-31</div>
							</li>
							<li>
								<div>2018-06-08</div>
								<div>12</div>
								<div>2018-12-31</div>
							</li>
							<li>
								<div>2018-06-08</div>
								<div>12</div>
								<div>2018-12-31</div>
							</li> -->
						</ul>
						<div class="more"><i class="pull_icon"></i><span>上拉加载...</span></div>
					</div>
                </div>
                <div class="btnClose">我知道了</div>
            </div>
        </div>


		<!-- 注册必读 -->
		<div id="reg">
			<div class="titleBar">
	             <div class="titleBar-back">
	                <img src="${stax}/assets/images/history.png" />&nbsp;返回
	             </div>
	            <div class="titleBar-text am-text-truncate">注册必读</div>
	        </div>
	        <div class="rule">
	        	<p>1.活动对象：建设银行天津市分行个人手机银行签约用户。</p>
	        	<p>2.参与方式：登陆建行个人手机银行，悦享生活频道点击“天津惠”图标，校验个人手机号后注册“天津惠”平台即可。“天津惠”平台仅使用注册手机号作为客户识别唯一标示，不收集任何其他客户个人信息。</p>
	        	<p>3.“天津惠”平台不会以任何方式，向任何外部机构泄露客户平台相关信息。</p>
	        	<p>4.“天津惠”平台是建设银行天津市分行搭建起的个人手机银行线上营销推广平台，客户参加“天津惠”平台活动，如果需要执行支付操作，均跳转客户建行个人手机银行进行操作，支付成功后跳转回“天津惠”平台。</p>
	        	<p><b>5.“天津惠”平台销售商品均明码标价，不向客户收取任何其他服务费。</b></p>
	        	<p><b>6.参加“天津惠”平台活动，需要跳转客户个人手机银行操作支付交易，请您不要向他人泄露手机银行登陆密码、交易密码、短信验证码。</b></p>
	        	<p>7.除指定条件客群参与的活动外，“天津惠”平台其他活动客户均可以自由选择是否参与。</p>
	        	<p>8.“天津惠”平台各项活动均附有详细规则说明，请您仔细阅读。</p>
	        	<p>9.活动过程中，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。</p>
	        	<p>10.客户参加“天津惠”平台活动，在交易真实有效、操作正常无误的基础上，如果因银行责任而造成消费者损失，经责任认定确认后，银行对客户进行相应补偿。</p>
	        	<p>“天津惠”平台由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议。</p>
	        	<p style="margin-bottom:1rem;">“天津惠”平台的最终解释权归中国建设银行股份有限公司天津市分行所有。客服电话：022-58750200。</p>

	        </div>
    </div><!-- end container -->

</body>
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script src="${stax}/assets/js/iscroll4.js"></script>
<script src="${stax}/assets/js/iscrollAssist.js"></script>
<script src="${stax}/assets/js/jquery.cookie.js?v=1"></script>
<script>

	var indexUrl = localStorage.getItem("homeUrl");
	var bankid = localStorage.getItem("bankId");
	var bankuid = localStorage.getItem("bankuid");
	var con = "${con}";
	var isShow = "${isShow}";
	
	var expiresDate= new Date();
	expiresDate.setTime(expiresDate.getTime() + (3600000));

	$(function(){
		/************************校验用户是否拥有填写邀请人的权限******************************/
		console.log(isShow);
		if(isShow&&isShow!=""){
			$(".receive").show();
		}else{
			$(".receive").hide();
		}
		//重要提示
		/* if($.cookie('visitTime')==='ok'){
			return;
		}else{
			weui.alert("尊敬的惠滨城用户：<br><span style='margin-left:15px'>近期因移动运营商年末系统维护，期间有可能导致话费充值不到账，活动平台会在运营商维护结束后尽快为您进行充值处理，请您耐心等待，给您带来不便敬请谅解。</span>",
				function(){$.cookie('visitTime', "ok", { expires: expiresDate });},
				{className:'sysfail'}
			);
		}; */
		if(con&&con!=''){
			$(".c-c-r").css("display","block");
		}
		
		
		$("#pkbg").width(window.innerWidth);
        $("#pkbg").height(window.innerHeight-44);

        $('.c-ding-right').on('click', function () {
        	toPage('ingot');
        });

        /*底部tab切换*/
        $('.weui-navbar__item').on('click', function () {
            $(this).addClass('weui-bar__item_on').siblings('.weui-bar__item_on').removeClass('weui-bar__item_on');
        });

        /*弹出框1  绑定手机*/
        $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
        	if($("#checked").prop("checked") == true){
        		register();
        	}

        });

        $('#iosDialog3').on('click', '.weui-dialog__btn', function(){
        	changePhone();
        });

        //弹出框即将到期；
        $(".label").click(function(){
        	$('#iosDialog4').css("display","block");
        	pullUpAction();
        });
        
        $('#iosDialog4').on('click', '#c-login-close3', function(){
        	$('#iosDialog4').css("display","none");
        });
        $('#iosDialog4').on('click', '.btnClose', function(){
        	$('#iosDialog4').css("display","none");
        });
        
    
        	var myscroll = new iScroll("wrapper",{
    			onScrollMove:function(){
    				if (this.y<(this.maxScrollY)) {
    					$('.pull_icon').addClass('flip');
    					$('.pull_icon').removeClass('loading');
    					$('.more span').text('释放加载...');
    				}else{
    					$('.pull_icon').removeClass('flip loading');
    					$('.more span').text('上拉加载...')
    				}
    			},
    			onScrollEnd:function(){
    				if ($('.pull_icon').hasClass('flip')) {
    					$('.pull_icon').addClass('loading');
    					$('.more span').text('加载中...');
    					pullUpAction();
    				}
    			},
    			onRefresh:function(){
    				$('.more').removeClass('flip');
    				$('.more span').text('上拉加载...');
    			}

    		});

 
        	
        	
            var index = 0;
            function pullUpAction(){
           	//在这个发送ajax请求    			
           	$.ajax({
           		type:"GET",
           		url:"${ctx}/mycenter/findingmdueTime.json",
           		data:"userId="+encodeURIComponent(localStorage.getItem("userId"))+"&limit="+index+"&length="+5,
           		success:function(req){
           			if(req.msg&&req.msg!=""){
           				weui.alert(req.msg);
           			}
           			if(req.daList&&req.daList!=""){
       			    	setTimeout(function(){
       			    		for (var i = 0; i < req.daList.length; i++) {
       			    			$('.scroller ul').append("<li><div>"+req.daList[i].addTime+"</div><div>"+req.daList[i].ingotNum+"</div><div>"+req.daList[i].dueTime+"</div></li>");
       			    			index++;
       			    		}
       			    				
       			    		myscroll.refresh();
       			    	},1000);
           				
           			}else{
           				$('.more').html('没有更多数据了');
           			}
           		},
           		error:function(err){
           			console.log(err);
           		}		
           	});		
           	//
           			
           	/* if($("ul li").length >=10){
       			$('.more').html('没有更多数据了');
       		} */
           }
           
           
        	
        	
        	
        	
        	
    		if ($('.scroller').height()<$('#wrapper').height()) {
    			$('.more').hide();
    			myscroll.destroy();
    		}
    	
      
        

        
        if(localStorage.getItem("userId")){
			$('#showPhone').html("${phone}");
			$(".phonedit").css('display','inline-block');
			$(".c-changephone").css('display','block');
			$('.phonedit').on('click', function(){
				$('#iosDialog3').fadeIn(200);
				getexCode();
	        });
		}else{
			$('#showPhone').parent().on('click', function(){
				$('#iosDialog1').fadeIn(200);
				getCode();
	        });
		}

        $('#iosDialog2').on('click', '.weui-dialog__btn', function(){
            $(this).parents('.js_dialog').fadeOut(200);
        });

        /*验证手机号*/
        $(document).on("input propertychange","#phone",function(e){
            if(e.type === "input" || e.orignalEvent.propertyName === "value"){
                this.value=this.value.replace(/\D/gi,"");
                if(this.value.length == 11){
                    if(checkPhone(this.value)){
                    	$('#bpcodebtn').attr("disabled",false);
                    	$("#bpcodebtn").addClass("c-c-b");
                    }
                }else{
                	$('#bpcodebtn').attr("disabled",true);
                	$("#bpcodebtn").removeClass("c-c-b");
                }
            }
        });
        $(document).on("input propertychange","#phone2",function(e){
            if(e.type === "input" || e.orignalEvent.propertyName === "value"){
                this.value=this.value.replace(/\D/gi,"");
                if(this.value.length == 11){
                    if(checkPhone(this.value)){
                    	$('#ebpcodebtn').attr("disabled",false);
                    	$("#ebpcodebtn").addClass("c-c-b");
                    }
                }else{
                	$('#ebpcodebtn').attr("disabled",true);
                	$("#ebpcodebtn").removeClass("c-c-b");
                }
            }
        });

        $("#c-login-close").on("click",function(){
      
            $("#iosDialog1").hide();
        });

        $("#c-login-close2").on("click",function(){
            $("#iosDialog3").hide();
        });

        var avatar = "${avatar}";
        if (avatar) {
        	$('.avarta').attr('src', avatar);
        }
	});

   	var bClick = false;
	var timer;
   	function getCode(){
   	/*验证码倒计时*/
		var oBtn = document.getElementById("bpcodebtn");
       	oBtn.onclick = function(){
			if(bClick == false && checkPhone($("#phone").val())){
				$('#phone').attr("disabled",true);
	            bClick = true;
           		var loading = weui.loading('正在加载...');	//loading
           		$.ajax({
	       			type: "GET",
	       			url: "${ctx}/tjhui/getcode.json",
	       			data: "phone="+$('#phone').val()+"&r="+Math.random(),
	       			success: function(resp){
	       				loading.hide();
	       				if(resp.msg && resp.msg.length > 0){
	       					$('#iosDialog1').fadeOut(200);
	       					weui.alert(resp.msg);
	       					initTimer();
	       				}else{
                            $("#bpcodebtn").removeClass("c-c-b");
	       					var s = 60;
	       	                timer = setInterval(function(){
	       	                    s--;
	       	                    oBtn.innerHTML = s+"秒后重发";

	       	                    if(s == 0){
	       	                    	initTimer();
	       	                    }
	       	                },1000);
	       				}
	       			},
	       			error:function(er){
	       				loading.hide();
	       				$('#phone').attr("disabled",false);
	       				console.log(er);
	       			}
				});
			}
		};
	}

   	function getexCode(){
   		/*验证码倒计时*/
		var oBtn = document.getElementById("ebpcodebtn");
       	oBtn.onclick = function(){
			if(bClick == false && checkPhone($("#phone2").val())){

				$('#phone2').attr("disabled",true);
	            bClick = true;
           		var loading = weui.loading('正在加载...');	//loading
           		$.ajax({
	       			type: "GET",
	       			url: "${ctx}/mycenter/getexcode.json",
	       			data: "phone="+$('#phone2').val()+"&userId="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
	       			success: function(resp){
	       				loading.hide();
	       				if(resp.msg && resp.msg.length > 0){
	       					$('#iosDialog3').fadeOut(200);
	       					weui.alert(resp.msg);
	       					$('#phone2').attr("disabled",false);
	       					bClick = false;
	       				}else{
                            $("#ebpcodebtn").removeClass("c-c-b");
	       					var s = 60;
	       	                timer = setInterval(function(){
	       	                    s--;
	       	                    oBtn.innerHTML = s+"秒后重发";

	       	                    if(s == 0){
	       	                    	initTimer();
	       	                    }
	       	                },1000);
	       				}
	       			},
	       			error:function(er){
	       				loading.hide();
	       				$('#phone2').attr("disabled",false);
	       				console.log(er);
	       			}
				});
			}
		};
	}

	function initTimer(){
       	bClick = false;
   		$('#phone').attr("disabled",false);
   		$('#phone2').attr("disabled",false);
       	clearInterval(timer);
       	$('#bpcodebtn').html("获取验证码").addClass("c-c-b");
       	$('#ebpcodebtn').html("获取验证码").addClass("c-c-b");
   	}

 	/*验证手机号*/
    function checkPhone(phone){
        var phone = parseInt(phone);
        var reg = /^1(3|4|5|6|7|8|9)\d{9}$/;
        if(!reg.test(phone)){
            weui.toast('请输入正确的手机号码', {
                duration: 1000,
                className: 'toast-warn',
                callback: function(){
                    //document.querySelector("#phone").value = "";
                }
            });
            return false;
        }
        return true;
    }

 	/**绑定手机**/
 	function register(){

 		var phone = $('#phone').val();
 		var ccode = $('#ccode').val();
 		var iuphone = $("#iuphone").val();
 		if(!checkPhone(phone))return;
 		if(!ccode){
 			weui.toast('请输入验证码', {
	            duration: 1000,
	            className: 'toast-warn',
	            callback: function(){
	            }
	        });
 			//$('#ccode').focus();
 			return;
 		}
        var loading = weui.loading('正在加载...');  //loading
 		$.ajax({
			type: "GET",
			url: "${ctx}/tjhui/register.json",
			data: "phone="+phone+"&code="+ccode+"&bankId="+bankid+"&bankuid="+bankuid+"&iuphone="+iuphone
					+"&cd="+localStorage.getItem("cd")+"&tm="+localStorage.getItem("tm")+"&mc="+localStorage.getItem("mc")+"&r="+Math.random(),
			success: function(resp){
				console.log(resp);
				loading.hide();
				if(resp.msg){
					weui.alert(resp.msg);
					initTimer();
				}else if(resp.user){
					setUserLocal(resp.user);
					$('#iosDialog1').fadeOut(200);
					$('#showPhone').html(resp.user.aphone);
					if (resp.exists && resp.exists == "n") {
// 						var da1 = new Date("2019-01-01 00:00:00").getTime();
// 			  			var da2 = new Date().getTime();
// 			  			if(da2>=da1){
			  				
			  				if(resp.isolduser&&resp.isolduser!=""){
								weui.alert(resp.isolduser);
							}
// 			  			}else{
// 			  				window.location.href = "${ctx}/sg/index.do?bankid="+encodeURIComponent(localStorage.getItem("bankId"))
// 							+"&userId="+encodeURIComponent(localStorage.getItem("userId")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
// 			  			}
					}
					
					findingmCount();
					
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
   		});
 	}

 	/**更换手机**/
 	function changePhone(){

        var loading = weui.loading('正在加载...');  //loading
 		var phone = $('#phone2').val();
 		var ccode = $('#eccode').val();
 		if(!checkPhone(phone)){
 			loading.hide();
 			return;
 		}
 		if(!ccode){
 			loading.hide();
 			weui.toast('请输入验证码', {
	            duration: 1000,
	            className: 'toast-warn',
	            callback: function(){
	            }
	        });
 			//$('#ccode').focus();
 			return;
 		}
 		$.ajax({
			type: "GET",
			url: "${ctx}/mycenter/changePhone.json",
			data: "nphone="+phone+"&code="+ccode+"&userId="+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
			success: function(resp){
				loading.hide();
				if(resp.msg){
					weui.alert(resp.msg);
					initTimer();
				}else{
					//赋值user
					localStorage.setItem("userPhone", resp.phone);

// 					$('#iosDialog3').fadeOut(200);
// 					$('#showPhone').html(duser.phone);
					window.location.href = window.location.href;
				}
			},
			error:function(er){
				loading.hide();
				console.log(er);
			}
   		});
 	}

 	/**返回首页**/
 	function toHome(){
 		var loading = weui.loading('正在加载...');	//loading
 		window.location.href = '${ctx}/tjhui'+indexUrl;
 	}

 	function toPage(flag){
 		if(!checkUser()) return;
 		var loading = weui.loading('正在加载...');	//loading
  		if(flag == 'exchange'){			//订单
  	    	window.location.href = "${ctx}/mycenter/myexchange.do";
  		} else if (flag == 'ingot') {
  			window.location.href = "${ctx}/mycenter/myingot.do?userId=" + encodeURIComponent(localStorage.getItem("userId"));
  		} else if (flag == 'order') {
  			window.location.href = "${ctx}/mycenter/myorder.do";
  		} else if (flag == 'prize') {
  			window.location.href = "${ctx}/mycenter/myprize.do";
  		}else if(flag == 'shopOrder'){
  			loading.hide();
//   			isingotshop();
  			window.location.href ="${ctx}/byyzh/shoporderlist.do?ssdid="+encodeURIComponent(localStorage.getItem("ssdid"));
  		}else if (flag == 'address') {	//收货地址
  			$.ajax({
  				type: "GET",
  				url: "${ctx}/mycenter/conntuan.json",
  				data: "userId=" + encodeURIComponent(localStorage.getItem("userId")),
  				success: function(resp){
  					if(resp.id){
  						localStorage.setItem("tjuserId", resp.id);
  						window.location.href = "${ctx}/useraddress/index.do";
  					}
  				},
  				error:function(er){
  					loading.hide();
  					console.log(er);
  				}
  	   		});

  		} else if (flag == 'tuan') {		//拼团
  			loading.hide();

//   			if("luZDi5/1si5XUNYBtnxPf/65WbfUZC/L".indexOf(localStorage.getItem("userPhone"))>-1
//   				||"vT8sxbpKRPLs3Cb04LDNAP65WbfUZC/L".indexOf(localStorage.getItem("userPhone"))>-1
//   				||"+NJI+gWmniDY396BS8tRef65WbfUZC/L".indexOf(localStorage.getItem("userPhone"))>-1
// 				||"v1d/aw5qinFrWzWqh3RMEP65WbfUZC/L".indexOf(localStorage.getItem("userPhone"))>-1
// 				||"YnEEDB+2SPld+tizhnbi2v65WbfUZC/L".indexOf(localStorage.getItem("userPhone"))>-1){
  				window.location.href = "${ctx}/mycenter/mytuan.do";
// 			}else{
// 				weui.alert('暂不开放');
// 			}

  		}else if(flag == 'invite') {
  			//老带新
  			window.location.href = "${ctx}/jsp/mycenter/myInvite.jsp";
  		}else if(flag == 'receive'){
  			loading.hide();
  			receive();
  		}else{
  			loading.hide();
  			weui.alert('暂不开放');
  		}
 	}

	function isingotshop(){
  		$.ajax({
  			type: "POST",
			url: "${ctx}/byyzh/isingotshop.json",
			data: "userId="+encodeURIComponent(localStorage.getItem("userId")),
			success:function(req){
				if(req.status&&req.status=="1"){
					window.location.href ="${ctx}/byyzh/shoporderlist.do?ssdid="+encodeURIComponent(localStorage.getItem("ssdid"));
				}
			},
			error:function(err){
				console.log(err);
			}
  		});
  	}



 	function checkUser(){
 		if(!localStorage.getItem("userId")){
 			$('#iosDialog1').fadeIn(200);
 			getCode();
 			return false;
 		}
		return true;
  	}

 	function checkLength(obj,n){
        obj.value = obj.value.replace(/\D/g,'')
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }

 	function setUserLocal(user){
    	//用浏览器存储
		localStorage.setItem("userId", user.id);
		localStorage.setItem("userPhone", user.phone);
    }

 	//注册必读；

    if($("#checked").prop("checked") == true){
    	$("#btn").css("backgroundColor","#0066b3");
    }else{
    	$("#btn").css("backgroundColor","#ccc");
    }

    $("#checked").click(function(){
    	if($("#checked").prop("checked") == true){
        	$("#btn").css("backgroundColor","#0066b3");
        }else{
        	$("#btn").css("backgroundColor","#ccc");
        }
    });
    $(".register").click(function(){
    	$("#reg").css("display","block");
    });
    $(".titleBar-back").click(function(){
    	$("#reg").css("display","none");
    })
    
    
	function findingmCount(){
    	$.ajax({
       		type:"GET",
       		url:"${ctx}/mycenter/findingmCount.json",
       		data:"userId="+encodeURIComponent(localStorage.getItem("userId")),
       		success:function(req){
       			if(req.con&&req.con!=""){
       				con = req.con;
       				$(".c-c-r").css("display","block");
       			}
       			
       		},
       		error:function(err){
       			console.log(err);
       		}		
       	});	
    }
    
    $(".weui-icon-cancel").click(function(){
    	$(".sign1 , .sign2 , .sign3").hide();
    });
    $(".sign3 button").click(function(){
    	$(".sign3").hide();
    });
    
    $(".cancelInvite").click(function(){
    	$(".sign2").hide();
    });
    //补填我的邀请人
    $(".confirmInvite").click(function(){
    	var iuphone = $(".iuphone").val();
    	if(checkPhone(iuphone)){
    		$.ajax({
        		url:'${ctx}/invitandreceive/addiup.json',
        		type:'post',
        		data:'phone='+iuphone+'&uid='+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
        		success:function(resp){
        			if(resp.errMsg&&resp.errMsg!=""){
        				weui.alert(resp.errMsg);
        	    		$(".sign2").hide();
        			}else{
        				var scont = "您已确认"+resp.phone+"为邀请人，为邀请人，您的“老带新”活动参与状态正在审核中，审核通过后，可获得津元宝奖励呦！";
        				weui.alert(scont);
        	    		$(".sign2").hide();
        			}
        			console.log(resp);
        		}
        	});
    	}else{
    		weui.alert("请输入正确的手机号码");
    		$(".sign2").hide();
    	}
    });
    
    function receive(){
    	$.ajax({
    		url:'${ctx}/invitandreceive/cuawiup.json',
    		type:'post',
    		data:'uid='+encodeURIComponent(localStorage.getItem("userId"))+"&r="+Math.random(),
    		success:function(resp){
    			console.log(resp);
    			if(resp.errMsg&&resp.errMsg!=""){
    				weui.alert(resp.errMsg);
    			}else{
    				if(resp.isWrite&&resp.isWrite!=""){
    					$(".sign3").show();
    					var scont = "";
   						if(resp.ais==0){
   							scont = "您已确认"+resp.phone+"为邀请人，您的“老带新”活动参与状态正在审核中，审核通过后，可获得津元宝奖励呦！";
   						}else if(resp.ais==2){
   							scont = "您已确认"+resp.phone+"为邀请人，您不是2019年建行手机银行新签约客户，审核未能通过。您可以推荐朋友参加“天津惠”活动，获取津元宝。";
   						}else{
   							scont = "您已确认"+resp.phone+"为邀请人，您已达成目标，获得5锭津元宝，您可以推荐朋友参加“天津惠”活动，获取津元宝。";
   						}
    					$(".sign3 .Scont p").html(scont);
    				}else{
    					$(".sign2").show();
    				}
    			}
    		}
    	});
    }
    
    /* 客服电话 */
    var setDate1= new Date("2019/04/30 12:00:00").getTime();
	var setDate2= new Date("2019/05/04 23:00:00").getTime();
    $(".kefu").on("click",function(){
    	var myDate = new Date().getTime();
		if(myDate >= setDate1){
			$(".inform").show();			
		}
		if(myDate >= setDate2){
			$(".inform").hide();
			$(".slide").show();
	    	$(".slideTo").slideDown();
		}
    	
    });
    
    $(".inform .c-close2").click(function(){
    	$(".inform").hide();
    })
    $(".quxiao , .slideTo a").click(function(){
    	$(".slideTo").slideUp();
    	$(".slide").hide();
    })
    
    
    
</script>
</body>
</html>
