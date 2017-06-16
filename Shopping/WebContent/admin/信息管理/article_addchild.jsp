<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=GBK"
	pageEncoding="GBK" import="com.ysnc.shopping.*"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="GBK">
<title>��̨��ӭҳ</title>
<link rel="stylesheet" href="../css/reset.css" />
<link rel="stylesheet" href="../css/public.css" />
<link rel="stylesheet" href="../css/content.css" />
<%
	request.setCharacterEncoding("GBK");
	String admin = (String) session.getAttribute("admin");
	String action = request.getParameter("action");
	

	if (admin == null || !admin.equals("true")) {
		out.println("���¼����");
		return;
		
	}
	int grade = Integer.parseInt(request.getParameter("grade"));
	int pid = Integer.parseInt(request.getParameter("pid"));
	if (grade >= Category.MAX_GRADE) {
		out.println("�����ڸýڵ�������ӣ���������������");
		return;
	}
	if (action != null && action.trim().equals("post")) {
		String name = request.getParameter("name");
		String descr = request.getParameter("descr");
		Category c = new Category();
		c.setPid(pid);
		c.setName(name);
		c.setDescr(descr);
		c.setGrade(grade + 1);
		CategoryDAO service = CategoryDAO.getInstance();
		service.add(c);
		out.println("�����ӳɹ�!��ϲ!");
		return;

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
				<h3>�޸����</h3>
			</div>
			<div class="public-content-cont">
				<form action="article_addchild.jsp?pid=<%=pid%>&grade=<%=grade%>" method="post">
					<input type="hidden" name="action" value="post" />
					<div class="form-group">
						<label for="">�������</label> <input class="form-input-txt"
							type="text" name="name" value="" />
					</div>
					<div class="form-group">
						<label for="">�������</label>
						<textarea id="editor_id" name="descr" class="form-input-textara"
							style="width: 700px; height: 300px;"></textarea>
					</div>
					<div class="form-group"></div>
					<div class="form-group" style="margin-left: 150px;">
						<input type="submit" class="sub-btn" value="��  ��" />
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../kingediter/kindeditor-all-min.js"></script>
	<script src="../js/laydate.js"></script>
	<script>
		KindEditor.ready(function(K) {
			window.editor = K.create('#editor_id');
		});
	</script>
</body>
</html>