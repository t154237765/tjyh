<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/jquery.dataTables.min.css" />
<style type="text/css">
	input{
		height: 32px;
	}
	select{
		width: 160px;
		height: 32px;
	}
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left">手机号：</label>
		<input type="email" class="doc-ipt-3 phone" />&nbsp;&nbsp;&nbsp;
		<label for="doc-ipt-3" class="am-margin-left">订单号：</label>
		<input type="email" class="doc-ipt-3 orderno" />&nbsp;&nbsp;&nbsp;
		<label for="doc-select-1">发货状态：</label>
		<select id="doc-select-1">
			<option value="option1">请选择</option>
			<option value="0">充值中</option>
			<option value="1">成功</option>
			<option value="2">失败</option>
		</select>&nbsp;&nbsp;&nbsp;
		<label for="doc-ipt-3" class="am-margin-left">创建时间：</label>
		<input type="email" class="doc-ipt-3 starttime" />
		<label for="doc-ipt-3" class="">至</label>
		<input type="email" class="doc-ipt-3 endtime" />

		<button type="button" class="am-btn am-btn-primary am-radius am-fr locationorderbtn">搜索</button>
	</div>
</div>
<div class="am-u-md-12">
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr class="tr-color">
				<th>序号</th>
				<th>用户ID</th>
				<th>手机号</th>
				<th>订单号</th>
				<th>商品名称</th>
				<th>应付金额</th>
				<th>实付金额</th>
				<th>使用津元宝数量</th>
				<th>创建时间</th>
				<th>发货状态</th>
				<th>兑换码
					<br />(or短信)</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>
<script src="${ctx}/jsp/system_tjh/assets/js/datatables-master/dist/amazeui.datatables.min.js"></script>
<script type="text/javascript">
	var datas;
	var round = Math.random(); 
	var url = "${ctx}/a/localspecialofferorder/showspecialofferorders.json?round="+round;
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
	                    { "title": "序号", "data": "id" },
	                    { "title": "用户ID", "data": "userId" },
	                    { "title": "手机号", "data": "phone" },
	                    { "title": "订单号", "data": "orderNo" },
	                    { "title": "商品名称", "data": "prodName"},
	                    { "title": "应付金额", "data": "prodPrice"},
	                    { "title": "实付金额", "data": "payMoney"},
	                    { "title": "使用金元宝数量", "data": "ingotNum"},
	                    { "title": "创建时间", "data": "createTime"},
	                    { "title": "发货状态", "data": "status"},
	                    { "title": "兑换码<br/>(or短信)", "data": "couponCode"},
	                    { "title": "操作", "data": "id", "orderable": false, "render": function (data) {
	                    	return '<a href="javaScript:void(0);" onclick="resendcode(\''+data+'\');">重新发送短信</a>';      
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
	$(".locationorderbtn").click(function(){
		var phone = $(".phone").val();
		var orderno = $(".orderno").val();
		var starttime = $(".starttime").val();
		var endtime = $(".endtime").val();
		url = "${ctx}/a/localspecialofferorder/showspecialofferorders.json?phone="+phone+"&startTime="+starttime+"&endTime="+endtime+"&orderNo="+orderno+"&round="+round;
		initTable(url);
	});
</script>