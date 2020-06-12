<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/jquery.dataTables.min.css" />
<style type="text/css">
	.datatable-btn1{
		margin-right: 3%;
	}
	input{
		height: 32px;
	}
	.am-btn{
		position: relative;
		top: -3.4em;
	}
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left">商品名称：</label>
		<input type="text" class="doc-ipt-3 prodName" style="width: 260px;" />
		<label for="doc-ipt-3" class="am-margin-left">添加时间：</label>
		<input type="text" class="doc-ipt-3 startTime" />
		<label class=" ">至</label>
		<input type="text" class="doc-ipt-3 endTime" />
		<button type="button" class="am-btn am-btn-primary am-radius am-fr cabtn">搜索</button>
	</div>
</div>
<div class="am-u-md-12">
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr class="tr-color">
				<th>ID</th>
				<th>商品名称</th>
				<th>售价</th>
				<th>原价</th>
				<th>数量</th>
				<th>已售数量</th>
				<th>使用津元宝数量</th>
				<th>添加时间</th>
				<th>位置</th>
				<th>状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn1">+添加商品</button>
</div>
<script src="${ctx}/jsp/system_tjh/assets/js/datatables-master/dist/amazeui.datatables.min.js"></script>
<script type="text/javascript">
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
	var datas;
	var round = Math.random(); 
	
	var url = "${ctx}/a/exprizezone/showprodinfos.json?round="+round;
	
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
	        "sAjaxSource": url,		//获取数据的url   
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
	                    { "title": "ID", "data": "id" },
	                    { "title": "商品名称", "data": "prodName" },
	                    { "title": "售价", "data": "prodPrice" },
	                    { "title": "原价", "data": "oldPrice" },
	                    { "title": "数量", "data": "prodNum"},
	                    { "title": "已售数量", "data": "soldNum"},
	                    { "title": "使用津元宝数量", "data": "ingotNum"},
	                    { "title": "添加时间", "data": "createTime"},
	                    { "title": "位置", "data": "prodPosition"},
	                    { "title": "状态", "data": "state"},
	                    { "title": "操作", "data": "id", "orderable": false, "render": function (data) {
	                    	return '<a href="javaScript:void(0);" onclick="putaway(\''+data+'\');">上架</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
	                    		   '<a href="javaScript:void(0);" onclick="soldout(\''+data+'\');">下架</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
	                    		   '<a href="javaScript:void(0);" onclick="update(\''+data+'\');">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;'+
	                    		   '<a href="javaScript:void(0);" onclick="del(\''+data+'\');">删除</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';    
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
	$(".datatable-btn1").click(function(){
		$.ajax({
			url:"${ctx}/jsp/system_tjh/page/active/addShop.jsp",
			type:"get",
			data:{},
			dataType:"html",
			success:function(html){	//载入右侧内容
				$("#c-right-wrapper").html(html);
			}
		});
	});
	//搜索
	$(".cabtn").click(function(){
		findInfosByCond();
	});
	
	function findInfosByCond(){
		var prodName = $(".prodName").val();
		var starttime = $(".startTime").val();
		var endtime = $(".endTime").val();
		url = "${ctx}/a/exprizezone/showprodinfos.json?prodName="+prodName+"&startTime="+starttime+"&endTime="+endtime+"&round="+round;
		$("#example").dataTable().fnDestroy();
		initTable(url);
	}
	
	//上架
	function putaway(data){
		$.ajax({
			url:'${ctx}/a/exprizezone/updateproduct.do',
			type:'post',
			data:'id='+data+"&state=1",
			success:function(resp){
				console.log(resp);
				initTable(url);
			}
		});
	}
	//下架
	function soldout(data){
		$.ajax({
			url:'${ctx}/a/exprizezone/updateproduct.do',
			type:'post',
			data:'id='+data+"&state=0",
			success:function(resp){
				console.log(resp);
				initTable(url);
			}
		});
	}
	//编辑
	function update(data){
		console.log(data);
	}
	//删除
	function del(data){
		$.ajax({
			url:'${ctx}/a/exprizezone/delProduct.do',
			type:'post',
			data:'id='+data,
			success:function(resp){
				console.log(resp);
				initTable(url);
			}
		});
	}
</script>