<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>YC商城</title>
<script src="../js/jquery-1.11.3.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="../css/mr-01.css" type="text/css">
<script src="../js/jsArr01.js" type="text/javascript"></script>
<script src="../js/module.js" type="text/javascript"></script>
<script src="../js/jsArr02.js" type="text/javascript"></script>
<script src="../js/tab.js" type="text/javascript"></script>

</head>
<body>
	<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String username = (String) session.getAttribute("username");

	if (username == null || username == "") {
%>
<div id="toolbar" style="background-color: #F0F0F0; width: 100%;">
	<div class="container">
		<div class="row">
			<div class="toolbar-ct-1">
				<p>
					 <a href="login.jsp">登录</a>&nbsp; ｜ &nbsp;<a href="register.jsp">注册</a>
				</p>
			</div> 
			<div class="toolbar-ct-2"> 
				<a href="myOrderServlet">我的订单</a>&nbsp;&nbsp;
			</div> 
		</div>
	</div>
	<div style="background-color: white; width: 100%">
		<div class="container">
			<div class="row">
				<div class="toolbar-ct col-xs-12 col-md-6  hidden-sm hidden-xs">
					<div class="toolbar-ct-1">
						<a href="index.jsp"><img src="images/mylogo.png" width="144px" height="75px"></a>
					</div>
					<div>
						<!-- 搜索条 -->
						<div class="search_box">
							<div class="top-nav-search">
								<form method="post" id="myform" onsubmit="return checkSearch()" action="searchServlet">
									<input type="text" name="searchword" size="38" id="search" 
										style="border: 0px;" class="top-nav-search-input"
										placeholder="请输入内容" />   
										<input type="image" src="images/search.png" class="search_box_img"/>  
								</form>
							</div>
						</div>
						<!-- //搜索条 -->
					</div>
				</div>

				<div class="toolbar-ct toolbar-ct-right col-xs-12 col-md-3">


					<div class="toolbar-ct-2 "
						style="margin-top: 35px; border: 1px solid #EAEAEA; padding: 5px;">
						<a href="cart_see.jsp" style="color: #E33737; font-size: 20px;"><i
							class="fa fa-cart1"></i> 我的购物车</a>


					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%
	} else {
%>
<div id="toolbar" style="background-color: #F0F0F0; width: 100%;">
	<div class="container">
		<div class="row">
			<div class="toolbar-ct-1">
				<p> 
					您好，<font color="red"><%=username%></font>
					&nbsp; &nbsp;
					|&nbsp;&nbsp;<a href="#" onclick="logout()">退出</a>
				</p>
			</div>
			<div class="toolbar-ct-2"> 
				<a href="myOrderServlet">我的订单</a>&nbsp;&nbsp;
			</div>
		</div> 
	</div>
	<div style="background-color: white; width: 100%">
		<div class="container">
			<div class="row">
				<div class="toolbar-ct col-xs-12 col-md-6  hidden-sm hidden-xs">
					<div class="toolbar-ct-1">
						<a href="index.jsp"><img src="../images/mylogo.png" width="144px" height="75px"></a>
					</div>
					<div>
						<!-- 搜索条 -->
						<div class="search_box">
							<div class="top-nav-search"> 
								<form method="post" id="myform" onsubmit="return checkSearch()" action="searchServlet">
									<input type="text" name="searchword" size="38" id="search" 
										style="border: 0px;" class="top-nav-search-input"
										placeholder="请输入内容" />   
										<input type="image" src="../images/search.png" class="search_box_img"/>  
								</form>
							</div>
						</div>
						<!-- //搜索条 -->



					</div>
				</div>

				<div class="toolbar-ct toolbar-ct-right col-xs-12 col-md-3">


					<div class="toolbar-ct-2 "
						style="margin-top: 35px; border: 1px solid #EAEAEA; padding: 5px;">
						<a href="cart_see.jsp" style="color: #E33737; font-size: 20px;"><i
							class="fa fa-cart1"></i> 我的购物车</a>


					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%
	}
%>
<script>
	function checkSearch(){ 
		var val = document.getElementById("search").value;
		val = val.trim(); 
		if(val == null||val==""){   
			alert("请输入搜索内容！");
			return false;
		} 
		return true;
	}
</script>
<script> 
	function logout(){
		if(confirm("确定退出登录?")){
			window.location.href="logoutServlet";
		}
	}
</script>
	<!-- 网站头部 -->


<h1>查看数据</h1>



   	<%@ include file="../common-footer.jsp"%>
  </body>
</html>
