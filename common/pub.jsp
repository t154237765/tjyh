<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<%@ page import="java.text.*" %>
<%-- <c:set var="ctx" value=""/> --%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="user" value="${sm.user}"/>
<%-- <c:set var="stax" value="http://statictj.boyaunite.com"/> --%>
<c:set var="stax" value="${pageContext.request.contextPath}"/>
<!--<c:set var="user" value="${sessionScope.SESSION_LOGIN.user}"/>-->


<script src="${stax}/assets/js/jquery.min.js"></script>
<script>
$.ajaxSetup({cache:true});

function showPage(page, ind) {
	if (page) {
		if(store && ind) store.set("menuIndex", ind);
		var r = Math.random();
		$('.admin-content').load('${ctx}' + page + '?r=' + r);
	}
}

function gomycenter(){
	if(localStorage.getItem("userId") && localStorage.getItem("bankuid")){
		window.location.href = '${ctx}/mycenter/personal.do?userId='+encodeURIComponent(localStorage.getItem("userId"))
			+'&bankuid='+encodeURIComponent(localStorage.getItem("bankuid"));
	}else{
		window.location.href = '${ctx}/mycenter/personal.do';
	}
}
</script>