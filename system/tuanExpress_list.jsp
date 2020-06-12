<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="${stax}/assets/plug-in/datatables-master/dist/amazeui.datatables.css">
<title>快递信息管理</title>
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
    <!-- <div class="am-topbar-right">
      <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">登录</button>
       <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">注册</button>
       <button class="am-btn am-btn-primary am-topbar-btn am-btn-sm">退出</button>
    </div> -->
    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list am-topbar-right">
	   	<li class="am-dropdown" data-am-dropdown="">
	       <a class="am-dropdown-toggle okmemo-tmp-unselect" data-am-dropdown-toggle="" href="javascript:;">
	         <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
	       </a>
	       <ul class="am-dropdown-content">

	         <%-- <li><a href="${ctx}/logout.do"><span class="am-icon-user"></span> 登录</a></li> --%>

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
					<div class="am-form-group ">	
					
						<label  class="am-u-md-1 am-u-sm-offset-1 am-form-label">开始时间</label>
						<div class=" am-u-md-3" >
							<input id="startTime"type="text" value="" >
						</div> 
						
						<label  class="am-u-md-1 am-u-sm-offset-1 am-form-label">结束时间</label>
						<div class=" am-u-md-4" >
							<input id="endTime" type="text" value="" >
						</div> 					
									    
						<label  class="am-u-md-1 am-u-sm-offset-1 am-form-label">录入状态</label>
						<div class=" am-u-md-4" style="padding-right:0">
							<!-- <input id="winCode" size="16" type="text" value="" > -->
							<select name="condition" id="condition">
								<option value="">请选择</option>
								<option value="0">未录入</option>
								<option value="1">已录入</option>
							</select>
						</div> 
						
						<label  class="am-u-md-1 am-form-label ">商品名称</label>
						<div class=" am-u-md-5">
							<input type="text" id="prodname">
						</div>
					</div>
					<div class="am-form-group" style="text-align:right">
						<div class=" am-u-md-12" style="padding:0">
							<div class="am-btn-group">
								<button id="searchWinCode" type="button" class="am-btn  am-radius am-margin-right-sm">查询</button>
								<button id="downWinCode" type="button" class="am-btn  am-radius am-margin-right-sm">导出</button>
								<button id="importWinCode" type="button" class="am-btn  am-radius am-margin-right-sm">导入</button>	
								<%-- <button id="addWinCode" type="button" class="am-btn am-radius am-margin-right-sm">添加</button>															
								<a href="${stax}/resource/template-dati-code.xls" style="color:#333"><button type="button" class="am-btn  am-radius am-margin-right-sm" style="margin-right:0">下载模板</button></a>
								<button id="delAllWinCode" type="button" class="am-btn  am-radius am-margin-right-sm">清空</button> --%>
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
	
		<!-- 添加模块 -->
	<div class="am-modal am-modal-confirm" tabindex="-1" id="add-confirm">
	  <div class="am-modal-dialog">
	    <div class="am-modal-hd">融联</div>
	    <div class="am-modal-bd am-form">
		    <div class="am-g">
			    <div class="am-u-md-3">
			               快递公司：
			    </div>
			    <div class="am-u-md-9">
			      <input type="text" id="prizeAdd">
			    </div>
		    </div>
		    <div class="am-g">
			    <div class="am-u-md-3">
			               运货编号：
			    </div>
			    <div class="am-u-md-9">
			      <input type="text" id="winCodeAdd">
			    </div>
		    </div>
		    <div class="am-g">
			    <div class="am-u-md-3">
			               发货时间：
			    </div>
			    <div class="am-u-md-9">
			      <input type="text" id="checkCodeAdd">
			    </div>
		    </div>
	    </div>
	    <div class="am-modal-footer">
	      <span class="am-modal-btn" data-am-modal-confirm>确定</span>
	      <span class="am-modal-btn" data-am-modal-cancel>取消</span>
	    </div>
	  </div>
	</div> 
	
	<!-- 删除提示模块 -->
	 <div class="am-modal am-modal-confirm" tabindex="-1" id="del-confirm">
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
	
	<!-- 删除提示模块 -->
	 <div class="am-modal am-modal-confirm" tabindex="-1" id="del-confirm-0">
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
//var supplierid = store.get("supplierid");
// var tianJinDaTiId = store.get("tianJinDaTiId"); 

var prodname; //查询条件
var startTime;
var endTime;
var otable;

