<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="GBK">
	<title>后台欢迎页</title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/content.css" />
	<%
	String username = request.getParameter("username");
%>
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">您当前的位置：<a href="">管理首页</a>></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>网站后台</h3>
			</div>
			<div class="public-content-cont">
				<p style="width: 100%;text-align: center; padding: 50px 0; font-size: 16px; color: #FF0000;"><%=username %>管理员！ 欢迎登陆网站后台！</p>
		
			</div>
		</div>

	</div>
</body>
</html>