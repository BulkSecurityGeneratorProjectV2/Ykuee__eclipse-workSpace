<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"
	import="com.ysnc.shopping.sUser, com.ysnc.shopping.nUser"
	import="com.ysnc.util.DB"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="GBK">
<title>��̨��ӭҳ</title>
<link rel="stylesheet" href="../css/reset.css" />
<link rel="stylesheet" href="../css/content.css" />
<%
	String admin = (String) session.getAttribute("admin");
	if (admin == null || !admin.equals("true")) {
		out.println("���¼����");
		return;
	}
%>

<%
	List<sUser> susers = sUser.getUsers();
	List<nUser> nusers = nUser.getUsers();
%>
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">
			����ǰ��λ�ã�<a href="">������ҳ</a>><a href="">�û�����</a>
		</div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>�޸��û�����</h3>
			</div>
			<div class="public-content-cont">
				<table class="public-cont-table">
					<tr>
						<th style="width: 10%">���</th>
						<th style="width: 10%">�û���</th>
						<th style="width: 10%">�û�����</th>
						<th style="width: 15%">�û��绰</th>
						<th style="width: 20%">�û���ַ</th>
						<th style="width: 20%">��������</th>
						<th style="width: 20%">����</th>
					</tr>

					<%
						for (Iterator<sUser> it = susers.iterator(); it.hasNext();) {
							sUser u = it.next();
					%>
					<tr>
						<td><%=u.getId()%></td>
						<td><%=u.getUsername()%></td>
						<td><%=u.getPassword()%></td>
						<td><%=u.getPhone()%></td>
						<td><%=u.getAddr()%></td>
						<td><%=u.getRdate()%></td>
						<td>
							<div class="table-fun">
								<a href="suserupdate.jsp?id=<%=u.getId()%>&username=<%=u.getUsername()%>&password=<%=u.getPassword()%>&phone=<%=u.getPhone()%>&addr=<%=u.getAddr()%>&rdate=<%=u.getRdate()%>">�޸�</a> 
								 <a href="suserdel.jsp?id=<%=u.getId()%>" target="info">ɾ��</a>
							</div>
						</td>
					</tr>
					<%
						}
					%>
					<td>��ͨ��Ա:</td>
					<%
						for (Iterator<nUser> it = nusers.iterator(); it.hasNext();) {
							nUser u = it.next();
					%>

					<tr>
						<td><%=u.getId()%></td>
						<td><%=u.getUsername()%></td>
						<td><%=u.getPassword()%></td>
						<td><%=u.getPhone()%></td>
						<td><%=u.getAddr()%></td>
						<td><%=u.getRdate()%></td>
						<td>
							<div class="table-fun">
								<a href="nuserupdate.jsp?id=<%=u.getId()%>&username=<%=u.getUsername()%>&password=<%=u.getPassword()%>&phone=<%=u.getPhone()%>&addr=<%=u.getAddr()%>&rdate=<%=u.getRdate()%>">�޸�</a> <a href="nuserdel.jsp?id=<%=u.getId()%>"
									target="info">ɾ��</a>
							</div>
						</td>
					</tr>
					<%
						}
					%>

				</table>
				<div class="page">
					<form action="" method="get">
						��<span>42</span>��վ�� <a href="">��ҳ</a> <a href="">��һҳ</a> <a
							href="">��һҳ</a> ��<span style="color: red; font-weight: 600">12</span>ҳ
						��<span style="color: red; font-weight: 600">120</span>ҳ <input
							type="text" class="page-input"> <input type="submit"
							class="page-btn" value="��ת">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>