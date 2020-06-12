<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<link rel="stylesheet" href="${ctx}/jsp/system_tjh/assets/css/jquery.dataTables.min.css" />

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
		width: 820px;
		height: 600px;
		background: #fff;
		border: 1px solid #ccc;
		border-radius: 5px;
		margin: 65px auto;
	}

	.box {
		width: 60%;
		margin: 60px auto;
	}

	form input {
		height: 32px;
	}
	tr{
		height:80px;
	}
	#preview , #submit{
		width:120px;
		margin-left:45%;
	}
</style>

<div class="c-bread">
	<ol class="am-breadcrumb">
		<li>
			<a href="#" class="c-level-1">活动管理</a>
		</li>
		<li>
			<a href="#" class="c-level-2">半价抢购</a>
		</li>
		<li>
			<a href="#" class="c-level-3" style="color:#0A60A9;">中奖公布</a>
		</li>
	</ol>
</div>

<div class="admin-content2">
	<div class="am-u-md-12">
		<div class="box">
			<form action="">
				<table> 
					<tr>
						<td>期数：</td>
						<td><span>第<%=request.getParameter("nper")%>期</span></td>
					</tr>
					<tr>
						<td>成团时间：</td>
						<td><span class="tuantime"></span></td>
					</tr>
					<tr>
						<td>中奖号码：</td>
						<td><input type="text" class="codenum"></td>
					</tr>
					<tr>
						<td>中奖用户：</td>
						<td><span class="phone"></span></td>
					</tr>
					<tr>
						<td>中奖图片：</td>
						<td>
							<input type="file" class="file" value="未选择任何文件" />
						</td>
					</tr>
					<tr>
						<td><button type="button" class="am-btn am-btn-primary am-radius" id="submit">提交</button></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>
<script>
	var nper = <%=request.getParameter("nper")%>;
	$(function(){
		$.ajax({
			url:'${ctx}/a/salebuy/findwininfobynper.json',
			type:'post',
			data:'nper='+nper+"&r="+Math.random(),
			dataType:'json',
			success:function(resp){
				var infos = resp.awards;
				$(".tuantime").text(infos[0].tuanTime);
				$(".codenum").val(infos[0].codeNum);
				$(".phone").text(infos[0].phone);
			}
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
	  		}else if(title == "中奖公布"){
	  			link = "${ctx}/jsp/system_tjh/page/active/publish.jsp";
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
	});
</script>

