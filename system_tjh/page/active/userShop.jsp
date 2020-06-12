<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/jquery.dataTables.min.css"/>
<style type="text/css">
	* {
		font-family: "黑体";
	}
	
	.am-datatable-hd {
		visibility: hidden;
	}
	
	#a-box {
		width: 100%;
		height: 100%;
		background: #fff;
		border: 1px solid #ccc;
		border-radius: 5px;
		padding: 1%;
	}
	
	.c-input .am-margin-left {
		margin-left: 0;
	}
	
	.c-input input {
		height: 35px;
	}
</style>
<div class="c-bread">
	<ol class="am-breadcrumb">
		<li>
			<a href="#" class="c-level-1">活动管理</a>
		</li>
		<li>
			<a href="#" class="c-level-2">半价抢购</a>
		</li>
		<li>
			<a href="#" class="c-level-3" style="color:#0A60A9;">用户购买记录</a>
		</li>
	</ol>
</div>

<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left">登记用户：</label>
		<input type="email" class="doc-ipt-3 userphone" />&nbsp;&nbsp;&nbsp;&nbsp;
		<label for="doc-ipt-3" class="am-margin-left">订单号：</label>
		<input type="email" class="doc-ipt-3 orderno" />&nbsp;&nbsp;&nbsp;&nbsp;

		<label for="doc-ipt-3" class="am-margin-left">登记时间：</label>
		<input type="email" class="doc-ipt-3 starttime" />
		<label for="doc-ipt-3" class=" ">至</label>
		<input type="email" class="doc-ipt-3 endtime" />

		<button type="button" class="am-btn am-btn-primary am-radius am-fr usershopbtn">搜索</button>
	</div>
</div>
<div class="am-u-md-12">

	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr class="tr-color">
				<th>序号</th>
				<th>登记号</th>
				<th>登记用户</th>
				<th>支付金额</th>
				<th>订单号</th>
				<th>登记日期</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>
<script src="${ctx}/jsp/system_tjh/assets/js/datatables-master/dist/amazeui.datatables.min.js"></script>
<script type="text/javascript">
		var nper = <%=request.getParameter("nper")%>
		var datas;
		var round = Math.random(); 
		
		var url = "${ctx}/a/ruyrecodcontroller/findruyrecodlist.json?nper="+nper+"&round="+round;
		
		$(function(){
			initTable(url);
		});
		
		function initTable(url){
			//$("#example").dataTable().fnDestroy();
			otable = $('#example').dataTable( {
		    	"sErrMode": 'throw',
		    	"bSort": false,							//开关，是否启用各列具有按列排序的功能
		        "bAutoWidth": true,                    	//自动计算列宽度   
		        "bProcessing": false,                    //加载数据时显示正在加载信息   
		        "bServerSide": true,                    //指定从服务器端获取数据   
		        "bFilter": false,  
		        "bAutoWidth":false,  
		        "iDisplayLength": 10,                    //每页显示10条数据   
		        "sAjaxSource": url,						//获取数据的url   
		        "fnServerData": retrieveData,           //获取数据的处理函数   
		        "oLanguage": {                          //汉化   
		            "sLengthMenu": "每页显示 _MENU_ 条记录",   
		            "sZeroRecords": "没有检索到数据",   
		            "sInfo": "当前数据为从第 _START_ 到第 _END_ 条数据；总共有 _TOTAL_ 条记录",   
		            "sInfoEmtpy": "没有数据",   
		            "sProcessing": "正在加载数据...",   
		            "oPaginate": {   
		                "sFirst": "首页",   
		                "sPrevious": "前页",   
		                "sNext": "后页",   
		                "sLast": "尾页"  
		            }
		        },
		        "aoColumnDefs" : [ {
		            sDefaultContent : '',
		            aTargets : [ '_all' ]
		        } ],
		        "lengthMenu": [[3, 10, 25, 50], [3, 10, 25, 50]],
				"columns": [
		                    { "title": "序号", "data": "id" },
		                    { "title": "登记号", "data": "codeNum" },
		                    { "title": "登记用户", "data": "phone" },
		                    { "title": "支付金额", "data": "payment"},
		                    { "title": "订单号", "data": "orderNo"},
		                    { "title": "登记日期", "data": "createTime"}
		        ]
			});
		}
		function retrieveData(sSource, aaData, fnCallback){
			 $.ajax( {      	
		        "type": "POST",    
		        "contentType": "application/json",   
		        "url": sSource,    
		        "dataType": "json",   
		        "data": JSON.stringify(aaData), //以json格式传递   
		        "success": function(resp) {		
		            fnCallback(resp); //服务器端返回的对象是要求的格式  
		            datas=resp.aaData;
		            round = Math.random();
		        } 
			 }); 
		}
	
	//搜索
	$(".usershopbtn").click(function(){
		var check = false;
		var userphone = $(".userphone").val();
		var orderno = $(".orderno").val();
		var starttime = $(".starttime").val();
		var endtime = $(".endtime").val();
		if(userphone != null){
			check = true;
		}
		if(orderno != null){
			check = true;
		}
		if(starttime != null){
			check = true;
		}
		if(endtime != null){
			check = true;
		}
		if(check){
			console.log(nper);
			url = "${ctx}/a/ruyrecodcontroller/findruyrecodlist.json?nper="+nper+"&phone="+userphone+"&orderNo="+orderno+"&startTime="+starttime+"&endTime="+endtime+"&round="+round;
			initTable(url);
		}
		
	});
	//实现头部导航的切换
  	$('.c-bread li a').click(function(){
  		$(this).parents("li").nextAll().hide();
  		$(this).addClass("am-active");
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
  		}else if(title == "用户购买记录"){
  			link = "${ctx}/jsp/system_tjh/page/active/userShop.jsp";
  		}
  		
  		$.ajax({
			url:link,
			type:"get",
			data:{},
			dataType:"html",
			success:function(html){	//载入右侧内容
				$("#c-right-wrapper").html(html);
				console.log(link)
			}
		});
  			
  	});
</script>