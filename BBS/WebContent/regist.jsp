<%@ page language="java" contentType="text/html; charset=GBK"
    pageEncoding="GBK"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=GBK">
	<link href="css/style.css" rel='stylesheet' type='text/css' />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="application/x-javascript"> 
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	<!--webfonts-->
	<!--//webfonts-->
<title>���û�ע��</title>
</head>
<body>
<div class="main">
		<div class="header" >
			<h1>������һ�����û��ɣ�����</h1>
		</div>
		<p>����д������Ϣ��Ȼ����������ť��</p>
			<form name=regist action="registok.jsp" Method="post">
				<ul class="left-form">
					<h2>���û���Ϣ:</h2>
					<li>
						<input type="text"  name="username" placeholder="username" required/>
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="text"  name="email" placeholder="email" required/>
						<a href="#" class="icon ticker"> </a>
						<div class="clear"> </div>
					</li> 
					<li>
						<input type="password"  name="password" placeholder="password" required/>
						<a href="#" class="icon into"> </a>
						<div class="clear"> </div>
					</li> 
					<label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>���ѡ������Թ���ͬ���㲻֪�������</label>
					<input type="submit" onClick="myFunction()" value="  ��  ��  ">
						<div class="clear"> </div>
				</ul>
				
				<div class="clear"> </div>
					
			</form>
			
		</div>

</body>
</html>