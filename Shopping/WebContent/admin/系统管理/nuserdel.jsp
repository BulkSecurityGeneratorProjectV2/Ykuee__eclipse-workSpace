<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ page import="com.ysnc.shopping.*"%>
<%@ page import="com.ysnc.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>ɾ���û�</title>
</head>
<%
	int id = Integer.parseInt(request.getParameter("id"));
	nUser.deleUser(id);
%>
<body>
ɾ���ɹ���
<script type="text/javascript">
<!--
window.parent.content.document.location.reload();
	-->
</script>
</body>
</html>