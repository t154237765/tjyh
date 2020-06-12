<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${stax}/assets/plug-in/datatables-master/dist/amazeui.datatables.css">
<title>邀请信息管理</title>
<link rel="stylesheet" href="${stax}/assets/js/datetimepicker-master/css/amazeui.datetimepicker.css">
<link rel="stylesheet" href="${stax}/assets/css/amazeui.min.css"/>
<link rel="stylesheet" href="${stax}/assets/css/admin.css">
<link rel="stylesheet" href="${stax}/assets/plug-in/datatables-master/dist/amazeui.datatables.css">
<link rel="stylesheet" href="${stax}/assets/css/bolegou_insert.css">
<style type="text/css">
#example th {   
    white-space: nowrap !important;  
}
</style>
</head>

<!--导航条-->
<header class="am-topbar">
  <h1 class="am-topbar-brand">
    <a href="#">博雅融联</a>
  </h1>
  <div class="am-collapse am-topbar-collapse" id="doc-topbar-collapse">
  	<ul id="menudiv" class="am-nav am-nav-pills am-topbar-nav">
    </ul>
    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list am-topbar-right">
	   	<li class="am-dropdown" data-am-dropdown="">
	       <a class="am-dropdown-toggle okmemo-tmp-unselect" data-am-dropdown-toggle="" href="javascript:;">
	         <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
	       </a>
	       <ul class="am-dropdown-content">

	         <li><a href="${ctx}/logout.do"><span class="am-icon-power-off"></span> 退出</a></li>
	       </ul>
	     </li>
    </ul>
  </div>
</header>

<body >

		<div class="am-g">
			<div class="am-u-md-1 lj-sidebar">
				<jsp:include page="system_left.jsp" flush="true"/>
			</div>
			<div class="am-u-md-7 am-u-end lj-contentWrapper" >
				<div class="am-form-horizontal am-form" role="form">
					<div class="am-form-group " style="text-align:left">
					    
						<label  class="am-u-md-1 am-u-sm-offset-1 am-form-label">开始时间</label>
						<div class=" am-u-md-3" >
							<input id="startTime"type="text" value="" >
						</div> 
						
						<label  class="am-u-md-1 am-u-sm-offset-1 am-form-label">结束时间</label>
						<div class=" am-u-md-4" >
							<input id="endTime" type="text" value="" >
						</div> 
						
						<label  class="am-u-md-1 am-form-label-1 am-form-label ">审批状态</label>
						<div class=" am-u-md-5">
							<select id="status">
								<option value="">请选择</option>
								<option value="1">申请中</option>
								<option value="2">已导出</option>
								<option value="3">通过</option>
								<option value="4">不通过</option>
							</select>
						</div>
					</div>
					<div class="am-form-group" style="text-align:right">
						<div class=" am-u-md-12" style="padding:0">
							<div class="am-btn-group">
								<button id="searchWinCode" type="button" class="am-btn  am-radius am-margin-right-sm">查询</button>
								<button id="importWinCode" type="button" class="am-btn  am-radius am-margin-right-sm">上传</button>
								<button id="downWinCode" type="button" class="am-btn  am-radius am-margin-right-sm">下载</button>
                                <form id="winCodeForm" action="" method="post" enctype="multipart/form-data">
									<input style="display:none" id="winCodeFile" name="file" type="file" />
								</form>
							</div>
						</div>
					</div>
				</div>
				<table id="example" class="am-table am-table-bordered am-table-centered">
					
				</table>
			</div>
		</div>
	
		
	
	<!-- 导入提示模块 -->
	< <div class="am-modal am-modal-confirm" tabindex="-1" id="del-confirm-1">
	  <div class="am-modal-dialog">
	    <div class="am-modal-hd">融联</div>
	    <div class="am-modal-bd">
	      	
	    </div>
	    <div class="am-modal-footer">
	      <span class="am-modal-btn" data-am-modal-confirm>确定</span>
	      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
	    </div>
	  </div>
	</div>
	
	<!-- 重写的show提示模块 -->
	<div class="am-modal am-modal-confirm" tabindex="-1" id="new-show">
	  <div class="am-modal-dialog">
	    <div class="am-modal-hd"></div>
	    <div id="alert-content" class="am-modal-bd">
	    </div>
	  </div>
	</div>
	
	<input type="hidden" id="prizeCodeId">
	
