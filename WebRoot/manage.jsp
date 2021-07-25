<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>YC商城</title>
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/mr-01.css" type="text/css">
<script src="js/jsArr01.js" type="text/javascript"></script>
<script src="js/module.js" type="text/javascript"></script>
<script src="js/jsArr02.js" type="text/javascript"></script>
<script src="js/tab.js" type="text/javascript"></script>
<style type="text/css">
dl{
float:left;
	margin-left:500px;
}
	dl a{
	margin-left:50px;
	line-style:none;
	font-size:40px;
	float:left;
	}
</style>
</head>
<body>
	<jsp:include page="index-loginCon.jsp" />
	<!-- 网站头部 -->
<dl>
<a href="manage/add.jsp">增</a>
<a href="manage/del.jsp">删</a>
<a href="manage/alt.jsp">改</a>
<a href="manage/sea.jsp">查</a>
</dl>

   	<%@ include file="common-footer.jsp"%>
  </body>
</html>
