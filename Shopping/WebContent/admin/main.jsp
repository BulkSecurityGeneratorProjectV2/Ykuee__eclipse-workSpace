<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="GBK">
	<title>��̨��ӭҳ</title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/content.css" />
	<%
	String username = request.getParameter("username");
%>
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">����ǰ��λ�ã�<a href="">������ҳ</a>></div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>��վ��̨</h3>
			</div>
			<div class="public-content-cont">
				<p style="width: 100%;text-align: center; padding: 50px 0; font-size: 16px; color: #FF0000;"><%=username %>����Ա�� ��ӭ��½��վ��̨��</p>
		
			</div>
		</div>

	</div>
</body>
</html>