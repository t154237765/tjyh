<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<html class="no-js">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=no" name="viewport">
<meta name="format-detection" content="telephone=no"/>
<title>跑马灯</title>
<link rel="stylesheet" href="${stax}/assets/css/amazeui.min.css">
<link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
<link rel="stylesheet" href="${stax}/assets/css/pmdcss/style.css">
<link rel="stylesheet" href="${stax}/assets/css/common.css"/>
<style type="text/css">
body{background: #fff;padding-top:44px;}
.sweet-alert{    background-color: transparent;font-family: 'Open Sans', 'Helvetica Neue', Helvetica, Arial, sans-serif;width: 478px;padding: 17px;border-radius: 5px;text-align: center;position: fixed;left: 50%;top: 50%;margin-left: -256px;margin-top: -200px;overflow: hidden;display: none;z-index: 99999;color:white}
	.sweet-alert p{color:white;font-weight:700;font-size:1rem}
    .detail{background: url(${stax}/assets/images/pmdtjimages/lottery1.png) no-repeat;background-size: 100% 100%;height: 28rem;padding: 0 1.6rem;padding-top: 4.4rem;}
    .detail ol{padding-left:0rem;height: 20rem;overflow: auto;font-size:.6rem;}
    .myPz{position: absolute;right: 1rem;top: -.9rem;z-index:989;}
    .myPz img{width: 4rem;height: 2rem;}
    .prize-img{background: #ffb4b5;height: 3rem;border-radius: 3px;}
    .prize-img div{display:table-cell;vertical-align: middle;height: 3rem;text-align: center;width: 4rem;}
    .prize-img span{color: #fff;font-size: .6rem;font-weight:bold;width:100%;display: inline-block;vertical-align: middle;line-height: 1.4;width: 3.8rem;}
    /*我的奖品*/
    .myPz_modal .prize-dialog{background: url(${stax}/assets/images/pmdtjimages/myPz.png) no-repeat;background-size: cover; }
    .myPz_modal .myPz-content{overflow: auto;font-size: .6rem;position: absolute;bottom: 1rem;left: 0;width: 100%;height: 10.6rem;padding: 0 10px 10px 10px;clear: both;}
    .myPz_modal .myPz-list div.myPz-left{width: 30%;float: left;margin-bottom:.4rem;text-align:right;color: #fe6464;}
    .myPz_modal .myPz-list div.myPz-right{width: 70%;float: left;margin-bottom:.4rem;text-align:left;padding-left:5%;}

    .nozige_modal .prize-dialog{background: url(${stax}/assets/images/pmdtjimages/nozige.png) no-repeat;background-size: cover;height: 18rem;}
    .bingo_modal .prize-dialog{background: url(${stax}/assets/images/pmdtjimages/bingo.png) no-repeat;background-size: cover;height: 16rem; }
    .bingo_yin_modal .prize-dialog{background: url(${stax}/assets/images/pmdtjimages/bingo-yin.png) no-repeat;background-size: cover;height: 18rem; }
    .runout_modal .prize-dialog{background: url(${stax}/assets/images/pmdtjimages/runout.png) no-repeat;background-size: cover;height: 18rem; }
    .notwin_modal .prize-dialog{background: url(${stax}/assets/images/pmdtjimages/nozige.png) no-repeat;background-size: cover;height: 18rem; }

    /*弹出框*/
    .alertText{margin-top:7rem;}
    .prize-head{color:#333;}
    .answer-btn{width: 50%;height: 1.7rem;border-radius: 5px;background: #ffb854;box-shadow: none;}
    .prizeshow{margin-top:2rem;}
    .prizeshow img{width:5rem;}
    .current-active{background: #ffd63f}
    .c-c-r{color:red;}
    .myPz-list{background: #fbfaf7;width: 100%;height: auto;margin-bottom: .4rem;float: left;clear: both;padding-top:.5rem;padding-bottom: .3rem;}
	
	/* 中奖公告 */
	.prizebox{background: url(${stax}/assets/images/pmdtjimages/prizebox.jpg) no-repeat;background-size: 100% 100%;height: 12rem;padding: 0 1.6rem;padding-top: 4.8rem;}
	.activity ul{height:7rem;overflow-y:hidden;position:relative;}
	.activity {width: 100%;position: relative;overflow: hidden;height: 110px;}
	.activity li{background:#fff;margin-bottom:.5rem;line-height:2rem;padding-left:.5rem;}

</style>
</head>
<body>
<!--页面内容-->
<div class="titleBar">
            <div class="titleBar-back" onclick="toHome()">
                <img src="${stax}/assets/images/history.png" />&nbsp;返回
            </div>
            <div class="titleBar-text am-text-truncate">供暖缴费抽奖</div>
            <!-- <div class="titleBar-close" onclick="alert('shutdown');">关闭</div> -->
        </div>
        <div class="titleBar-close">关闭</div>
<div class="wrap">
    <div class="content">
        <div class="am-g" style="position: relative;">
            <div class="myPz">
                <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_09.png">
            </div>
            <div class="am-u-sm-12 am-u-sm-centered lucky-container">
                <div class="am-u-sm-12 am-u-sm-centered">
                    <ul class="am-avg-sm-3 boxes">
                        <li class="box  am-vertical-align am-text-center pos-rel"><i
                                class="am-img-responsive am-vertical-align-bottom roll roll-1" data-id="1"></i></li>
                        <li class="box am-vertical-align am-text-center pos-rel "><i
                                class="am-img-responsive am-vertical-align-bottom roll roll-2" data-id="2"></i></li>
                        <li class="box  am-vertical-align am-text-center pos-rel"><i
                                class="am-img-responsive am-vertical-align-bottom roll roll-3" data-id="3"></i></li>
                        <li class="box  am-vertical-align am-text-center pos-rel"><i
                                class="am-img-responsive am-vertical-align-middle roll roll-8" data-id="8"></i></li>
                        <li class="box  am-vertical-align am-text-center pos-rel"  id="btn-luck" onclick="choujiang();"><img
                                src="${stax}/assets/images/pmdtjimages/btn.png" class="prize-img-btn"></li>
                        <li class="box  am-vertical-align am-text-center pos-rel"><i
                                class="am-img-responsive am-vertical-align-middle roll roll-4" data-id="4"></i></li>
                        <li class="box  am-text-center pos-rel"><i
                                class="am-img-responsive am-vertical-align-top roll roll-7" data-id="7"></i></li>
                        <li class="box  am-text-center pos-rel"><i
                                class="am-img-responsive am-vertical-align-middle roll roll-6" data-id="6"></i></li>
                        <li class="box   am-text-center pos-rel"><i
                                class="am-img-responsive am-vertical-align-middle roll roll-5" data-id="5"></i></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="prizebox">
    	<div class="activity" id="J_Activity">
			<ul>
				<!-- <li>
					<p>
						136****7985
						<span style="margin-left: 1.2rem;">IPhone8（64G）半价购善融券</span>
					</p>
				</li>
				 -->
			</ul>
		</div>
    </div>
    <div class="detail am-margin-top-sm">
        <ol>
           <!--  <li>本次秒杀活动为中国用户专享。</li>
            <li>活动期间每名用户最高可成功秒杀5次。</li>
            <li>活动期间使用任何舞弊行为的用户一经发现，即刻取消秒杀活动资格。</li>
            <li>每日秒杀的礼品数量有限，秒完即止。秒杀礼品库存数量在秒杀过程中实时变化，秒杀成功与否以实际结果为准。</li>
            <li>每名用户每天可成功参与一次秒杀。</li> -->
&nbsp;&nbsp;&nbsp;（1）活动内容：活动期间，根据客户在规定期间内使用建行手机银行App“悦享生活”缴纳大连地区取暖费的笔数获得抽奖次数。抽奖奖品为“惠滨城银豆”及“善融商城电子券”；<br>
&nbsp;&nbsp;&nbsp;（2）活动对象：大连分行手机银行取暖费缴费用户；<br>
&nbsp;&nbsp;&nbsp;（3）善融商城电子券、惠滨城银豆使用规则：<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;①  善融商城电子券：<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;电子券领取操作方式详见首页轮播图《善融商城电子券使用指南》。<br>
<img src="${stax}/assets/images/pmdtjimages/table.jpg" class="imgtable" style="width:100%">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;②  惠滨城银豆：<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;银豆可用于在惠滨城平台兑换话费。50颗银豆、100颗银豆、500颗银豆分别可兑换5元、10元、50元话费。参加惠滨城平台“诗词PK”“约惠有礼”等活动可获得更多银豆。<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:red">③ 用户所获电子券、银豆均在2017年12月31日后作废清零，请在个人中心及时兑换。</span><br>
&nbsp;&nbsp;&nbsp;（4）活动声明：活动过程中，不允许使用虚拟手机号注册天津惠并参加活动，参与者如出现作弊行为（如批量注册、虚假交易、恶意套利等）或使用外挂、插件及其他破坏活动规则，违背活动公平的方式，主办方有权取消您的交易资格及作弊订单，且有权取消您后续参与任意活动的权利，并追究法律责任。<br>
&nbsp;&nbsp;&nbsp;（5）本活动由北京博雅融联科技有限公司提供技术支持及相关服务，并负责处理、解决本次活动的相关争议,客服电话：400-810-9200 。<br>
            
        </ol>
    </div>
</div>
<!--模态框-->
<%-- <div class="am-modal prize_modal" tabindex="-1" id="prize_modal">
    <div class="am-modal-dialog prize-dialog pos-rel">
        <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_03.png" alt="" class="close-img pos-abs" />
        <p class="prize-head" id="prizetip">
            恭喜您<br />获得好利来2元抵现券一张！
        </p>
        <img src="${stax}/assets/images/pmdtjimages/1.png" alt="" class="alert-prize-img" />
        <div class="am-g am-g-collapse prize-btn ">
            <div class="am-u-sm-5 am-text-center am-u-sm-offset-1 phone-btn1">
                <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_07.png" alt="" class="" />
            </div>
            <div class="am-u-sm-5 am-text-center am-u-end">
                <a href="${stax}/tjdt/myPrize.do" id="myprize">
                    <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_09.png" alt="" class="" />
                </a>
            </div>

        </div>
    </div>
</div> --%>
<!--我的奖品-->
<div class="am-modal myPz_modal" tabindex="-1"  style="transform: translateY(14%);">
    <div class="am-modal-dialog prize-dialog pos-rel" style="margin-left: -3%;min-height: 16rem;">
        <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_03.png" alt="" class="close-img pos-abs" />
        <div class="myPz-content" id="myPrize">            
            <!-- <div class="myPz-list">
                <div class="myPz-left">中奖时间:</div>
                <div class="myPz-right">2014-10-10 24:20</div>
                <div class="myPz-left">奖品名称:</div>
                <div class="myPz-right">多味馒日式糕点270g*2袋</div>
                <div class="myPz-left">电子券编号:</div>
                <div class="myPz-right">D666666666666666666</div>
                <div class="myPz-left">验证码:</div>
                <div class="myPz-right">HHHHHHHHHH</div>
            </div> -->
            
        </div>
    </div>
</div>
<!--没资格弹窗-->
<div class="am-modal nozige_modal" tabindex="-1"  style="transform: translateY(2%);">
    <div class="am-modal-dialog prize-dialog pos-rel" style="min-height: 5rem;margin-left: -3%;">
        <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_03.png" alt=""  class="close-img pos-abs"/>
        <div class="am-g am-g-collapse alertText">
            <div class="am-u-sm-8 am-u-sm-centered">
                <p class="prize-head am-margin-top-sm ">很抱歉，您不具备本活动抽奖资格</p>
            </div>
        </div>
        <div class="am-g am-g-collapse " style="margin-top:2.8rem;">
            <div class="am-u-sm-10 am-u-sm-centered">
                <button class="answer-btn">确定</button>
            </div>
        </div>
    </div>
</div>

<!--未中奖弹窗-->
<div class="am-modal notwin_modal" tabindex="-1"  style="transform: translateY(2%);">
    <div class="am-modal-dialog prize-dialog pos-rel" style="min-height: 5rem;margin-left: -3%;">
        <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_03.png" alt=""  class="close-img pos-abs"/>
        <div class="am-g am-g-collapse alertText">
            <div class="am-u-sm-8 am-u-sm-centered" id="meizhong">
                
            </div>
        </div>
        <div class="am-g am-g-collapse " style="margin-top:2.8rem">
            <div class="am-u-sm-10 am-u-sm-centered">
                <button class="answer-btn">确定</button>
            </div>
        </div>
    </div>
</div>

<!--次数用完弹窗-->
<div class="am-modal runout_modal" tabindex="-1"  style="transform: translateY(2%);">
    <div class="am-modal-dialog prize-dialog pos-rel" style="min-height: 5rem;margin-left: -3%;">
        <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_03.png" alt=""  class="close-img pos-abs"/>
        <div class="am-g am-g-collapse alertText" style="margin-top: 7.6rem;">
            <div class="am-u-sm-8 am-u-sm-centered">
                <p class="prize-head am-margin-top-sm ">您抽奖次数已用完</p>
            </div>
        </div>
        <div class="am-g am-g-collapse " style="margin-top: 3rem;">
            <div class="am-u-sm-10 am-u-sm-centered">
                <button class="answer-btn">确定</button>
            </div>
        </div>
    </div>
</div>

<!--中奖弹窗-->
<div class="am-modal bingo_modal" tabindex="-1"  style="transform: translateY(2%);">
    <div class="am-modal-dialog prize-dialog pos-rel" style="min-height: 5rem;margin-left: -3%;">
        <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_03.png" alt=""  class="close-img pos-abs"/>
        <div class="am-g am-g-collapse">
            <div class="am-u-sm-8 am-u-sm-centered prizeshow" style="width: 36.6%;margin-top: 2rem;">
                <img src="" alt="" id="prizeimg"/>
            </div>
        </div>
        <div class="am-g am-g-collapse" style="margin-top: -1rem;">
            <div class="am-u-sm-8 am-u-sm-centered" id="zhongjiang" style="width: 86.67%;">
            
            </div>
        </div>
        <div class="am-g am-g-collapse">
            <div class="am-u-sm-10 am-u-sm-centered">
                <button class="answer-btn">确定</button>
            </div>
        </div>
    </div>
</div>

<!--中奖弹窗-->
<div class="am-modal bingo_yin_modal" tabindex="-1"  style="transform: translateY(2%);">
    <div class="am-modal-dialog prize-dialog pos-rel" style="min-height: 5rem;margin-left: -3%;">
        <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_03.png" alt=""  class="close-img pos-abs"/>
        <div class="am-g am-g-collapse">
            <div class="am-u-sm-8 am-u-sm-centered prizeshow" style="width: 36.6%;margin-top: 2rem;">
                <img src="" alt="" id="prizeimg-yin"/>
            </div>
        </div>
        <div class="am-g am-g-collapse" style="margin-top: -1rem;">
            <div class="am-u-sm-8 am-u-sm-centered" id="zhongjiang-yin">
            
            </div>
        </div>
        <div class="am-g am-g-collapse" style="margin-top:2.8rem">
            <div class="am-u-sm-10 am-u-sm-centered">
                <button class="answer-btn">确定</button>
            </div>
        </div>
    </div>
</div>

<!--分享模态框-->
<%-- <div class="am-modal prize_modal" tabindex="-1" id="share_modal">
    <img src="${stax}/assets/images/pmdtjimages/share.png" alt="" /> <span
        class="close-prize-rule pos-abs"></span>
</div> --%>
<!--再次答题-->
<div class="am-modal prize_modal" tabindex="-1" id="re-answer">
    <div class="am-modal-dialog prize-dialog pos-rel" style="min-height: 5rem;margin-left: -3%;">
        <img src="${stax}/assets/images/pmdtjimages/pmdalerttj_03.png" alt=""  class="close-img pos-abs"/>
        <div class="am-g am-g-collapse ">
            <div class="am-u-sm-10 am-u-sm-centered">
                <p class="prize-head am-margin-top-sm">每次答题只能获取一次抽奖，快去答题获取抽奖资格吧</p>
            </div>
        </div>
        <div class="am-g am-g-collapse ">
            <div class="am-u-sm-10 am-u-sm-centered">
                <button class="answer-btn">去答题</button>
            </div>
        </div>
    </div>
</div>

<div class="am-modal am-modal-loading am-modal-no-btn" tabindex="-1" id="my-modal-loading">
    <div class="am-modal-dialog" style="background: transparent; color: white">
        <div class="am-modal-hd" style="font-size: 1rem">正在载入...</div>
        <div class="am-modal-bd">
            <span class="am-icon-spinner am-icon-spin " style="font-size: 1rem"></span>
        </div>
    </div>
</div>

<!--在这里编写你的代码-->
	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/amazeui.min.js"></script>
	<script src="${stax}/assets/js/velocity.min.js"></script>
	<script src="${stax}/assets/js/utils.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
	<script src="${stax}/assets/js/pmdjs/jslottery.js?v=2"></script>
	 <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
	<script src="https://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
	<script>
	var userId = localStorage.getItem("userId");
	var msg = "${msg}";
	var prizes = ${prizes};
	var zhongList = ${zhongList};
	
	var isHas = false;
	 //console.log(prizeList);
       // $('.nozige_modal').modal('open');

        /*天津建行版本的js————————---------------------------------------------------------------------------*/
        //var store = $.AMUI.store;
        //var prizeList = ${prizes};
       /*  var prizeList =[
            '${stax}/assets/images/pmdtjimages/1.png',
            '${stax}/assets/images/pmdtjimages/2.png',
            '${stax}/assets/images/pmdtjimages/3.png',
            '${stax}/assets/images/pmdtjimages/4.png',
            '${stax}/assets/images/pmdtjimages/5.png',
            '${stax}/assets/images/pmdtjimages/6.png',
            '${stax}/assets/images/pmdtjimages/7.png',
            '${stax}/assets/images/pmdtjimages/8.png'
        ];
        var sWord = [
            "iphone 8(64G)",
            "海参礼盒<br/>500g*2盒",
            "红富士苹果<br/>10斤礼盒",
            "谢谢参与",
            "银豆40枚",
            "英伦菱形<br/>毛巾1份",
            "多味馒日式糕点<br/>270g*2袋",
            "稻花香米<br/>10斤"
        ] */
        prizeSet();
       /*  var remt = 0;	//剩余次数
        var prizes = [];	//奖品列表
        var buyer = {};	//抽奖者
        var onplays = false;//防止重复标记 */
        
        $(function() {			       	
        	
        	//alert(zhongList);
	        	$("#J_Activity ul").html('');
	        	if(zhongList && zhongList.length > 0){
		        	var num = zhongList.length;
		        	var lines = "";
		        	for(var i=0; i<num; i++){
		        		//var phone = zhongList[i].phone;
	        			//phone = phone.replace(/(\d{3})\d{4}(\d{4})/, '$1****$2');
		        		lines += '<li><p>'+zhongList[i].phone+' <span style="margin-left: 1.2rem;">'+zhongList[i].name+'</span></p></li>';
		        	}
	
		            $("#J_Activity ul").html(lines);
	        	}
        	
        	var listPanel = $('#J_Activity ul');
			var z = 0;//向上滚动top值
			function up() {//向上滚动
				listPanel.animate({//中奖结果
					'top' : (z - 55) + 'px'
				}, 2000, 'linear', function() {
					listPanel.css({
						'top' : '0px'
					}).find("li:first").appendTo(listPanel);
					up();
				});
			}
			up();
			
			//getAwardList()
		});
		
      //查询中奖名单
       /*  function getAwardList(){
        	$.ajax({
                type: "POST",
                url: "${stax}/pao/getawardinfo.json",
                data: "gameId="+gameId+"&last=1"+"&r="+Math.random(),
                success: function(data){
                	$("#J_Activity ul").html('');
                	if(data.plist && data.plist.length > 0){
        	        	var num = data.plist.length;
        	        	var lines = "";
        	        	for(var i=0; i<num; i++){
        	        		var phone = data.plist[i].phone;
                			phone = phone.replace(/(\d{3})\d{4}(\d{4})/, '$1****$2');
        	        		lines += '<li><p>'+phone+' <span style="margin-left: 1.2rem;">'+data.plist[i].prizeName+'</span></p></li>';
        	        	}

        	            $("#J_Activity ul").html(lines);
                	}
                },
                error: function(data){
                    alert("网络错误，请检查您的网络设置！");
                }
            });
        } */
      
        $(document).ready(function() {
			//alert(userId);
            // 我的奖品
            $('.myPz').on('click',function(){
            	if(msg!=null&& msg!=''){
            		msg = "活动将于11月20日10时开始";
            		weui.alert(msg);
                }else{					
                	myPrize();
                }            
            });

            /*页面相关按钮设置*/
            $('.close-img').on('click',function(){
                $(this).parents('.am-modal').modal('close');
            })
            $('.btn-set button,.alert-close1').on('touchstart',function(){
                $('#prize_modal').modal('close');
            });

            $('#answer-btn').on('touchstart',function(){
                answerAgain();
            });

            $('.answer-btn').on('click',function(){
                $('.notwin_modal').modal('close');
                $('.bingo_modal').modal('close');
                $('.nozige_modal').modal('close');
                $('.runout_modal').modal('close');
                $('.bingo_yin_modal').modal('close');
            });

            activeImage('${stax}/assets/images/pmdtjimages/bg.png');
            //prizeSet();
           // shareInit();
           
           
           if(msg!=null&& msg!=''){
        	   msg = "活动将于11月20日10时开始";
        	   weui.alert(msg);
        	   return;
           }
                    
           
        });

        
        
        
        function choujiang(){
        	//console.log(isHas);
        	if(isHas){
        		return;
        	}
        	isHas = true;
        	if(msg!=null&& msg!=''){
         	   weui.alert(msg);
         	   isHas = false;
         	   return;
            }     
        	//var loading = weui.loading('', { className : 'loading' }); //loading
        	$.ajax({
        		type:"POST",
        		url:"${ctx}/pao/award.json?uid="+encodeURIComponent(userId)+"&r="+Math.random(),
        		success:function(data){
        			
        			//loading.hide();
        			if(data.msg!=null&& data.msg!=''){
        				 isHas = false;   
        				 weui.alert(data.msg);        	         	  
        	         	   return;
        	            }
        			if(data.status!=null&&data.status=='0'){ //没有抽奖资格
        				$('.nozige_modal').modal('open');
        				isHas = false;
        				return;
        			}
        			
        			if(data.status!=null&&data.status=='1'){ //抽奖次数已用完
        				$('.runout_modal').modal('open');
        				isHas = false;
     	         	    return;
        			}
        			
        			if(data.status!=null&&data.status=='2'){ //抽中谢谢参与       				
        				for(var i=0; i<prizes.length; i++){	//查找对应的id
	                        if(prizes[i].id == data.result){
	                        	lottery.prize = i+1;
	                        	lottery.reset();
	                        	lottery.status = '2';
	                            setTimeout(function(){
	                                
	                                //console.log(lottery.prize);
	                                /*  $('.alert-prize-img').attr('src',prizeList[i].picUrl);
	                                if(prizeList[i].fillMoney && prizeList[i].fillMoney > 0){
	                                    $('#prizetip').html('恭喜您<br />获得'+prizeList[i].name+'一张！');
	                                }else{
	                                    $('#prizetip').html(prizeList[i].name);
	                                } */    
	                              
									$("#meizhong").html('');
	                				var d = '<p class="prize-head am-margin-top-sm ">很遗憾，您本次未中奖<br>还有<span class="c-c-r">'+data.remain+'</span>次抽奖机会</p>';
	                				$("#meizhong").append(d);
	                            	//$('.notwin_modal').modal('open');
// 			        				isHas = false;
	                            },2000);  
	                          
	                            break;
	                   		}
        				}
        			}
        			
        			if(data.status!=null&&data.status=='3'){ //中奖        			
        				for(var i=0; i<prizes.length; i++){	//查找对应的id
                            if(prizes[i].id == data.result){

                                lottery.prize = i+1;

                                lottery.reset();
                                lottery.status = '3';
                                setTimeout(function(){
                                    
                                    //console.log(lottery.prize);
                                    /*  $('.alert-prize-img').attr('src',prizeList[i].picUrl);
                                    if(prizeList[i].fillMoney && prizeList[i].fillMoney > 0){
                                        $('#prizetip').html('恭喜您<br />获得'+prizeList[i].name+'一张！');
                                    }else{
                                        $('#prizetip').html(prizeList[i].name);
                                    } */ 
                                    

                    				$("#zhongjiang").html('');
                    				$("#prizeimg").prop("src",data.picUrl); //改变图片
                    				//obj.src=resp.toUrl;/
                    				var d = '<p class="prize-head am-margin-top-sm ">恭喜您获得<br>'+data.name+' <br>还有<span class="c-c-r">'+data.remain+'</span>次抽奖机会</p>';
                    				$("#zhongjiang").append(d);
                    				//$('.bingo_modal').modal('open');
 
// 			        				isHas = false;
                                },2000);  

                                break;
                       		}; 
        				 	         	
        				};
	
        			};
        			
        			
        			if(data.status!=null&&data.status=='4'){ //中奖         银豆			
        				for(var i=0; i<prizes.length; i++){	//查找对应的id
                            if(prizes[i].id == data.result){

                                lottery.prize = i+1;

                                lottery.reset();
                                lottery.status = '4';
                                setTimeout(function(){
                                    
                                    //console.log(lottery.prize);
                                    /*  $('.alert-prize-img').attr('src',prizeList[i].picUrl);
                                    if(prizeList[i].fillMoney && prizeList[i].fillMoney > 0){
                                        $('#prizetip').html('恭喜您<br />获得'+prizeList[i].name+'一张！');
                                    }else{
                                        $('#prizetip').html(prizeList[i].name);
                                    } */ 
                                    

                    				$("#zhongjiang-yin").html('');
                    				$("#prizeimg-yin").prop("src",data.picUrl); //改变图片
                    				//obj.src=resp.toUrl;/
                    				var d = '<p class="prize-head am-margin-top-sm ">恭喜您获得<br>'+data.name+' <br>还有<span class="c-c-r">'+data.remain+'</span>次抽奖机会</p>';
                    				$("#zhongjiang-yin").append(d);
                    				//$('.bingo_modal').modal('open');
 
// 			        				isHas = false;
                                },2000);  

                                break;
                       		}; 
        				 	         	
        				};
	
        			};
        			
        			
        			
        			
        		},
        		 error : function(data) {
                     //loading.hide();
                     isHas = false;
                     weui.alert("网络错误，请检查您的网络设置！");
                     
                 }
        	});
        	
        	
        	
        }
        
     
        
        var isHb = false;
        function myPrize(){        	
        	var loading = weui.loading('', { className : 'loading' }); //loading
        	if(isHb){
        		return;
        	}
        	isHb = true;
        	
        	$.ajax({
        		type:"POST",
        		url:"${ctx}/pao/myprize.json?uid="+encodeURIComponent(userId)+"&r="+Math.random(),
        		success:function(data){
        			 loading.hide();
        			 isHb = false;
        			if(data.msg!=null&& data.msg!=''){
     	         	   weui.alert(data.msg);    	         	   
     	         	   return;
     	            }	
        			
        			if(data.myPrize!=null && data.myPrize!=''){
        				//var prize = data.myPrize;
        				$("#myPrize").html('');
        				for(var i=0;i<data.myPrize.length;i++){
        					var code = '';
        					var verifyCode = '';
        					if(data.myPrize[i].code){
								code = data.myPrize[i].code;
							}  
        					if(data.myPrize[i].verifyCode){
        						verifyCode = data.myPrize[i].verifyCode;
							} 
        					
        					var b = 							//银豆
        	           	 '<div class="myPz-list">'+
	                        '<div class="myPz-left">中奖时间:</div>'+
	                        '<div class="myPz-right">'+data.myPrize[i].createDate+'</div>'+
	                        '<div class="myPz-left">奖品名称:</div>'+
	                        '<div class="myPz-right">'+data.myPrize[i].name+'</div>';
	                       
	                        
	                       if(data.myPrize[i].money!='40.0'){    
	                        b+= '<div class="myPz-left">电子券编号:</div>'+
	                        	'<div class="myPz-right">'+code+'</div>'+
	                        '<div class="myPz-left">验证码:</div>'+
	                        '<div class="myPz-right">'+verifyCode+'</div>';
	                       
	                       } 
	                        
	                        b+= '<div class="myPz-left">有效期:</div>'+
	                        '<div class="myPz-right">2017-12-31</div>'+
	                    '</div>';	                    	   
        	            
        	             $("#myPrize").append(b);
        				}		
        			}
        			$('.myPz_modal').modal('open');
                    $('.myPz_modal').css("marginTop","-220px");
        			
        		},
        		error : function(data) {
                    loading.hide();
                    weui.alert("网络错误，请检查您的网络设置！");
                    isHb = false;
                }
        		
        	});
        	
        }
        
        
        
        
        
         /* function doPlay(sign){
            if(onplays || lottery.rollStatus){
                console.log('onplays already!!!');
                return;
            }
            onplays = true;
            console.log('remt-->'+remt);
            if(remt > 0){
                $('#my-modal-loading').modal('open');
                $.ajax({
                    type:'POST',
                    url:'${ctx}/tjdt/play.json',
                    data:"pid="+store.get('pd')+"&bid="+buyer.id+"&pbid="+store.get('pbd')+"&r="+Math.random(),
                    success:function(res){
                        $('#my-modal-loading').modal('close');
                        console.log(res);
                        if(res.state){
                            for(var i=0; i<prizeList.length; i++){	//查找对应的id
                                if(prizeList[i].id == res.result){
                                    lottery.reset();
                                    setTimeout(function(){
                                        lottery.prize = i+1;
                                        console.log(lottery.prize);
                                        $('.alert-prize-img').attr('src',prizeList[i].picUrl);
                                        if(prizeList[i].fillMoney && prizeList[i].fillMoney > 0){
                                            $('#prizetip').html('恭喜您<br />获得'+prizeList[i].name+'一张！');
                                        }else{
                                            $('#prizetip').html(prizeList[i].name);
                                        }
                                    },2000);
                                    remt--;
                                    break;
                                }
                            }
                        }
                        onplays = false;
                        if(res.errMsg){
                            if("reflush" == res.errMsg)
                                $('#re-answer').modal('open');
                            else{
                                if(!sign)
                                    pop( res.errMsg );
                            }
                        }
                    }
                });
            }else{
                $('#re-answer').modal('open');
                onplays = false;
            }
        }  */

        function answerAgain(){
            $('#my-modal-loading').modal('open');
            $.ajax({
                type: "POST",
                url: "${ctx}/tjdt/checkbegin.json",
                data: "gameId="+store.get('gd')+"&buyerId="+store.get('bd')+"&pbuyerId="+store.get('pbd')+"&r="+Math.random(),
                success: function(resp){
                    $('#my-modal-loading').modal('close');
                    if(resp.msg && resp.msg != '')
                        pop( resp.msg );
                    if(resp.toUrl)
                        window.location.href = resp.toUrl;
                }
            });
        }

        /*活动背景图替换*/
        function activeImage(imgsrc){
            document.getElementsByClassName('wrap')[0].style.backgroundImage='url('+imgsrc+')';
        }

        /* 配置奖品函数*/
        function prizeSet(){
        	 for(var i=0;i<prizes.length;i++){
               // if(prizes[i]){   
            	    var name = prizes[i].name;
                	//var prizeImg=$('<img src="'+prizeList[i]+'"'+ '  class="prize-img"'+'>');
                    var prizeImg = $('<div class="prize-img"><div><span>'+name+'</span></div></div>');
                    $('.roll-'+(i+1)).after(prizeImg);                  
               // }

        	
        	}; 
        };

        /**返回首页**/
        function toHome(){
            window.location.href = '${ctx}'+localStorage.getItem("indexUrl");
        }
  		/*分享*/
  		/* function shareInit(){
  			
  			$.ajax({
  			   type: "POST",
  			   url: "${stax}/paomadeng/resendrelay.json",
  			   data: "paomadengId=${pmdid}&turl="+(window.location.href+'').split("&").join('%26'),
  			   success: function(resp){
  				   wx.config({
  					    debug: false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
  					    appId: resp.appId, // 必填，公众号的唯一标识
  					    timestamp: resp.timestamp, // 必填，生成签名的时间戳
  					    nonceStr: resp.nonceStr, // 必填，生成签名的随机串
  					    signature: resp.signature,// 必填，签名，见附录1
  					    jsApiList: ['checkJsApi','onMenuShareTimeline','onMenuShareAppMessage','onMenuShareQQ','onMenuShareWeibo','hideMenuItems',
  					                'showMenuItems','hideAllNonBaseMenuItem','showAllNonBaseMenuItem','translateVoice'//,'startRecord','stopRecord',
  				// 	                'onRecordEnd','playVoice','pauseVoice','stopVoice','uploadVoice','downloadVoice','chooseImage','previewImage',
  				// 	                'uploadImage','downloadImage','getNetworkType','openLocation','getLocation','hideOptionMenu','showOptionMenu',
  				// 	                'closeWindow','scanQRCode','chooseWXPay','openProductSpecificView','addCard','chooseCard','openCard'
  					                ] 
  					    			// 必填，需要使用的JS接口列表，所有JS接口列表见附录2
  					});
  				   
  					
  					wx.ready(function () {
  						
	  				 	wx.hideAllNonBaseMenuItem({
							success : function() {
	//							alert('已隐藏所有非基本菜单项');
							}
						});
						wx.showMenuItems({
							menuList : [ 'menuItem:share:appMessage', // 发送给朋友
							'menuItem:share:timeline' // 分享到朋友圈
							],
							success : function(res) {
	//							alert('已显示“阅读模式”，“分享到朋友圈”，“复制链接”等按钮');
							},
							fail : function(res) {
	//							alert(JSON.stringify(res));
							}
						});
  						
  						wx.onMenuShareAppMessage({
  						    title: resp.title, // 分享标题
  						    desc: resp.desc, // 分享描述
  						    link: resp.link, // 分享链接
  						    imgUrl: resp.imgUrl, // 分享图标
  				// 		    type: '', // 分享类型,music、video或link，不填默认为link
  				// 		    dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
  						    success: function () { 
  		// 				        alert("分享成功");
  						    },
  						    cancel: function () { 
  		// 				        alert("取消分享");
  						    }
  						});
  				
  				        wx.onMenuShareTimeline({
  				            title: resp.title, // 分享标题
  				            link: resp.link, // 分享链接
  				            imgUrl: resp.imgUrl, // 分享图标
  				            success: function () { 
  		// 				        alert("分享成功");
  						    },
  						    cancel: function () { 
  		// 				        alert("取消分享");
  						    }
  				        });
  				        
  				    })
  				    
  				    wx.error(function(res){
  				    	
  				    	var v = "";
  				    	for(var x in res){
  				    		v += res[x];
  				    	}
						alert(v);
//   						$('#testdiv').html(v);
  					
  					});
  			   }
  			});
  		} */
  		
  		//**********************************************************
</script>
</body>
</html>