<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<%@ page import="com.ronglian.tjpt.system.util.IPInfoUtil"%>
<%-- <%
    String ip = IPInfoUtil.getIpAddr(request);
    String addr = IPInfoUtil.getBaiduMapByIp(ip);
%> --%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>白衣天使</title>
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="format-detection" content="telephone=no, email=no" />
    <link rel="stylesheet" href="${stax}/assets/css/weui.min.css"/>
    <link rel="stylesheet" href="${stax}/assets/css/common.css"/>
    
    <style type="text/css">
        .container {padding-top: 0;}
        #scroll-top-block{width:100%;height:44px;background:#f2f1f1;}
        #scroll-bottom-block{width:100%;height:45px;background:#f2f1f1;}
        .picTxtList{margin-bottom:10px;}
        
        /*登陆弹出框*/
        #iosDialog1 .weui-cell{padding:0;}
        #iosDialog1 .weui-cell__bd{background: #eee;padding: 5px 0 5px 5px;font-size: .7rem;}
        #iosDialog1 .weui-vcode-btn{border:0;background:#aaa;color: #fff;font-size: .7rem;border-radius:3px;height: 1.4rem;line-height: 1.4rem;font-size: .6rem;}
        #iosDialog1 .weui-cell_vcode{margin-top:5px;}
        #iosDialog1 .weui-cell_vcode:before,#iosDialog1 .weui-cells_form:after{border: 0}
        #iosDialog1 button.c-c-b{background:#09b6f2;}
        .js_dialog input.weui-input{color:#333;}
        .buyNote{float: right;margin-right: 15px;}
        .weui-tab{height:auto;}
        .weui-dialog{overflow: visible;}
        #c-login-close{position: absolute;top: -1rem;right: -1rem;color: #fff;}
        #c-intro-wrapper{padding: 0 5px;}
        .weui-cells:before,.weui-cells:after{border: 0;}

        /*新首页*/
        #dataArea{background:#72c5ff;width: 100%;background-size:contain;}
        .c-top-bg{background:url(${stax}/assets/images/tj-index-top-bg2.jpg) no-repeat;width: 100%;background-size:cover;height:76px;}
        .c-bottom-bg{background:url(${stax}/assets/images/tj-index-bottom-bg2.jpg) no-repeat;width: 100%;background-size:cover;height:100px;}
        /*内容*/
        .c-index-hot h3 {font-size: .7rem;padding: 7px;padding-left: 15px;}
        .c-remenhd {width: 20px;height: 20px;display: inline-block;vertical-align: sub;}
        .c-index-hot .weui-flex:nth-child(2){border-bottom:0;}
        .c-index-hot .weui-media-box__hd img{width: 3.2rem;}
        .weui-flex .weui-flex__item:nth-child(odd){border-right:0;margin-right: .3rem;}
        a.weui-media-box:active{background: #fff;}
        .local-special{margin-bottom:-5px;}
        .local-special .weui-flex__item{border:0;flex-grow: 0;}
        .local-special .weui-flex{padding:.4rem 14px 0;}
        .weui-media-box_appmsg .weui-media-box__hd{margin-right:0;}
        .local-special .weui-media-box__hd img{border-radius:0;height:5rem;width:5rem;margin: 0 auto;}
        .weui-media-box__desc{font-size: 12px;}
        .local-special a.weui-media-box{padding:0;width:7.2rem;}
        .local-special .weui-media-box__bd{background:#fff;border-radius: 3px;padding: .4rem;text-align: left;padding-top:.6rem;}
        .weui-media-box_appmsg .weui-media-box__hd{width:auto;height:auto;}
        .weui-media-box_appmsg h4, .c-goods-details h4.weui-media-box__title{font-size: .7rem;}
        .openbtn{width:2.8rem;height:1.3rem;background:#45c8b3;color:#fff;font-size: .6rem;text-align: center;vertical-align: middle;display: none;}
        .c-oldprice{text-decoration:line-through;color:#aaa;margin-left:10px;}
        .weui-media-box__desc{color:#666;}
        .weui-navbar__item.weui-bar__item_on{color:#49c8b5;background: #fff;}
        .weui-navbar__item{color:#9a9a9a;}

        #searchBar{position: absolute;top: 6.5rem;right: 15px;z-index: 990;width: 138px;left: auto;background: none;}
        #ruleblock{position: absolute;bottom: 0rem;right:.2rem;z-index: 990;left: auto;background: none;}
        #ruleblock img{width: 3.2rem;height:3.2rem;}
        .weui-search-bar:before,.weui-search-bar:after{display: none;}
        #searchText i{float: left;margin-right:0;height: 32px;line-height: 32px;}
        #searchText span{float: right;font-size: 12px;margin-right: 5px;}
        #toSearch{border:0;border-radius: 5px;}
        .titleBar-text{padding-left: 0;width: 100%;}
        @media screen and (min-width:350px){.c-top-bg{height: 86px;}}
        @media screen and (min-width:410px){.c-top-bg{height: 96px;}}

        /*noFlex*/
        .weui-flex{display: block;}
        #dataArea{clear: both;display: inline-block;}
        .local-special .weui-flex{padding: 0.4rem .6rem 0;clear: both;float: left;}
        .weui-flex .weui-flex__item:nth-child(odd){margin-right: 7px;}
        .local-special .weui-flex__item{float: left;}
        .rulealert,.restalert{width: 70%;height:60%;background: #fff;position: absolute;top: 20%;left: 10%;z-index: 1000;border-radius: 5px;padding:1rem 1rem;}
        .rulealert .text1,.restalert .text1{font-size: .7rem;overflow-y: auto;height: 100%}
        .zhezhao{position: absolute;top: 0;left: 0;bottom: 0;right: 0;background: #000;opacity: .5;z-index: 999;}
        .c-close,.c-close2{width:1.2rem;height:1.2rem;background: url(${stax}/assets/images/bottom-close2.png) no-repeat;position: absolute;right: -18px;top:-30px;background-size:contain;z-index: 1000}
    </style>
    <title></title>
    
    <!-- 识别客户端 -->
    <script type="text/javascript">
        var hflag = "${hflag}";
        if(hflag && hflag.indexOf("CCBWebView") > -1){
            
        }else{
            /* alert('请使用建行手机银行APP“扫一扫”功能访问本页面');
            location.href="${ctx}/jsp/404.jsp"; */
        }
    </script>
</head>
<body style="position: relative;">
    <div class="zhezhao" style="display: none;"></div>
    
    <div class="rulealert" style="display: none;">
        <div class="c-close"></div>
        <div class="text1">
&nbsp;&nbsp;1.用户范围：本活动仅限满足天津建行河西支行代发工资用户参与，需2人成团，活动期内每位客户可以任意开团或参团。<br />
&nbsp;&nbsp;2.拼团商品领取须知：拼团成功后，所购买的“专享商品”可通过个人中心→我的拼团查看，并请于三日后凭“身份证后六位号码+登录活动手机号+拼团ID”前往环湖西路支行领取，订单统计截止时间为每天的16点，16点后的订单请自行顺延一天前往网点领取。（地址：天津市河西区体院北环湖西路肿瘤医院C座建筑物内，联系电话：022-23511763）。<br />
&nbsp;&nbsp;3.活动时间：截止到2018年2月15日前。<br />
&nbsp;&nbsp;4.支付方式：建行手机银行。<br />
&nbsp;&nbsp;5.拼团商品问题客服电话：022-23520703，拼团支付问题客服电话：022-58750200，身份证后六位客户ID输入有误：022-23520703，咨询时间：周一至周五，9点至17点。<br />
        </div>
    </div>
    <div class="restalert" style="display: none;">
        <div class="c-close2"></div>
        <div class="text1">
        <p style="font-size:.8rem;text-align:center;margin-bottom:10px;">国庆节放假通知</p>
尊敬的顾客朋友：<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;您好！<br />
&nbsp;&nbsp;2017年国庆节假期将至，公司全员放假时间为10月1日-9日。公司放假期间客服电话可正常拨打，客服负责记录问题，需技术人员处理问题上班后统一解决。<br />
&nbsp;&nbsp;拼团商品9月30日14点之前的订单可当日发出，14点以后付款的商品上班后按订单先后顺序安排发货，感谢您的理解。<br />
&nbsp;&nbsp;预祝各位国庆节假期愉快，期待大家持续关注我们的活动，你的参与就是对我们最大的支持！<br />
        </div>
    </div>
    <div class="weui-loading_toast " style="display: none;"> 
        <div class="weui-mask_transparent"></div> 
        <div class="weui-toast weui-animate-fade-in"> 
            <i class="weui-loading weui-icon_toast"></i> 
            <p class="weui-toast__content">正在加载...</p> 
        </div> 
    </div>

    <div class="container">
        <div class="titleBar">
             <div class="titleBar-back" onclick="toHome()">
                 <img src="${stax}/assets/images/history.png" />&nbsp;返回
             </div>
            <div class="titleBar-text am-text-truncate">白衣天使专场</div>
        </div>


        <!-- 列表内容 -->
        <div class="c-content" id="c-iscroll">
            <div  id="wrapper">
                <div  style="-webkit-margin-before:0em;">
                    <div id="scroll-top-block"></div>
                    <div>
                        <div class="c-top-bg" style="position: relative;">
                            <!-- 搜索栏 -->
                            
                            <div class="weui-search-bar" id="ruleblock">
                                <img src="${stax}/assets/images/rules2.png">
                            </div>
                        </div>
                        <div class="c-index-hot local-special" id="dataArea">
<!--                             <div class="weui-flex"> -->
<!--                                 <div class="weui-flex__item"> -->
<!--                                     <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg"> -->
<!--                                         <div class="weui-media-box__bd"> -->
<!--                                             <div class="weui-media-box__hd"> -->
<%--                                                 <img class="weui-media-box__thumb" src="${stax}/assets/images/c-index-items1.jpg" alt=""> --%>
<!--                                             </div> -->
<!--                                             <h4 class="weui-media-box__title am-text-truncate">音乐游戏无线耳机</h4> -->
<!--                                             <p class="weui-media-box__desc">已团<span>999</span>&nbsp;剩余<span>999</span></p> -->
<!--                                             <p class="pri c-f-s-16"><span class="c-c-r">￥156</span><span class="c-f-s-12 c-oldprice">120.00</span></p> -->
<!--                                             <div class="openbtn">去开团</div> -->
<!--                                         </div> -->
                                        
<!--                                     </a> -->
<!--                                 </div> -->
<!--                                 <div class="weui-flex__item"> -->
<!--                                     <a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg"> -->
<!--                                         <div class="weui-media-box__bd"> -->
<!--                                             <div class="weui-media-box__hd"> -->
<%--                                                 <img class="weui-media-box__thumb" src="${stax}/assets/images/c-index-items1.jpg" alt=""> --%>
<!--                                             </div> -->
<!--                                             <h4 class="weui-media-box__title am-text-truncate">音乐游戏无线耳机</h4> -->
<!--                                             <p class="weui-media-box__desc">已团<span>999</span>&nbsp;剩余<span>999</span></p> -->
<!--                                             <p class="pri c-f-s-16"><span class="c-c-r">￥156</span><span class="c-f-s-12 c-oldprice">120.00</span></p> -->
<!--                                             <div class="openbtn">去开团</div> -->
<!--                                         </div> -->
                                        
<!--                                     </a> -->
<!--                                 </div> -->
<!--                             </div> -->
                            
                        </div>
                        <div class="c-bottom-bg"></div>
                    </div>
                    <div id="scroll-bottom-block"></div>
                </div>
            </div>
        </div>

     </div>
     
     
        <div class="js_dialog" id="iosDialog1" style="opacity: 1; display: none;">
            <div class="weui-mask"></div>
            <div class="weui-dialog">
                <i class="weui-icon-cancel" id="c-login-close"></i>
                <div class="weui-dialog__bd c-f-s-16" style="color: #09b6f2; padding-top: 1.7em;">

                    请绑定手机号码
                    <div class="weui-cells weui-cells_form">

                        <div class="weui-cell">
                            <div class="weui-cell__bd">
                                <input id="phone" class="weui-input" type="tel" maxlength="11" pattern="[0-9]*"
                                    placeholder="请输入您的手机号码">
                            </div>
                        </div>
                        <div class="weui-cell weui-cell_vcode">
                            <div class="weui-cell__bd">
                                <input class="weui-input" type="number" pattern="[0-9]*" id="ccode"
                                    oninput='checkLength(this,4);' maxlength="4" placeholder="请输入验证码">
                            </div>
                            <div class="weui-cell__ft">
                                <button id="bpcodebtn" disabled="true" class="weui-vcode-btn">获取验证码</button>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="weui-dialog__ft">
                    <a href="javascript:;" class="weui-dialog__btn weui-dialog__btn_primary c-c-b">确定</a>
                </div>
            </div>
        </div>

<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/weui.min.js"></script>
<script src="${stax}/assets/js/iscroll.js"></script>
<script src="${stax}/assets/js/iscrollAssist.js"></script>
<script src="${stax}/assets/js/common.js"></script>
<script type="text/javascript">
    	var excludewl = "${excludewl}";
    	var excludewlmsg = "${excludewlmsg}";
    	if(excludewl && excludewl == "1"){
    		weui.alert(excludewlmsg ? excludewlmsg : "本活动为天津市肿瘤医院员工专享");
    		window.location.href="${ctx}" + localStorage.getItem("tjindexUrl");
    	}
    </script>
<script type="text/javascript" >

    /****处理返回空白 (vivo、乐视)***/
//  var u = navigator.userAgent;
//  if(u.indexOf('vivo') > -1 || u.indexOf('Le') > -1){
//      var f = localStorage.getItem("flg");
//      if(!f){
//          localStorage.setItem("flg", "1");
//          window.location.href = window.location.href;
//      }else{
//          localStorage.removeItem("flg");
//      }
//  }

// localStorage.clear();

    var bankid = "${bankid}";
    var bankuid = "${bankuid}";
    var indexUrl = "${indexUrl}";
    
    //用浏览器存储
    if(bankid) localStorage.setItem("tjbankId", bankid);
    if(bankuid) localStorage.setItem("tjbankuid", bankuid);
    if(indexUrl) localStorage.setItem("tjindexUrl", indexUrl);

    var lastId = 0; //分页用
    var bankId = localStorage.getItem("tjbankId");
    var minH = window.innerHeight-$("#scroll-top-block").height();  //检测是否有内容
    var iscrollObj;
    //$("#dataArea").css("minHeight",minH+"px");

    var pulldownAction = function(){
        $('#dataArea').html('');
        lastId = 0;
        getProds(this);
        $("#pullup-label").text("上拉加载更多");
    };
    var pullupAction = function(){
        getProds(this);
    };

    window.onload=function(){
        iscrollObj = iscrollAssist.newVerScrollForPull(
            $('#wrapper'),pulldownAction,pullupAction
        );
        getProds(iscrollObj);
    };
    
    //获取商品信息-渲染-计算高度
    function getProds(iscrollObj){
        $(".weui-loading_toast").show();
        function promiseLoad(){
            return new Promise(function(resolve,reject){
                $.ajax({
                    type: "GET",
                    url: "${ctx}/pintuan/gethxProdInfo.json",
                    data: "bankId="+bankId+"&lastId="+lastId+"&r="+Math.random(),
                    success: function(resp){
                        resolve(resp);
                    },
                    error:function(er){
                        reject(er);
                    }
                });
            })
        };
        promiseLoad().then(
            function(resp){
                if(resp.prdList && resp.prdList.length > 0){
                    fillPrd(resp.prdList);
                    setTimeout(function () {
                        iscrollObj.refresh();
                        $(".weui-loading_toast ").hide();
                    }, 200);
                }else{
                    $(".weui-loading_toast, loading").hide();
                    $("#pullup").removeClass();
                    $("#pullup").find(".pullup-icon").removeClass("pullup-icon");
                    $("#pullup-label").text("");//没有更多了~
                }
            },function(er){
                weui.toast(er, {
                    duration: 2000,
                    className: 'toast-warn',
                    callback: function(){ 
                        return false;  
                    }
                });
            }
        );
    }
    
    //填充商品列表
    function fillPrd(data){
        $('#dataArea').html('');
        var begindiv = '<div class="weui-flex">';
        var enddiv = '</div>';
        var pdiv = '';
        for(var i=0; i<data.length; i++){
            if(data[i].id > lastId) lastId = data[i].id;
            var pimg = data[i].picUrl ? data[i].picUrl : "${stax}/assets/images/2-0-goods2.jpg";
            
            if(i % 2 == 0) pdiv += begindiv;
            pdiv += '<div class="weui-flex__item">'+
                            '<a href="javascript:void(0);" class="weui-media-box weui-media-box_appmsg">'+
                                '<div class="weui-media-box__bd">'+
                                '<div class="weui-media-box__hd touchView" data-pid="'+data[i].id+'" data-property="'+data[i].property+'">'+
                                        '<img class="weui-media-box__thumb" src="'+pimg+'" alt="">'+
                                    '</div>'+
                                    '<h4 class="weui-media-box__title am-text-truncate">'+data[i].prodName+'</h4>'+
                                    '<p class="weui-media-box__desc">已团<span>'+data[i].saled+'</span>&nbsp;剩余<span>'+data[i].remain+'</span></p>'+
                                    '<p class="pri c-f-s-16"><span class="c-c-r">￥'+data[i].prodPrice+'</span><span class="c-f-s-12 c-oldprice">'+data[i].oldPrice+'</span></p>'+
                                    '<div class="openbtn touchView" data-pid="'+data[i].id+'">去开团</div>'+
                                '</div>'+
                            '</a>'+
                        '</div>';
            if(i % 2 == 0){
                if(i == (data.length - 1)) pdiv += enddiv;
            }else{
                pdiv += enddiv;
            }
        }
        
        $('#dataArea').append(pdiv);
        $(".touchView").on("tap",function(){
            toView(this.dataset.pid, this.dataset.property);
        });
    }

    
    //点击图片查看商品详情页面
    function toView(pid, property){
    	var loading = weui.loading('正在加载...');
        iscrollObj.destroy();
        iscrollObj = null;
    	window.location.href = "${ctx}/pintuan/pdetail.do?bankId="+bankId+"&pid="+
    			pid+"&userwphone="+localStorage.getItem("tjuserWPhone") + "&uid="+localStorage.getItem("tjuserId");
    }
    /**********************************************/
    
    $("#c-login-close").on("click",function(){
        $("#iosDialog1").hide();
    });
    /*弹出框1  绑定手机*/
    $('#iosDialog1').on('click', '.weui-dialog__btn', function(){
        register();
    });
    
    $(".c-close").on("click",function(){
        $(".zhezhao,.rulealert").hide();
    })
    
    $(".c-close2").on("click",function(){
        $(".zhezhao,.restalert").hide();
    })

    $("#ruleblock").on("tap",function(){
        $(".zhezhao,.rulealert").show();
    })
    
    /*验证手机号*/
    function checkPhone(num){
        var phone = parseInt(num);
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
    
    function checkLength(obj,n){
        //obj.value = obj.value.replace(/\D/g,'')
        if(obj.value.length>n){
            obj.value = obj.value.substr(0,n);
        }
    }
        
    /**返回首页**/
 	function toHome(){
 		window.location.href = '${ctx}'+localStorage.getItem("tjindexUrl");
 	}
</script>
</body>
</html>
