<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<script src="${ctx}/jsp/system_tjh/assets/js/datatables-master/dist/amazeui.datatables.min.js"></script>
<style type="text/css">
   input{
   	height: 32px;
   }
   .datatable-btn1{
   	margin-right: 3%;
   	position: relative;
   	top: -3.4em;
   }
   .datatable-btn2{
   	position: relative;
   	top: -3.4em;
   }
</style>
<div class="am-u-md-12">
	<div class="c-input">
		<label for="doc-ipt-3" class="am-margin-left">标题：</label>
		<input type="text" class="doc-ipt-3" style="width:340px;" />
		<label for="doc-ipt-3" class="am-margin-left">发布时间：</label>
		<input type="text" class="doc-ipt-3" />
		<label for="doc-ipt-3" class=" ">至</label>
		<input type="text" class="doc-ipt-3" />
		<button type="button" class="am-btn am-btn-primary am-radius am-fr ">搜索</button>
	</div>
</div>
<div class="am-u-md-12">
	<table id="example" class="display" cellspacing="0" width="100%">
		<thead>
			<tr class="tr-color">
				<th>序号</th>
				<th>标题</th>
				<th>发布时间</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<div class="c-ib am-margin-right c-b-l">编辑</div>
				</td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<div class="c-ib am-margin-right c-b-l">编辑</div>
				</td>
			</tr>

		</tbody>
	</table>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn2">发布购买短信</button>
	<button type="button" class="am-btn am-btn-primary am-radius am-fr datatable-btn1">发布购买通知</button>
</div>
<script type="text/javascript">
	$('#example').dataTable({
		"lengthMenu ": [
			[5, 25, 50, -1],
			[5, 25, 50, "All "]
		]
	});
	$(".datatable-btn1").click(function(){
		$.ajax({
				url:"active/issueInfrom-1.jsp",
				type:"get",
				data:{},
				dataType:"html",
				success:function(html){	//载入右侧内容
					$("#c-right-wrapper").html(html);
					
				}
		})
	});
	$(".datatable-btn2").click(function(){
		$.ajax({
				url:"active/issueInfrom-2.html",
				type:"get",
				data:{},
				dataType:"html",
				success:function(html){	//载入右侧内容
					$("#c-right-wrapper").html(html);
					
				}
		})
	});
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