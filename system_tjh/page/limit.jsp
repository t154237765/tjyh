<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/jquery.dataTables.min.css" />
<style type="text/css">
	input{
		height: 32px;
	}
	button{
		position: relative;
		top: -3.4em;
	}
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left">商品名称：</label>
		<input type="text" class="doc-ipt-3 limit_name" style="width: 260px;" />
		<label for="doc-ipt-3" class="am-margin-left">抢购时间：</label>
		<input type="text" class="doc-ipt-3 limit_starttime" />
		<label for="doc-ipt-3" class=" ">至</label>
		<input type="text" class="doc-ipt-3 limit_endtime" />
		<button type="button" class="am-btn am-btn-primary am-radius am-fr limit_btn">搜索</button>
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
				<th>上架时间</th>
				<th>开抢时间</th>
				<th>下架时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn2">+添加限时抢购</button>
</div>
<script src="${ctx}/jsp/system_tjh/assets/js/datatables-master/dist/amazeui.datatables.min.js"></script>
<script type="text/javascript">
	var datas;
	var round = Math.random(); 
	var url = "${ctx}/a/seckillproduct/showseckill.json?round="+round;
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
	                    { "title": "商品名称", "data": "prodName"},
	                    { "title": "售价", "data": "prodPrice"},
	                    { "title": "原价", "data": "oldPrice"},
	                    { "title": "数量", "data": "prodNum"},
	                    { "title": "已售", "data": "soldNum"},
	                    { "title": "上架时间", "data": "loadTime"},
	                    { "title": "开抢时间", "data": "saleTime"},
	                    { "title": "下架时间", "data": "downTime"},
	                    { "title": "操作", "data": "id", "orderable": false, "render": function (data) {
	                    	return '<a href="javaScript:void(0);" onclick="resendcode(\''+data+'\');">编辑</a>'+
	                    		   '<a href="javaScript:void(0);" onclick="resendcode(\''+data+'\');">删除</a>';      
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
	$(".datatable-btn2").click(function(){
		$.ajax({
				url:"${ctx}/jsp/system_tjh/page/limit/addlimit.jsp",
				type:"get",
				data:{},
				dataType:"html",
				success:function(html){	//载入右侧内容
					$("#c-right-wrapper").html(html);
				}
		});
	});
	
	$(".limit_btn").click(function(){
		var prodName = $(".limit_name").val();
		var startTime = $(".limit_starttime").val();
		var endTime = $(".limit_endtime").val();
		url = "${ctx}/a/seckillproduct/showseckill.json?prodName="+prodName+"&startTime="+startTime+"&endTime="+endTime+"&round="+round;
		initTable(url);
	});
	
</script>