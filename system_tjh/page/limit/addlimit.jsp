<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<style type="text/css">
	* {
		font-family: "黑体";
	}
	.box form {
		margin-bottom: 6%;
	}
	
	.box {
		width: 48%;
		margin: 100px auto;
		border: 1px solid #ccc;
		border-radius: 5px;
		padding: 3% 5%;
		padding-top: 6%;
	}
	.box select {
		width: 500px;
		height: 32px;
	}
	input[type="text"]{
		width:500px;
		height: 32px;
	}
	tr{
		height: 50px;
		vertical-align:inherit;
	}
	#preview , #save{
		width: 120px;
	}
	textarea{
		border-radius: 10px;
	}
</style>

<div class="c-bread">
	<ol class="am-breadcrumb">
		<li>
			<a href="#" class="c-level-1">活动管理</a>
		</li>
		<li>
			<a href="#" class="c-level-2" style="color:#0A60A9;">添加限时抢购</a>
		</li>
	</ol>
</div>

<div class="admin-content2">
	<div class="am-u-md-12">
		<div class="box">
			<form action="" method="post">
			<table border="0" cellspacing="" cellpadding="">
				<tr>
					<td>商品名称：</td>
					<td>
						<select name="">
							<option value="">请选择</option>
							<option value="">二</option>
							<option value="">三</option>
							<option value="">四</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>开始时间：</td>
					<td><input type="text" name="" id="" value="" /></td>
				</tr>
				<tr>
					<td>结束时间：</td>
					<td><input type="text" name="" id="" value="" /></td>
				</tr>
				<tr>
					<td></td>
					<td>
						<button type="button" class="am-btn am-btn-primary am-radius" style="margin-right:3em;" id="preview">预览</button>
						<button type="button" class="am-btn am-btn-primary am-radius" id="save">保存</button>
					</td>
				</tr>
			</table>
		</form>
		</div>
	</div>
</div>

<script>
	$('#example').dataTable({
		"lengthMenu": [
			[5, 25, 50, -1],
			[5, 25, 50, "All"]
		]
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
  		}else if(title == "添加限时抢购"){
  			link = "${ctx}/jsp/system_tjh/page/limit/addlimit.jsp";
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