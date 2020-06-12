<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${stax}/assets/js/jquery.min.js"></script>
<script src="${stax}/assets/js/amazeui.min.js"></script>			
<script>
$(function(){
	var store = $.AMUI.store;
	var utype = store.get('utype');
	if(utype==4){
		//$(".am-active").eq(1).show();
		$("#invite").css('display','block');
	}
});

/* $(document).ready(function() {
	var mindex = 0;
	var store = $.AMUI.store;
	if(store && store.get("menuIndex") != null){
		mindex = parseInt(store.get("menuIndex"));
		$("#tjdtLeftMenu li").eq(mindex-1).addClass('am-active');
		
		if(store.get('hideTjdtMenu') && store.get('hideTjdtMenu') == '1'){
			$(".hideMenuLi").hide();
		}else
			$(".hideMenuLi").show();
	}
}); */

</script>
</head>
<body>
	<ul class="am-nav" id="tjdtLeftMenu">			
				<li class="am-active"><a href="${ctx}/tuanExpress.do">快递信息管理</a></li> 
				<li class="am-active" style="display: none;" id="invite"><a href="${ctx}/yqyl/inviteList.do">邀请有礼</a></li> 
				
	</ul>
</body>

</html>