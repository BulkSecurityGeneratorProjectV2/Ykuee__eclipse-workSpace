<%@page import="com.ysnc.shopping.product.ProductMgr"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK"%>
<%@ page
	import="com.ysnc.shopping.DAO.*, java.util.*,com.ysnc.shopping.product.*,com.ysnc.shopping.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="GBK">
<title>��̨��ӭҳ</title>
<link rel="stylesheet" href="../css/reset.css" />
<link rel="stylesheet" href="../css/content.css" />
<%!private static final int PAGE_SIZE = 3;%>

<%		
	request.setCharacterEncoding("GBK");
	String admin = (String) session.getAttribute("admin");
	String action = request.getParameter("action");
	if (admin == null || !admin.equals("true")) {
		out.println("���¼����");
		return;
	}

	String strPageNo = request.getParameter("pageno");
	int pageNo = 1;
	if (strPageNo != null) {
		pageNo = Integer.parseInt(strPageNo);
	}
	if (pageNo < 1) {
		pageNo = 1;
	}
	List<Product> products = new ArrayList<Product>();
	int pageCount = ProductMgr.getInstance().getProducts(products, pageNo, PAGE_SIZE);
	int pageNext = pageNo+1;
	if (pageNo > pageCount-1)
		pageNext = pageCount;
	
	
	if(request.getParameter("pageinput")!=null){
		int pageinput = Integer.parseInt(request.getParameter("pageinput"));
		if(pageinput > pageCount){
			pageinput = pageCount;
		}
		response.sendRedirect("productlist.jsp?pageno="+pageinput);
	}
%>
</head>
<body marginwidth="0" marginheight="0">
	<div class="container">
		<div class="public-nav">
			����ǰ��λ�ã�<a href="">������ҳ</a>><a href="">��Ʒ����</a><a href="">������Ϣ</a>
		</div>
		<div class="public-content">
			<div class="public-content-header">
				<h3>��Ʒ�б�</h3>
			</div>
			<div class="public-content-cont">
				<table class="public-cont-table">
					<tr>
						<th style="width: 5%">ѡ��</th>
						<th style="width: 5%">��ƷID</th>
						<th style="width: 5%">���ID</th>
						<th style="width: 10%">��Ʒ����</th>
						<th style="width: 10%">��Ʒ����</th>
						<th style="width: 15%">��ͨ\��Ա�۸�</th>
						<th style="width: 20%">ͼƬ</th>
						<th style="width: 10%">����ʱ��</th>
						<th style="width: 20%">����</th>
					</tr>
					<%
						for (Iterator<Product> it = products.iterator(); it.hasNext();) {
							Product p = it.next();
					%>
					<tr>
						<td><input type="checkbox"></td>
						<td><%=p.getId()%></td>
						<td><%=p.getC().getName()%></td>
						<td><%=p.getName()%></td>
						<td><span style="color: #6bc095"><%=p.getDescr()%></span></td>
						<td><%=p.getNormalprice()%>/<%=p.getMemberprice()%></td>
						<td><img class="thumb" src="../../imgs/products/<%=p.getId()%>.jpg" /></td>
						<td><%=p.getPdate()%></td>
						<td>
							<div class="table-fun">
								<a href="modiproduct.jsp?id=<%=p.getId()%>&pname=<%=p.getName()%>&pdescr=<%=p.getDescr() %>&cid=<%=p.getC().getId() %>&cname=<%=p.getC().getName()%>&pnormalprice=<%=p.getNormalprice()%>&pmemberprice=<%=p.getMemberprice()%>  ">�޸�</a> 
								<a href="upload.jsp?id=<%=p.getId()%>" target="info">�ϴ�</a>
							</div>
						</td>
					</tr>
					<%
						}
					%>
				</table>
				<div class="page">
					<form action="" method="get">
						<a href="productlist.jsp?pageno=1">��ҳ</a> <a
							href="productlist.jsp?pageno=<%=pageNo - 1%>">��һҳ</a> <a
							href="productlist.jsp?pageno=<%=pageNext%>">��һҳ</a> ��<span
							style="color: red; font-weight: 600"><%=pageNo%></span>ҳ ��<span
							style="color: red; font-weight: 600"><%=pageCount%></span>ҳ <input
							type="text" class="page-input" name="pageinput"> <input
							type="submit" class="page-btn" value="��ת">
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>