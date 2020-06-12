<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/jsp/common/pub.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>上传txt文件</title>
</style>
</head>
<body>
	<form class="form-horizontal" id="form1" name="myForm" action="${ctx}/loan/insertLoanInfos.json" method="post" enctype="multipart/form-data">
		<input type="file" name="file" value="选择需要上传的文件"/>
		<input type="submit" value="提交">
	</form>
<script type="text/javascript"></script>
</script>
</body>
</html>