function retrieveData(sSource, aaData, fnCallback ) { 
	
	aaData.push( { "name":"prodname","value":$("#prodname").val() } );
	aaData.push( { "name":"condition","value":$("#condition").val() } );
	aaData.push( { "name":"startTime","value":$("#startTime").val() } );
	aaData.push( { "name":"endTime","value":$("#endTime").val() } );
  
	prodname = $("#prodname").val();
	condition = $("#condition").val();
	startTime = $("#startTime").val();
	endTime = $("#endTime").val();
	
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
    
    $('#checkCodeAdd').datetimepicker({
    	format : 'yyyy-mm-dd hh:ii:ss',
    	autoclose : true,
    	todayBtn : true,
    	language : 'zh-CN',
    //setStartDate: newDate
    });
    
    $('#startTime,#endTime').datetimepicker({
    	format : 'yyyy-mm-dd hh:ii:ss',
    	autoclose : true,
    	todayBtn : true,
    	language : 'zh-CN',
    //setStartDate: newDate
    }); 
}



var id;
var orderId;
function expressManage(obj){
	var indx = $(obj).parent().parent().index();
	console.log(datas);
	console.log(indx);
	
	
	//debugger
	if(datas){
		console.log(datas);
		console.log(indx);
		id = datas[indx].id;
		console.log(id);
		orderId = datas[indx].orderId;	
		
		if(!id){
			 //新增传拼团订单表id
			$("#prizeAdd").val('');
			$("#cmpName").val('');
			$("#winCodeAdd").val('');
			$("#expressCode").val('');
			$("#checkCodeAdd").val('');
			$("#sendTime").val('');
		}else{
			//修改传快递信息表id
			var tr = obj.parentNode.parentNode;
			var cmpName = $(tr).children().eq(5).html();
			var expressCode = $(tr).children().eq(6).html();
			var sendTime = $(tr).children().eq(7).html();
			
			$("#prizeAdd").val(cmpName);
			$("#cmpName").val('');
			$("#winCodeAdd").val(expressCode);
			$("#expressCode").val('');
			$("#checkCodeAdd").val(sendTime);
			$("#sendTime").val('');
			$("#prizeCodeId").val(id);
			
		}
				
	}
	
	
	$("#add-confirm").modal({
		relatedTarget: this,
		closeOnConfirm: false,
		onConfirm: function(n) {
			//debugger;
			if(!id){
				addExpressCode(orderId,obj);
			}else{
				updatePrizeCode(id, obj);
			}
		},
		onCancel: function(n) {
		}
	});
	
	
	
}




var round = Math.random(); 

var winCodeAddFlag = true;
$(function(){
	
	//if(!tianJinDaTiId) return;
	
	
	
	
	initTable();
	
    $("#searchWinCode").on('click', function(){
    	otable.fnDraw();
    });
  
    
    //下载数据 
    $("#downWinCode").click(function(){ 
    	location.href = "${ctx}/downloadExpress.json?prodname="+prodname+"&condition="+condition+"&startTime="+startTime+"&endTime="+endTime;
    });
    
    
    // 上传数据 
    $("#importWinCode").on('click', function(){
    	$("#winCodeFile").click();
    });
    
    $("#winCodeFile").change(function(){
		$("#winCodeForm").submit();
	});

	$("#winCodeForm").submit(function(){
		$("#winCodeForm").ajaxSubmit({
	        type: "post",
	        url: "${ctx}/importExpress.json",
	        success: function (data) {
	        	if(data.status == '1'){
            		show(data.msg);
            		otable.fnDraw();           		 
            	}else{
            		show(data.msg);
            		//show("信息导入失败"); 
            	}
	        }, 
	        error: function (msg) {
	            show("信息导入失败");    
	        },
	        timeout:10000
	    });
		return false;
	});

    
    
    
  /*   $("#addWinCode").on('click', function(){
    	$("#prodname").val('');
    	$("#prizeAdd").val('');
    	$("#winCodeAdd").val('');
		$("#winCode").val('');
		$("#checkCodeAdd").val('');
		$("#checkCode").val('');
    	$("#add-confirm").modal({
			relatedTarget: this,
			closeOnConfirm: false,
			onConfirm: function(n) {
				var winCode = $("#winCodeAdd").val().trim();
				var checkCode = $("#checkCodeAdd").val().trim();
				var prizeName = $("#prizeAdd").val().trim();
		    	if(winCode && winCodeAddFlag){
		    		winCodeAddFlag = false;
		    		$.post("${ctx}/tianJinDaTiManage/addWinCode.json", {"datiId":tianJinDaTiId, "winCode":winCode, "checkCode":checkCode, "prizeName":prizeName}, function(dataInfo){
		        		show(dataInfo.msg,function(){
		        			$("#prize").val('');
		        	    	$("#prizeAdd").val('');
		        			$("#winCodeAdd").val('');
		        			$("#winCode").val('');
		        			$("#checkCodeAdd").val('');
		        			$("#checkCode").val('');
		        			otable.fnDraw();
		        			$("#add-confirm").modal('close');
		        			winCodeAddFlag = true;
		        		});
		        	});
		    	}
			},
			onCancel: function(n) {
			}
		});
    });
     */
 /*     $("#importWinCode").on('click', function(){
    	$("#del-confirm-1 .am-modal-bd").html('确定要导入奖品兑奖码？');
    	$("#del-confirm-1").modal({
    		relatedTarget: this,
    		closeOnConfirm: false,
    		onConfirm: function(n) {
    			$("#del-confirm-1").modal("close");
    			$("#winCodeFile").click();
    		},
    		onCancel: function(n) {
    			
    		}
    	});
    	
    });  */
    
  /*  $("#delAllWinCode").on('click', function(){
    	$("#del-confirm-0 .am-modal-bd").html('确定要删除所有记录吗？');
    	$("#del-confirm-0").modal({
    		relatedTarget: this,
    		closeOnConfirm: false,
    		onConfirm: function(n) {
    			$.post("${ctx}/tianJinDaTiManage/deleteAllPrizeCode.json", {"id":tianJinDaTiId}, function(dataInfo){
            		show(dataInfo.msg,function(){
            			otable.fnDraw();
            			$("#del-confirm-0").modal("close");
            		});
            	});
    		},
    		onCancel: function(n) {
    			
    		}
    	});
    }); */
    
  
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
        "sAjaxSource": "${ctx}/tuanExpressList.json?round="+round,		//获取数据的url   
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
					{ "title": "订单号", "data": "orderNo" },
					{ "title": "创建时间", "data": "createTime" },
                    { "title": "收货人", "data": "recname" },
                    { "title": "电话号码", "data": "phone" },
                    { "title": "商品名称", "data": "prodname" },
                    { "title": "属性值", "data": "attrVal" },
                    { "title": "快递公司", "data": "cmpName" },
                    { "title": "运货编号", "data": "expressCode" },
                    { "title": "发货时间", "data": "sendTime" },
    	            { "title": "操作", "data": "orderId", "orderable": false, "render": function (data) {
	                        return '<button type="button" class="am-btn am-btn-primary am-btn-xs" data-list="'+data+'"  onclick="expressManage(this);" >管理</button>';
	                 
    	            }
	            }
        ]
        
    } );
    
    //隐藏列表行数选择框
    $("#example_length").css("display", "none");
    
}

