<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<style type="text/css">
	.am-radio-inline{
		margin-right:4%;
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
</style>
<div class="c-bread">
	<ol class="am-breadcrumb">
		<li>
			<a href="#" class="c-level-1">活动管理</a>
		</li>
		<li>
			<a href="#" class="c-level-2" style="color: #0A60A9;">添加活动</a>
		</li>
		<!--<li style="display: none;">
							<a href="#" class="c-level-3"></a>
						</li>-->
	</ol>
</div>

<div class="am-u-md-12">
	<from action="" >
		<table border="0">
			<tr>
				<td colspan="2">选择位置：</td>
			</tr>
			<tr>
				<td colspan="2">
					<label class="am-radio-inline">
						<input type="radio" name="radio10" value="male" data-am-ucheck> 位置一
					</label>
					<label class="am-radio-inline">
						<input type="radio" name="radio10" value="female" data-am-ucheck>位置二
					</label>
					<label class="am-radio-inline">
						<input type="radio" name="radio10" value="pig" data-am-ucheck>位置三
					</label>
					<label class="am-radio-inline">
						<input type="radio" name="radio10" value="pig" data-am-ucheck>位置四
					</label>
				</td>
			</tr>
			<tr>
				<td style="width: 150px">开始时间：</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td style="width: 150px">结束时间：</td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td style="width: 150px">列表图：</td>
				<td>
					<button type="button" class="am-btn am-btn-primary am-radius">选择图片</button>
					<input type="text" class="file" style="width: 260px;" value="未选择任何文件" />
				</td>
			</tr>
			
			<tr>
				<td style="width: 150px">活动链接：</td>
				<td><input type="text" /></td>
			</tr>
			
			<tr>
				<td colspan="2">活动规则：</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea name="" rows="15" cols="150"></textarea>
				</td>	
			</tr>
			
			<tr>
				<td colspan="2">
					<input type="checkbox" name="" id="check" value="" />立即上架
				</td>
				
			</tr>
			
			<tr>
				<td colspan="2">
					<button type="button" class="am-btn am-btn-primary am-radius" style="margin-right:3em;" id="preview">预览</button>
					<button type="button" class="am-btn am-btn-primary am-radius" id="save">保存</button>
				</td>
			</tr>
		</table>
	</from>
</div>
<script type="text/javascript">
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
  		}else if(title == "添加活动"){
  			link = "${ctx}/jsp/system_tjh/jsp/page/active/addActive.jsp"
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