<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>Cont</title>
<%
	String admin = (String) session.getAttribute("admin");
	if (admin != null && admin.equals("true"))
		login = true;
%>
<%!String str = "";
	boolean login = false;

	private void tree(Connection conn, int id, int level) {
		Statement stmt = null;
		ResultSet rs = null;
		String block = "";
		for (int i = 0; i < level; i++) {
			block += "--";
		}
		try {
			stmt = conn.createStatement();
			String sql = "select * from article where pid = " + id;
			rs = stmt.executeQuery(sql);
			String strLogin = "";
			while (rs.next()) {
				if (login) {
					strLogin = "<td><a href='Dele.jsp?id=" + rs.getInt("id") + "&pid=" + rs.getInt("pid")
							+ "' >ɾ��</a></td>";
				}
				str += "<tr><td>" + rs.getInt("id") + "</td><td>�ظ���</td><td><a href ='ShowCont.jsp?id="
						+ rs.getInt("id") + "'>" + block + rs.getString("cont") + "</a></td>" + strLogin + "</tr>";
				if (rs.getInt("isleaf") != 0) {
					tree(conn, rs.getInt("id"), level + 1);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
					stmt = null;

				}
				if (rs != null) {
					rs.close();
					rs = null;

				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}%>


<%
	int id = Integer.parseInt(request.getParameter("id"));
	Class.forName("com.mysql.jdbc.Driver");
	String url = "jdbc:mysql://localhost/bbs?user=root&password=123456&useSSL=true";
	Connection conn = DriverManager.getConnection(url);
	String sql = "select * from article where id =" + id;
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery(sql);
	String strLogin = "";
	rs.next();
	str += "<tr><td>���⣺" + rs.getString("title") + "</td></tr>";
	str += "<tr><td>���ݣ�" + rs.getString("cont") + "</td></tr>";
	out.println("<a href='Reply.jsp?id=" + rs.getInt("id") + "&rootid=" + rs.getInt("rootid") + "'>�ظ�</a>");
	tree(conn, id, 0);
%>
</head>

<body>
	<table>
		<%=str%>
		<%
			str = "";
		%>
	</table>
</body>
</html>