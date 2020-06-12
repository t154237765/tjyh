<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>
<%@ page import="com.ronglian.tjpt.system.util.IPInfoUtil"%>
<%
	String ip = IPInfoUtil.getIpAddr(request);
	String addr = IPInfoUtil.getAddrByTaobaoIp(ip);
%>

	<script src="${stax}/assets/js/jquery.min.js"></script>
	<script src="${stax}/assets/js/weui.min.js"></script>
<script type="text/javascript">
    	var errwlMsg = "${errwlMsg}";
    	if(errwlMsg && errwlMsg != ""){
    		var homeUrl = localStorage.getItem("homeUrl");
    		weui.alert(errwlMsg, function() {
    			window.location.href="/tjpt/tjhui/"+homeUrl;
    		});
    	}
    </script>
	<script>
    var p = "${prod.prodName}";
    alert(p);
</script>
