<%@page import="java.util.List"%>
<%@page import="com.ysnc.shopping.salesitem.SalesItem"%>
<%@page import="com.ysnc.shopping.order.Order"%>
<%@page import="com.ysnc.shopping.order.OrderMgr"%>
<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
<%
	int oId = Integer.parseInt(request.getParameter("oid"));
	Order o = OrderMgr.getInstance().loadById(oId);
	List<SalesItem> items = OrderMgr.getInstance().getSalesItem(o);
	System.out.println(items.size());
%>
</head>
<body>
<table class="public-cont-table" border="1">
					
					<tr>
						<td>������Ϣ��</td>
					</tr>
					<tr>
						<th style="width: 10%">����ID</th>
						<th style="width: 5%">�û�ID</th>
						<th style="width: 20%">������ַ</th>
						<th style="width: 20%">�µ�ʱ��</th>
						<th style="width: 20%">�������</th>
						<th style="width: 25%">ͼƬ</th>
					</tr>
					<tr>
						<th style="width: 10%"><%=o.getId()%></th>
						<th style="width: 5%"><%=o.getUserId()%></th>
						<th style="width: 20%"><%=o.getAddr()%></th>
						<th style="width: 20%"><span style="color: #6bc095"><%=o.getOdate()%></span></th>
						<th style="width: 20%"><%=o.getStatus()%></th>
						<th style="width: 25%"><img class="thumb" src=" " /></th>
					</tr>
					
					<tr>
						<td>�û���Ϣ��</td>
					</tr>
					<tr>
						<th style="width: 10%">�û�ID</th>
						<th style="width: 5%">�û���</th>
						<th style="width: 20%">�û�����</th>
						<th style="width: 20%">�ջ���ַ</th>
						<th style="width: 20%">����ʱ��</th>
						<th style="width: 25%">�û��绰</th>
					</tr>
					<tr>
						<th style="width: 10%"><%=o.getNuser().getId()%></th>
						<th style="width: 5%"><%=o.getNuser().getUsername()%></th>
						<th style="width: 20%"><%=o.getNuser().getPassword()%></th>
						<th style="width: 20%"><%=o.getNuser().getAddr()%></th>
						<th style="width: 20%"><%=o.getNuser().getRdate()%></th>						
						<th style="width: 25%"><%=o.getNuser().getPhone()%></th>
					</tr>
		<%
		for(int i=0; i<items.size();i++){
			SalesItem si = items.get(i);
		%>
			<tr>
						<td>��Ʒ��Ϣ��</td>
					</tr>
					<tr>
						<th style="width: 10">���ڷ���</th>
						<th style="width: 5%">��ƷID</th>
						<th style="width: 5%">��Ʒ����</th>
						<th style="width: 20%">��Ʒ����</th>
						<th style="width: 20%">��Ʒ���򵥼�</th>
						<th style="width: 10%">��������</th>
					
					</tr>
					<tr>
					<th style="width: 10%"><%=si.getP().getCid()%></th>
						<th style="width: 5%"><%=si.getP().getId()%></th>
						<th style="width: 5%"><%=si.getP().getName()%></th>
						<th style="width: 20%"><%=si.getP().getDescr()%></th>
						<th style="width: 20%"><%=si.getUnitPrice()%></th>
						<th style="width: 20%"><%=si.getCount()%></th>						
					</tr>
						
		<%
		}
		%>
					</table>
</body>
</html>