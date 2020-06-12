<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
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
	
	.admin-content2 {
		width: 800px;
		height: 350px;
		background: #fff;
		border: 1px solid #ccc;
		border-radius: 5px;
		margin: 65px auto;
	}
	
	.box div {
		margin-bottom: 4%;
	}
	
	.box {
		width: 80%;
		margin: 60px auto;
	}
	
	.box .btn {
		margin-left: 40%;
		margin-top: 5%;
	}
	
	.box input {
		width: 450px;
		height: 32px;
	}
</style>
<div class="c-bread">
	<ol class="am-breadcrumb">
		<li>
			<a href="#" class="c-level-1">用户管理</a>
		</li>
		<li>
			<a href="#" class="c-level-2">津元宝导入纪录</a>
		</li>
		<li>
			<a href="#" class="c-level-2" style="color: #3685C2;">批量导入津元宝</a>
		</li>
	</ol>
</div>

<div class="admin-content2">
	<div class="am-u-md-12">
		<div class="box">

			<div>
				<p>
					<span>导入名单：&nbsp;</span>
					<button type="button" class="am-btn am-btn-primary am-radius">选择图片</button>
					<input type="text" class="file" style="width: 200px;" value="未选择任何文件" />
				</p>
			</div>
			<div>
				<p>导入数量：
					<input type="text" />
				</p>
			</div>
			<div>
				<p>导入理由：
					<input type="text" />
				</p>
			</div>
			<button type="button" class="am-btn am-btn-primary am-radius btn">确认导入</button>
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
  		}else if(title == "批量导入津元宝"){
  			link = "${ctx}/jsp/system_tjh/page/user/derive.jsp";
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