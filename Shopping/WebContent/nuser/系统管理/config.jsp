<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK" import="com.ysnc.shopping.nUser"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="GBK">
<title>��̨��ӭҳ</title>
<link rel="stylesheet" href="../css/reset.css" />
<link rel="stylesheet" href="../css/content.css" />
<%
	nUser u = (nUser) session.getAttribute("nuser");
	if (u == null) {
		out.println("���¼����");
		return;
	}
%>
<%	String str = "";
	String action = request.getParameter("action");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	String phone = request.getParameter("phone");
	String addr = request.getParameter("addr");
	if (action != null && action.equals("post")) {
		u.setAddr(addr);
		u.setUsername(username);
		u.setPassword(password);
		u.setPhone(phone);
		u.userUpdate(u);
		str="�޸ĳɹ�";
	}
%>
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">
			����ǰ��λ�ã�<a href="">������ҳ</a>>
		</div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>�޸��û���Ϣ</h3>
			</div>
			<div class="public-content-cont">
				<form action="config.jsp" method="post" >
					<input type="hidden" name="action" value="post" />
					<font color="red">
					<%=str%>
					</font>
					<div class="form-group">
						<label for="">�û���</label> <input class="form-input-txt"
							type="text" name="username" value="<%=u.getUsername()%>" />
					</div>
					<div class="form-group">
						<label for="">�û�����</label> <input class="form-input-txt"
							type="text" name="password" value="<%=u.getPassword()%>" />
					</div>
					<div class="form-group">
						<label for="">�û��绰</label> <input class="form-input-txt"
							type="text" name="phone" value="<%=u.getPhone()%>" />
					</div>
					<div class="clearfix"></div>
					<div class="form-group">
						<label for="">�ջ���ַ</label>
						<textarea class="form-input-textara" type="text"
							name="addr"><%=u.getAddr()%></textarea>
					</div>

					<div class="form-group" style="margin-left: 150px;">
						<input type="submit" class="sub-btn" value="��  ��" /> <input
							type="reset" class="sub-btn" value="��  ��" />
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../kingediter/kindeditor-all-min.js"></script>

</body>
</html>