<script src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/amazeui.min.js"></script>
<script src="${stax}/assets/js/jquery-form.js"></script>
<script src="${stax}/assets/plug-in/datatables-master/dist/amazeui.datatables.min.js"></script>
<script src="${stax}/assets/js/datetimepicker-master/js/amazeui.datetimepicker.min.js"></script>
<script src="${stax}/assets/js/datetimepicker-master/js/locales/amazeui.datetimepicker.zh-CN.js"></script>
<script src="${stax}/assets/js/vue.min.js"></script>

<script>
$.ajaxSetup({cache:true});

var datas;
var store = $.AMUI.store;

/* 设置全局变量，保存查询条件 */
var startTime;
var endTime;
var status;


function retrieveData(sSource, aaData, fnCallback ) { 
	
	aaData.push( { "name":"startTime","value":$("#startTime").val() } );
	aaData.push( { "name":"endTime","value":$("#endTime").val() } );
	aaData.push( { "name":"status","value":$("#status").val() } );
  
    startTime = $("#startTime").val();
    endTime = $("#endTime").val();
    status = $("#status").val();
    
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
            var h = $("#example_info").html();
            $("#example_info").html(h.split(/undefined/).join(''));
        } 
    }); 
    
   $('#startTime,#endTime').datetimepicker({
    	format : 'yyyy-mm-dd hh:ii:ss',
    	autoclose : true,
    	todayBtn : true,
    	language : 'zh-CN',
    //setStartDate: newDate
    }); 
    
}



var round = Math.random(); 

var winCodeAddFlag = true;
$(function(){
	
	
	initTable();
	
    $("#searchWinCode").on('click', function(){
    	otable.fnDraw();
    });

   /*  下载数据 */
    $("#downWinCode").click(function(){ 
    	location.href = "${ctx}/yqyl/downloadInvite.json?startTime="+startTime+"&endTime="+endTime+"&status="+status+"";
    });
    
   
   
    /* 上传数据 */
    $("#importWinCode").on('click', function(){
    	$("#winCodeFile").click();
    });
    
    $("#winCodeFile").change(function(){
		$("#winCodeForm").submit();
	});
    
    $("#winCodeForm").submit(function(){
		$("#winCodeForm").ajaxSubmit({
            type: "post",
            url: "${ctx}/yqyl/importInvite.json",
            success: function (data) {
            	if(data.status == '1'){
            		show("信息导入成功");
            		otable.fnDraw();           		 
            	}else{
            		show("信息导入失败"); 
            	}
            }, 
            error: function (msg) {
                show("信息导入失败");    
            },
            timeout:10000
        });
		return false;
	});
         
});


function initTable(){
	otable = $('#example').dataTable( {
    	"sErrMode": 'throw',
    	"bSort": false,							//开关，是否启用各列具有按列排序的功能
        "bAutoWidth": true,                    	//自动计算列宽度   
        "bProcessing": false,                    //加载数据时显示正在加载信息   
        "bServerSide": true,                    //指定从服务器端获取数据   
        "bFilter": false,                       //不使用过滤功能   
        "iDisplayLength": 10,                    //每页显示10条数据   
        "sAjaxSource": "${ctx}/yqyl/findinviteUser.json?round="+round,		//获取数据的url   
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
        "lengthMenu": [[3, 10, 25, 50, -1], [3, 10, 25, 50, "All"]],
        "columns": [
                    { "title": "新用户id", "data": "userId" },
                    { "title": "新用户电话号码", "data": "phone" },
                    { "title": "新用户注册时间", "data": "createTime" },
                    { "title": "营销代码", "data": "bsCode" },
                    { "title": "审批状态", "data": "status" },
                    { "title": "老用户id", "data": "olduserId" },
                    { "title": "老用户电话号码", "data": "oldphone" },
                    { "title": "老用户注册时间", "data": "oldcreateTime" }         
    	            
        ]
        
    } );
    
    //隐藏列表行数选择框
    $("#example_length").css("display", "none");
    
}


var showFn = function(dofn){
	$('#new-show').modal('close');
	if(dofn){
		dofn();
	}
}
/* 重写show方法 */
function show(data,fn){
	$("#alert-content").html(data);
	$('#new-show').modal({
        relatedTarget: this,
        dimmer: false,
        onConfirm: function(options) {
        },
        // closeOnConfirm: false,
        onCancel: function() {
        }
    });
	setTimeout('showFn('+fn+')', 1000 );
}
</script>
	
	
</body>
</html>