<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>购买成功</title> 
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
   <style type="text/css">
        p{font-size: .6rem;}
        .c-imagetag{top: .8rem;}
        .picTxtList .c-list-left-div{width: 14rem;}
        .c-title-right{font-size: 14px;line-height: 1.8;float: right;margin-right: .6rem;}
        .weui-icon_msg{font-size:45px;color:#09b6f2;}
        .c-leftimg-rightall .icon-box__title{color:#faa519;font-size:.8rem;}
        .icon-box {justify-content: center;margin-bottom: 15px;padding-top:10px;padding-bottom:3rem;display: -webkit-box;display: -webkit-flex;display: flex;-webkit-box-align: center;-webkit-align-items: center;align-items: center;
        }
        .c-leftimg-rightall .weui-media-box_appmsg .weui-media-box__hd{width:4rem;height:4rem;}
        .weui-navbar__item.weui-bar__item_on{background: #09b6f2;color: #fff;}
        .c-p-l{float: left;display: inline-block;width:30%;height: 2rem;}
        .c-p-r{float: right;display: inline-block;width:70%;text-align: right;height: 2rem;}
        .weui-media-box{clear: both;height: 3rem;}
        .weui-media-box{padding-bottom: 5px;}
        .c-m-b-10{margin-bottom: 1rem;}
        .weui-panel__bd{position: relative;}
        .c-t-name{position: absolute;top: -.9rem;left: 0;color: #09b6f2;font-size: .6rem;padding-left:15px;}
        .c-tishi{position: absolute;bottom: .5rem;left: 0;font-size: .6rem;width: 100%;text-align: center;}
        .c-gclist .frame{width:13rem;height:.5rem;background-color:#dcdcdc;margin:0 auto;border-radius:1rem;position: relative;}
.c-gclist .bar{width:10%; height:100%; position:absolute; left:0; top:0; background:#aaa;border-top-left-radius: 1rem;
    border-bottom-left-radius:1rem;}
        .c-gdt{margin-bottom: 10px;padding-bottom: 10px;padding-top: 10px;}
        .c-box{display: flex;padding:.5rem;}
        .c-box .aaa{background: url(${stax}/assets/images/goon.jpg) no-repeat;background-size:100%;width: 100%;height: 200px;text-align: center;padding-top: 1rem;}
        .c-box span{color:#0066b3;font-size: 1.5rem;}
        .c-box p{font-size: 1rem;}
        .c-box .c-btn{border:1px solid #0066b3;color: #0066b3;font-size: .7rem;border-radius:1rem;width:4.4rem;height: 1.4rem;line-height: 1.4rem;vertical-align: middle;display: inline-block;margin-top:.4rem;}
        .c-m-b-10{margin-bottom: .5rem;}
        .lll{display:block;padding-top:25px;}
    </style>
</head>
<body>

</body>
    <div class="container" style="background: #fff;">
        <div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">专属活动</div>
           <!--  <div class="titleBar-close">关闭</div> -->
        </div>
        

        <!-- 列表内容 -->
        <div class="c-content" style="background: #eee;">
            <!-- 充值成功 -->
            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10" style="margin-bottom: .5rem;">

                <div class="icon-box" style="margin-bottom: 0;">
                    <img src="../assets/images/okl.jpg" alt="" style="width:1.8rem;height: 1.8rem;">
                    <div class="c-tishi" style="color: #ff9500;width: 80%;left: 10%;">       订购成功，系统将在24小时内将兑换码发 送至您登录活动的手机号内，请注意查收。</div>
                </div>
            </div>

            <div class="weui-panel__bd c-leftimg-rightall c-m-b-10" style="height: 9rem;width:90%;padding:0% 5%;">
                <div class="weui-media-box" style="padding:0;">
                    <p class="c-p-l">商品名称：</p>
                    <p class="c-p-r">${prodName}</p>
                    <p class="c-p-l">支付金额：</p>
                    <p class="c-p-r">${prodMonery}元</p>
                    <p class="c-p-l">订单号：</p>
                    <p class="c-p-r">${orderNo}</p>
                    <p class="c-p-l">订购时间：</p>
                    <p class="c-p-r">${createDate}</p>
                </div>
            </div>

			 <div class="weui-panel__bd c-leftimg-rightall" style="height: 8rem;overflow: hidden;">
                <div class="c-box">
                    <div class="aaa">
                        <p>您还有<span>${homeMany}</span>次购买机会呦！</p>
                        <div class="c-btn"><p>继续购买</p></div>
                    </div>
                </div>
            </div>
        </div>


      
    </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/common.js"></script>

<script type="text/javascript">

		var bid="${bid}";
		if(bid){
			localStorage.setItem("bid", bid);
		}
		var uid ="${uid}";
		if(uid){
			localStorage.setItem("uid", uid);
		}
		var userPhone ="${userPhone}";
		if(userPhone){
			localStorage.setItem("userPhone", userPhone);
		}
		//判断没有购买次数的用户,有没有领取入门好礼
		var buyTimes = "${homeMany}";
		console.log(buyTimes);
		if(buyTimes == 0){
			$.ajax({
				type: "GET",
				url: "${ctx}/qrqmlogin/ledGift.json",
				data: "uid="+encodeURIComponent(localStorage.getItem("uid")),
				success: function(resp){
					$(".c-btn").hide();
					if(!resp.isHave){
						
// 						var da1 = new Date("2019-01-01 00:00:00").getTime();
// 			  			var da2 = new Date().getTime();
// 			  			if(da2>=da1){
			  				$(".aaa img").css("display","none");
			  				$(".c-box p").css("lineHeight","4rem");
// 			  			}else{
// 							var addimg = '<img src="../assets/images/ledGift.png" style = "width:270px; height:50px; margin:5px auto;" onclick="goLedGift()">';
// 							$(".aaa").append(addimg);
// 			  			}
						
					}else{
						$(".aaa p").addClass("lll");
					}
				}
			});
		}
		$(".c-btn").click(function(){
			$.ajax({
				type: "GET",
				url: "${ctx}/qrqmlogin/gotoDetailsPage.json",
				data: "bid="+encodeURIComponent(localStorage.getItem("bid")),
				success: function(resp){
					window.location.href ="${ctx}"+resp.indexUrl;
				}
			});
		});
		
		/**按返回键**/
		function toHome(){
			$.ajax({
				type: "GET",
				url: "${ctx}/qrqmlogin/gotoDetailsPage.json",
				data: "bid="
					+ encodeURIComponent(localStorage
							.getItem("bid")),
				success: function(resp){
					window.location.href ="${ctx}"+resp.indexUrl;
				}
			});
		}
		
		
		
		/**跳转至入门好礼页面**/
		function goLedGift(){
// 			var da1 = new Date("2019-01-01 00:00:00").getTime();
//   			var da2 = new Date().getTime();
//   			if(da2>=da1){
//   				weui.alert("活动已结束！");
//   				return;
  				
//   			}
			
// 			 window.location.href = "${ctx}/sg/index.do?bankid="+encodeURIComponent(localStorage.getItem("bid"))
// 			+"&userId="+encodeURIComponent(localStorage.getItem("uid")) + "&userphone="+encodeURIComponent(localStorage.getItem("userPhone"));
		}
</script>
</body>
</html>