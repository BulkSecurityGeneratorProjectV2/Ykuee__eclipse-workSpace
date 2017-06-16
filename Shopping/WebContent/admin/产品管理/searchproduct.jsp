<%@ page language="java" contentType="text/html; charset=GB18030"
	pageEncoding="GB18030"%>
<%@page
	import="com.ysnc.shopping.*,java.util.*, com.ysnc.shopping.product.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>search product</title>
<script type="text/javascript">
<!--
	function checkdata() {
		with (document.forms["complex"]) {
			if (lownormalprice.value == null || lownormalprice.value == "") {
				lownormalprice.value = -1;
			}
			if (highnormalprice.value == null || highnormalprice.value == "") {
				highnormalprice.value = -1;
			}
			if (lowmemberprice.value == null || lowmemberprice.value == "") {
				lowmemberprice.value = -1;
			}
			if (highmemberprice.value == null || highmemberprice.value == "") {
				highmemberprice.value = -1;
			}
		}
	}
	-->
</script>
<link rel="stylesheet" href="../css/reset.css" />
<link rel="stylesheet" href="../css/public.css" />
<link rel="stylesheet" href="../css/content.css" />

<%
	List<Category> categories = CategoryDAO.getInstance().getCategories();
	request.setCharacterEncoding("GBK");
	String admin = (String) session.getAttribute("admin");
	String action = request.getParameter("action");
	if (admin == null || !admin.equals("true")) {
		out.println("���¼����");
		return;
	}
	if (action != null && action.trim().equals("post2")) {
		int pageNo = 1;
		String strpageNo = request.getParameter("pageno");
		if (strpageNo != null && !strpageNo.trim().equals("")) {
			pageNo = Integer.parseInt(strpageNo);
			if (pageNo <= 0) {
				pageNo = 1;
			}
		}
		String keyword = request.getParameter("keyword");
		double lownormalprice = Double.parseDouble(request.getParameter("lownormalprice"));
		double highnormalprice = Double.parseDouble(request.getParameter("highnormalprice"));
		double lowmemberprice = Double.parseDouble(request.getParameter("lowmemberprice"));
		double highmemberprice = Double.parseDouble(request.getParameter("highmemberprice"));
		int categoryid = Integer.parseInt(request.getParameter("categoryid"));
		int[] idArray;
		if (categoryid == 0) {
			idArray = null;
		} else {
			idArray = new int[1];
			idArray[0] = categoryid;
		}
		List<Product> list = new ArrayList<Product>();
		int pageCount = ProductMgr.getInstance().searchProducts(list, idArray, keyword, lownormalprice,
				highnormalprice, lowmemberprice, highmemberprice, pageNo, 3);
		int pageNext = pageNo + 1;
		if (pageNo > pageCount - 1) {
			pageNext = pageCount;
		}
%>
<table align="center" border="1">
	<tr>
		<th style="width: 5%">��ƷID</th>
		<th style="width: 5%">���ID</th>
		<th style="width: 10%">��Ʒ����</th>
		<th style="width: 10%">��Ʒ����</th>
		<th style="width: 15%">��ͨ\��Ա�۸�</th>
		<th style="width: 20%">ͼƬ</th>
		<th style="width: 10%">����ʱ��</th>
	</tr>
	<%
		for (Iterator<Product> it = list.iterator(); it.hasNext();) {
				Product p = it.next();
	%>
	<tr>

		<td><%=p.getId()%></td>
		<td><%=p.getCid()%></td>
		<td><%=p.getName()%></td>
		<td><span style="color: #6bc095"><%=p.getDescr()%></span></td>
		<td><%=p.getNormalprice()%>/<%=p.getMemberprice()%></td>
		<td><img class="thumb" src="" /></td>
		<td><%=p.getPdate()%></td>
	</tr>
	<%
		}
	%>

</table>

<center>
	<table>
		<tr>
			<td><a
				href="searchproduct.jsp?action=<%=action%>&keyword=<%=keyword%>&lownormalprice=<%=lownormalprice%>&highnormalprice=<%=highnormalprice%>&lowmemberprice=<%=lowmemberprice%>&highmemberprice=<%=highmemberprice%>&categoryid=<%=categoryid%>&pageno=<%=pageNo - 1%>">��һҳ</a>
			</td>
			<td>|</td>
			<td><a
				href="searchproduct.jsp?action=<%=action%>&keyword=<%=keyword%>&lownormalprice=<%=lownormalprice%>&highnormalprice=<%=highnormalprice%>&lowmemberprice=<%=lowmemberprice%>&highmemberprice=<%=highmemberprice%>&categoryid=<%=categoryid%>&pageno=<%=pageNext%>">��һҳ</a>
			</td>
			<td>��<%=pageNo%>ҳ
			</td>
			<td>��<%=pageCount%>ҳ
			</td>
		</tr>
	</table>
</center>

<%
	}
	
	if (action != null && action.trim().equals("post1")) {
		int pageNo = 1;
		String strpageNo = request.getParameter("pageno");
		if (strpageNo != null && !strpageNo.trim().equals("")) {
			pageNo = Integer.parseInt(strpageNo);
			if (pageNo <= 0) {
				pageNo = 1;
			}
		}
		String categoryidQuery = "";
		String keyword = request.getParameter("keyword");
		String[] strCategoryid = request.getParameterValues("categoryid");
		int[] idArray;
		if(strCategoryid == null || strCategoryid.length==0){
			idArray = null;
		}else{
			
			for(int i=0; i<strCategoryid.length; i++){
				categoryidQuery += "&categoryid="+strCategoryid[i];
			}
			idArray = new int[strCategoryid.length];
			for(int i=0; i<strCategoryid.length; i++){
				
				idArray[i] = Integer.parseInt(strCategoryid[i]);
			}			
		}
		
		
		List<Product> list = new ArrayList<Product>();
		int pageCount = ProductMgr.getInstance().searchProducts(list, idArray, keyword, -1,
				-1, -1, -1, pageNo, 3);
		int pageNext = pageNo + 1;
		if (pageNo > pageCount - 1) {
			pageNext = pageCount;
		}
%>
<table align="center" border="1">
	<tr>
		<th style="width: 5%">��ƷID</th>
		<th style="width: 5%">���ID</th>
		<th style="width: 10%">��Ʒ����</th>
		<th style="width: 10%">��Ʒ����</th>
		<th style="width: 15%">��ͨ\��Ա�۸�</th>
		<th style="width: 20%">ͼƬ</th>
		<th style="width: 10%">����ʱ��</th>
	</tr>
	<%
		for (Iterator<Product> it = list.iterator(); it.hasNext();) {
				Product p = it.next();
	%>
	<tr>

		<td><%=p.getId()%></td>
		<td><%=p.getCid()%></td>
		<td><%=p.getName()%></td>
		<td><span style="color: #6bc095"><%=p.getDescr()%></span></td>
		<td><%=p.getNormalprice()%>/<%=p.getMemberprice()%></td>
		<td><img class="thumb" src="" /></td>
		<td><%=p.getPdate()%></td>
	</tr>
	<%
		}
	%>

</table>

<center>
	<table>
		<tr>
			<td><a
				href="searchproduct.jsp?action=<%=action%>&keyword=<%=keyword%><%=categoryidQuery %>&pageno=<%=pageNo - 1%>">��һҳ</a>
			</td>
			<td>|</td>
			<td><a
				href="searchproduct.jsp?action=<%=action%>&keyword=<%=keyword%><%=categoryidQuery %>&pageno=<%=pageNext%>">��һҳ</a>
			</td>
			<td>��<%=pageNo%>ҳ
			</td>
			<td>��<%=pageCount%>ҳ
			</td>
		</tr>
	</table>
</center>

<%
	}
