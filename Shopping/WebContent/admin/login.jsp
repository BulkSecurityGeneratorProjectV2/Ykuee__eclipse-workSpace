<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK" import="com.ysnc.shopping.sUser"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="GBK" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title></title>
	<link rel="stylesheet" href="css/reset.css" />
	<link rel="stylesheet" href="css/login.css" />
<%
	String login = request.getParameter("action");
	String str = "";
	if(login !=null&&login.equals("login")){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if(sUser.loginIn(username, password)){
			session.setAttribute("admin","true");
			response.sendRedirect("index.jsp?username="+username);
		}
		str="�û��������벻��ȷ������������";
	}
%>	

</head>
<body>
<div class="page">
	<div class="loginwarrp">
		<div class="logo">����Ա��½</div>
        <div class="login_form">
			<form id="Login" name="Login" method="post" onsubmit="" action="">
			<input type="hidden" name="action" value="login" />
				<%=str %>
				<li class="login-item">
				
					<input type="text" value="�û���:" name="username" class="login_input"
											onBlur="if(this.value=='')this.value='�û���:'"
						onFocus="if(this.value=='�û���:')this.value=''">
				</li>
				<li class="login-item">
					<input type="password" name="password" value="password" class="login_input"
					onBlur="if(this.value=='')this.value='password'"
						onFocus="if(this.value=='password')this.value=''">
				</li>
				<div class="clearfix"></div>
				<li class="login-sub">
					<input type="submit" name="Submit" value="��¼" />
				</li>                      
           </form>
		</div>
	</div>
</div>
</body>
</html>