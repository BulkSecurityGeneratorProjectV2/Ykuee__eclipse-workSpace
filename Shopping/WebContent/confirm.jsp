<%@page import="com.ysnc.shopping.cart.CartItem"%>
<%@page import="java.util.List"%>
<%@page import="com.ysnc.shopping.cart.Cart"%>
<%@page import="com.ysnc.shopping.nUser"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>��������</title>
</head>
<body>
	<%
		Cart cart = (Cart) session.getAttribute("cart");
		if (cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
			out.println("<h1>���ﳵ�տ���Ұ</h1>");
			return;
		}
		nUser u = (nUser) session.getAttribute("nuser");
		if (u == null) {
			out.println("<h3><a href='nuser/rejister.jsp'>���ע�Ტ��¼���Ա�۸�Ŷ��~ ���ע��</a></h3>");
			out.println("<h2><a href='nuser/login.jsp'>��¼</a></h2>");
	%>
		<li>����д�ջ������Ϣ</li>
	<from action="order.jsp" method="post">
	<table align="center">
		<tr>
		<td>
			&nbsp&nbsp&nbsp�ջ���
		</td>
		<td>
			<input type="text" name="username" />
		</td>
		</tr>
		<tr>
			<td align=right style="padding-right: 5px; color: #000;">�ֻ�����<br>
				<span style="color: #808080; font-size: 8pt;">11λ��ȷ�ĺ���</span></td>
			<td align=left style="padding: 5px; color: #000;"><input
				name="phone" id="f5" type=text maxlength=11 size=21
				jval="{valid:function (val) { if (val.length != 11) return false; else return true; }, message:'�ֻ��������벻��ȷ', styleType:'cover'}"
				jvalkey="{valid:/[0-9]/, message:'&quot;%c&quot; Invalid Character - Only Digits Allowed', cFunc:'$(\'#formContainer\').jVal()'}"></td>
		</tr>
		<tr>
			<td align=right style="padding-right: 5px; color: #000;">�ջ���ַ</td>
			<td align=left style="padding: 5px; color: #000;"><textarea
					id="f1" rows="5" cols="30" name="addr"></textarea></td>
		</tr>
	
	</table>
	
	<%
		} else {
			out.println("<h2>��ӭ����~" + u.getUsername() + "��л���Ĺ���</h2>");
	%>


	<li>��ȷ����Ϣ�Ƿ���ȷ</li>
	<form action="order.jsp" method="post">
	<table align="center" border=1 style="color: red; font-size: 24px">
		<tr>
			<td>�û���</td>
			<td><%=u.getUsername()%></td>
		</tr>
		<tr>
			<td>�ջ���ַ</td>
			<td><%=u.getAddr()%></td>
		</tr>
		<tr>
			<td>�û��绰</td>
			<td><%=u.getPhone()%></td>
		</tr>
		<tr>
			<td><a href="nuser/index.html">����޸��û���Ϣ</a></td>
		</tr>
	</table>
	<br>
	<br>
	<%
		}
	%>
	<table align="center" border=1 style="color: blue; font-size: 24px">
		<tr>
			<td>��ƷID</td>
			<td>��Ʒ����</td>
			<td>��Ʒ�۸�<%=(u == null ? "(�г���)" : "(��Ա��)")%></td>
			<td>��������</td>
			<td>��Ʒ�ܼ۸�</td>
		</tr>
		<%
			List<CartItem> items = cart.getCart();
			for (int i = 0; i < items.size(); i++) {
				CartItem ci = items.get(i);
		%>
		<tr>
			<td><%=ci.getProductId()%></td>
			<td><%=ci.getProductName()%></td>
			<td><%=(u == null ? ci.getProductPrice() : ci.getProductMprice())%></td>
			<td><%=ci.getCount()%></td>
			<td><%=(u == null) ? ci.getTotalPrice() : ci.getProductMprice() * ci.getCount()%></td>
		</tr>
		<%
			}
		%>
	</table>
	<br>
	<br>
	<table align="center" border=1 style="color: blue; font-size: 24px">
		<tr align="left">
			<td>���ﳵ��Ʒ�ܼ۸�</td>
			<td><%=(u == null ? cart.getTotalPrice() : cart.getMTotalPrice())%>
			</td>
		</tr>
	</table>
	<br>
	<br>
	<center>
		<input type="submit" value="ȷ���µ�" />
	</center>

	</from>
</body>
</html>