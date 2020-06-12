<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/jquery.dataTables.min.css"/>
<style type="text/css">
	.c-b-l{
		cursor: pointer;
	}
	input , select{
		width: 135px;
		height: 32px;
	}
	.paginate_button{margin:0px 15px;}
	#example_paginate a{margin:0;}
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-select-1">期数：</label>
		<select id="doc-select-1">
			<option value="0">请选择</option>
			<option value="-1">全部</option>
		</select>

		<label for="doc-ipt-3" class="am-margin-left">中奖用户：</label>
		<input type="email" class="doc-ipt-3 salebuyphone"/>

		<label for="doc-ipt-3" class="am-margin-left">成团时间：</label>
		<input type="email" class="doc-ipt-3 salebuystarttime"/>
		<label for="doc-ipt-3" class="">至</label>
		<input type="email" class="doc-ipt-3 salebuyendtime"/>

		<button type="button" class="am-btn am-btn-primary am-radius am-fr salebuybtn">搜索</button>
	</div>
</div>
<div class="am-u-md-12">
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr class="tr-color">
				<th>序号</th>
				<th>期数</th>
				<th>参与进度</th>
				<th>成团时间</th>
				<th>中奖号码</th>
				<th>中奖用户</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<!-- <button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn">修改活动规则</button> -->
</div>
<script src="${ctx}/jsp/system_tjh/assets/js/datatables-master/dist/amazeui.datatables.min.js"></script>
<script type="text/javascript">
	var datas;
	var round = Math.random(); 
	
	var url = "${ctx}/a/salebuy/findWinInfo.json?round="+round;
	
	$(function(){
		$.ajax({
			url:'${ctx}/a/salebuy/index.do',
			type:'post',
			success:function(resp){
				var nper = resp.nowExpectNum;
				var option;
				for(var i=1; i<= nper; i++){
					option = '<option value="'+i+'">'+i+'</option>';
					$("#doc-select-1").append(option);
				}	
			}
		});
		initTable(url);
		
	});
	
	function initTable(url){
		//$("#example").dataTable().fnDestroy();
		otable = $('#example').dataTable( {
	    	"sErrMode": 'throw',
	    	"bSort": false,							//开关，是否启用各列具有按列排序的功能
	        "bAutoWidth":false,                    	//自动计算列宽度   
	        "bProcessing": false,                    //加载数据时显示正在加载信息   
	        "bServerSide": true,                    //指定从服务器端获取数据   
	        "bFilter": false,  
	        "iDisplayLength": 10,                    //每页显示10条数据   
	        "bPaginate" : true,// 分页按钮  
	        "sAjaxSource": url,	
	        //获取数据的url   
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
	        
			"columns": [
	                    { "title": "序号", "data": "id" },
	                    { "title": "期数", "data": "expectNum" },
	                    { "title": "参与进度", "data": "count" },
	                    { "title": "成团时间", "data": "tuanTime" },
	                    { "title": "中奖号码", "data": "codeNum"},
	                    { "title": "中奖用户", "data": "phone"},
	                    { "title": "操作", "data": "expectNum", "orderable": false, "render": function (data) {
	                    	return '<a href="javaScript:void(0);" onclick="sale_buy_zjdx(\''+data+'\');">发布中奖短信</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
	                    		   '<a href="javaScript:void(0);" onclick="sale_buy_gmjl(\''+data+'\');">用户购买记录</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';    
	                    }
		            }
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
/* 	
	$('#example').dataTable({
		"lengthMenu": [
			[5, 25, 50, -1],
			[5, 25, 50, "All"]
		]
	}); */
	
	//发布中奖短信
	function sale_buy_zjdx(data){
		$.ajax({
			url:"${ctx}/jsp/system_tjh/page/active/issueInfrom-3.jsp?nper="+data,
			type:"get",
			data:{},
			dataType:"html",
			success:function(html){	//载入右侧内容
				$("#c-right-wrapper").html(html);
			}
		});
	}
	//用户购买记录
	function sale_buy_gmjl(data){
		$.ajax({
			url:"${ctx}/jsp/system_tjh/page/active/userShop.jsp?nper="+data,
			type:"get",
			data:{},
			dataType:"html",
			success:function(html){	//载入右侧内容
				$("#c-right-wrapper").html(html);
			}
		});
	}
	
	
	$(".salebuybtn").click(function(){
		findInfosByCond();
	});
	
	function findInfosByCond(){
		var check = false;
		var nper = $("#doc-select-1").val();
		var phone = $(".salebuyphone").val();
		var starttime = $(".salebuystarttime").val();
		var endtime = $(".salebuyendtime").val();
		if(nper == 0 || nper == -1){
			nper = "";
			check = true;
		}else{
			check = true;
		}
		if(phone != ""){
			check = true;
		}
		if(starttime != ""){
			check = true;
		}
		if(endtime != ""){
			check = true;
		}
		if(check){
			url = "${ctx}/a/salebuy/findWinInfo.json?nper="+nper+"&phone="+phone+"&startTime="+starttime+"&endTime="+endtime+"&round="+round;
			$("#example").dataTable().fnDestroy();
			initTable(url); 
		}
	};
	//实现头部导航的切换
  	$('.c-bread li a').click(function(){
  		$(this).parents("li").nextAll().hide();
  		$(this).addClass("am-active");
  		if($(this).attr("class") == "c-level-1 am-active"){
  			$(this).css("pointer-events","none")
  		}else if($(this).attr("class") == "c-level-2 am-active"){
  			$(this).css("pointer-events","none")
  		}else if($(this).attr("class") == "c-level-3 am-active"){
  			$(this).css("pointer-events","none")
  		}else if($(this).attr("class") == "c-level-4 am-active"){
  			$(this).css("pointer-events","none")
  		}
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
				console.log(link)
			}
		});
  			
  	});
	
</script>