/*  function deletePrizeCode(id, obj){
	$("#prizeCodeId").val(id);
	
	$("#del-confirm .am-modal-bd").html('确定要删除这条记录吗？');
	$("#del-confirm").modal({
		relatedTarget: this,
		closeOnConfirm: false,
		onConfirm: function(n) {
			$.post("${ctx}/tianJinDaTiManage/deletePrizeCode.json", {"id":$("#prizeCodeId").val()}, function(dataInfo){
        		show(dataInfo.msg,function(){
        			otable.fnDraw();
        			$("#del-confirm").modal("close");
        		});
        	});
		},
		onCancel: function(n) {
			
		}
	});
}  */


 function updatePrizeCode(id, obj){
		
	$.post("${ctx}/updateExpressCode.json", {"id":$("#prizeCodeId").val(), 
		'expressCode':$("#winCodeAdd").val(), 
		'sendTime':$("#checkCodeAdd").val(),
		'cmpName':$("#prizeAdd").val()}, function(dataInfo){
      		show(dataInfo.msg,function(){
      			otable.fnDraw();
      			$("#prizeAdd").val('');
      			$("#cmpName").val('');
      			$("#winCodeAdd").val('');
      			$("#expressCode").val('');
      			$("#checkCodeAdd").val('');
      			$("#sendTime").val('');
      			$("#prizeCodeId").val('');
      			$("#add-confirm").modal("close");
      		});
      	});
}




function addExpressCode(orderId,obj){
	
	var cmpName = $("#prizeAdd").val().trim();
	var expressCode = $("#winCodeAdd").val().trim();
	var sendTime = $("#checkCodeAdd").val().trim();
   	if(cmpName && winCodeAddFlag){
   		winCodeAddFlag = false;
   		$.post("${ctx}/addExpressCode.json", {"orderId":orderId, "cmpName":cmpName, "expressCode":expressCode, "sendTime":sendTime}, function(dataInfo){
       		show(dataInfo.msg,function(){
       			$("#prizeAdd").val('');
       			$("#cmpName").val('');
       			$("#winCodeAdd").val('');
       			$("#expressCode").val('');
       			$("#checkCodeAdd").val('');
       			$("#sendTime").val('');
       			otable.fnDraw();
       			$("#add-confirm").modal('close');
       			winCodeAddFlag = true;
       		});
       	});
   	}
	
}


$(document).keyup(function(event){
	  if(event.keyCode ==13){
		  otable.fnDraw();
	  }
});








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