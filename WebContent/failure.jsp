<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>��¼����</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
	<link href="sass/bottonLogin.css" rel="stylesheet" type="text/css">
	<link href="sass/bottonRegister.css" rel="stylesheet" type="text/css">
	<link href="sass/bottonReset.css" rel="stylesheet" type="text/css">
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>

</head>
<body>
<%	
int b=(int)request.getAttribute("num");
	if(b==6){%>
	<br><br><br><br><br><br><br><br><br>

<div id="wrong_two_password" class="login">
	<div class="login-top">
		<h1>�����������벻һ��</h1>
		<br>
		<br><br>
		<div class="button_register" onclick=location.href='register.jsp'>
			<p>����ע��</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>
<%--	<div style="text-align: center;"><h2>�����������벻һ��</h2></div>--%>
<%--		<a href="register.jsp" style="text-align: center;"><h2>����ע��</h2></a>--%>
	<% 
	 }
int n=(int)request.getAttribute("num");
	if(n==1){%>
<br><br><br><br><br><br><br><br><br>

<div id="already_register" class="login">
	<div class="login-top">
		<h1>���û����ѱ�ע��</h1>
		<br>
		<br><br>
		<div class="button_register" onclick=location.href='register.jsp'>
			<p>����ע��</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>

<%--	<div style="text-align: center;"><h2>���û����ѱ�ע��</h2></div>--%>
<%--		<a href="register.jsp" style="text-align: center;"><h2>����ע��</h2></a>--%>
		<%}
	int m=(int)request.getAttribute("num");
	if(m==2){%>
	<br><br><br><br><br><br><br><br><br>

<div id="empty_login" class="login">
	<div class="login-top">
		<h1>�û��������벻��Ϊ��</h1>
		<br>
		<br><br>
		<div class="button" onclick=location.href='login.jsp'>
			<p>���µ�¼</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>

<%--	<div style="text-align: center;"><h2>�û��������벻��Ϊ��</h2></div>--%>
<%--	<a href="login.jsp" style="text-align: center;"><h2>���µ�¼</h2></a>--%>
	<%  }
	int a=(int)request.getAttribute("num");
	if(a==0){%>
		<br><br><br><br><br><br><br><br><br>

<div id="wrong_login" class="login">
	<div class="login-top">
		<h1>�û������������</h1>
		<br>
		<br><br>
		<div class="button" onclick=location.href='login.jsp'>
			<p>���µ�¼</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>

<%--	<div style="text-align: center;"><h2>�û������������</h2></div>--%>
<%--	<a href="login.jsp" style="text-align: center;"><h2>���µ�¼</h2></a>--%>
	<%}
	int c=(int)request.getAttribute("num");
	if(c==4){%>
	<br><br><br><br><br><br><br><br><br>

<div id="already_income" class="login">
	<div class="login-top">
		<h1>��ʱ������������¼</h1>
		<br>
		<br><br>
		<div class="button_reset" onclick=location.href='add_incometxt.jsp'>
			<p>��������</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>
<%--	<div style="text-align: center;"><h2>��ʱ������������¼</h2></div>--%>
<%--		<a href="add_incometxt.jsp" target="right" style="text-align: center;"><h2>����������������¼</h2></a>--%>
	<% }
	int d=(int)request.getAttribute("num");
	if(d==5){%>
	<br><br><br><br><br><br><br><br><br>

<a href="addtext.jsp" target="right">
	<div class="button">
		<p>��Ӹ�������</p>
		<%--		<div class="feedback"></div>--%>
	</div>
</a>

<div id="already_outcome" class="login">
	<div class="login-top">
		<h1>��ʱ�������֧����¼</h1>
		<br>
		<br><br>
		<div class="button_reset" onclick=location.href='add_outcometxt.jsp'>
			<p>��������</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>

<%--	<div style="text-align: center;"><h2>��ʱ�������֧����¼</h2></div>--%>
<%--		<a href="add_outcometxt.jsp" target="right" style="text-align: center;"><h2>�����������֧����¼</h2></a>--%>
	<% }
	%>
	
</body>
</html>