%>


</head>
<body>
	<form action="searchproduct.jsp" method="post" >
		<input type="hidden" name="action" value="post1" />
		<div class="form-group">
			<label for="">���</label>
			<%
				for (int i = 0; i < categories.size(); i++) {
					Category c = categories.get(i);
					String preStr = "";
					if (c.getGrade() == 3) {
			%>
			<input type="checkbox" name="categoryid" value="<%=c.getId()%>" /><%=c.getName()%>
			<%
					}
				}
			%>
			</select>
		</div>
		<div class="form-group">
			<label for="">�ؼ���</label><input class="form-input-txt" type="text"
				name="keyword" /> <input type="submit" class="sub-btn" value="��  ��" />
		</div>

	</form>
	<---------------------------------------------------------------------------->
	<form action="searchproduct.jsp" method="post" onsubmit="checkdata()"
		name="complex">
		<input type="hidden" name="action" value="post2" />
		<div class="form-group">
			<label for="">���</label> <select name="categoryid">
				<option value="0">all</option>
				<%
					for (int i = 0; i < categories.size(); i++) {
						Category c = categories.get(i);
						String preStr = "";
						for (int j = 1; j < c.getGrade(); j++) {
							preStr += "--";
						}
				%>
				<option value="<%=c.getId()%>"><%=preStr + c.getName()%></option>
				<%
					}
				%>
			</select>
		</div>
		<div class="form-group">
			<label for="">�ؼ���</label> <input class="form-input-txt" type="text"
				name="keyword" value="" />
		</div>
		<div class="form-group">
			<label for="">��ͨ�۸�</label> <input type="text" name="lownormalprice"
				value="" /> - <input type="text" name="highnormalprice" value="" />
		</div>
		<div class="form-group">
			<label for="">��Ա�۸�</label> <input type="text" name="lowmemberprice"
				value="" /> - <input type="text" name="highmemberprice" value="" />
		</div>

		<div class="form-group"></div>
		<div class="form-group" style="margin-left: 150px;">
			<input type="submit" class="sub-btn" value="��  ��" />
		</div>
	</form>

</body>
</html>