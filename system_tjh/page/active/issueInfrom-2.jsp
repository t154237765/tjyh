<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/jquery.dataTables.min.css"/>
<style type="text/css">
	input[type="text"]{
		height: 32px;
	}
	tr{
		height: 50px;
		vertical-align:inherit;
	}
	#submit{
		width: 120px;
	}
	textarea{
		border-radius: 10px;
	}
</style>
<div id="a-box">
	<div class="c-bread">
		<ol class="am-breadcrumb">
			<li>
				<a href="#" class="c-level-1">活动管理</a>
			</li>
			<li>
				<a href="#" class="c-level-2">半价抢购</a>
			</li>
			<li>
				<a href="#" class="c-level-3">购买通知管理</a>
			</li>
			<li>
				<a href="#" class="c-level-4" style="color: #0A60A9;">发布购买短信</a>
			</li>
		</ol>
	</div>

	<div class="am-u-md-12">
		<form action="" >
			<table border="0">
				<tr>
					<td colspan="2">短信内容：</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea name="" rows="6" cols="150"></textarea>
					</td>	
				</tr>
				<tr>
					<td colspan="2">
						<span>短信长度</span>
						<input type="text" />
						<span>字</span>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="radio" name="radio2" value="" data-am-ucheck disabled> 导入手机号码（xls/xlsx或txt格式，每一行一个手机号码）；
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" class="am-btn am-btn-primary am-radius">选择图片</button>
						<input type="text" class="file" style="width: 260px;" value="未选择任何文件" />
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="radio" name="radio2" value="" data-am-ucheck disabled> 输入手机号码（多个手机号码使用半角“，”分隔）；；
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea name="" rows="6" cols="150"></textarea>
					</td>	
				</tr>	
				<tr>
					<td colspan="2">
						<button type="button" class="am-btn am-btn-primary am-radius" id="submit">提交</button>
						<!--<button type="button" class="am-btn am-btn-primary am-radius" id="save">保存</button>-->
					</td>
				</tr>
			</table>
		</form>
	</div>

</div>
<script src="${ctx}/jsp/system_tjh/assets/js/datatables-master/dist/amazeui.datatables.min.js"></script>
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
  		}else if(title == "发布购买短信"){
  			link = "${ctx}/jsp/system_tjh/page/active/issueInfrom-2.jsp";
  		}
  		
  		$.ajax({
			url:link,
			type:"get",
			data:{},
			dataType:"html",
			success:function(html){	//载入右侧内容
				$("#c-right-wrapper").html(html);
			}
		});
  			
  	});
</script>