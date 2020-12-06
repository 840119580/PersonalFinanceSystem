<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>登录错误</title>
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
		<h1>两次密码输入不一致</h1>
		<br>
		<br><br>
		<div class="button_register" onclick=location.href='register.jsp'>
			<p>返回注册</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>
<%--	<div style="text-align: center;"><h2>两次密码输入不一致</h2></div>--%>
<%--		<a href="register.jsp" style="text-align: center;"><h2>返回注册</h2></a>--%>
	<% 
	 }
int n=(int)request.getAttribute("num");
	if(n==1){%>
<br><br><br><br><br><br><br><br><br>

<div id="already_register" class="login">
	<div class="login-top">
		<h1>该用户名已被注册</h1>
		<br>
		<br><br>
		<div class="button_register" onclick=location.href='register.jsp'>
			<p>返回注册</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>

<%--	<div style="text-align: center;"><h2>该用户名已被注册</h2></div>--%>
<%--		<a href="register.jsp" style="text-align: center;"><h2>返回注册</h2></a>--%>
		<%}
	int m=(int)request.getAttribute("num");
	if(m==2){%>
	<br><br><br><br><br><br><br><br><br>

<div id="empty_login" class="login">
	<div class="login-top">
		<h1>用户名或密码不能为空</h1>
		<br>
		<br><br>
		<div class="button" onclick=location.href='login.jsp'>
			<p>重新登录</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>

<%--	<div style="text-align: center;"><h2>用户名或密码不能为空</h2></div>--%>
<%--	<a href="login.jsp" style="text-align: center;"><h2>重新登录</h2></a>--%>
	<%  }
	int a=(int)request.getAttribute("num");
	if(a==0){%>
		<br><br><br><br><br><br><br><br><br>

<div id="wrong_login" class="login">
	<div class="login-top">
		<h1>用户名或密码错误</h1>
		<br>
		<br><br>
		<div class="button" onclick=location.href='login.jsp'>
			<p>重新登录</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>

<%--	<div style="text-align: center;"><h2>用户名或密码错误</h2></div>--%>
<%--	<a href="login.jsp" style="text-align: center;"><h2>重新登录</h2></a>--%>
	<%}
	int c=(int)request.getAttribute("num");
	if(c==4){%>
	<br><br><br><br><br><br><br><br><br>

<div id="already_income" class="login">
	<div class="login-top">
		<h1>该时间段已有收入记录</h1>
		<br>
		<br><br>
		<div class="button_reset" onclick=location.href='add_incometxt.jsp'>
			<p>返回重填</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>
<%--	<div style="text-align: center;"><h2>该时间段已有收入记录</h2></div>--%>
<%--		<a href="add_incometxt.jsp" target="right" style="text-align: center;"><h2>返回重新添加收入记录</h2></a>--%>
	<% }
	int d=(int)request.getAttribute("num");
	if(d==5){%>
	<br><br><br><br><br><br><br><br><br>

<a href="addtext.jsp" target="right">
	<div class="button">
		<p>添加个人账务</p>
		<%--		<div class="feedback"></div>--%>
	</div>
</a>

<div id="already_outcome" class="login">
	<div class="login-top">
		<h1>该时间段已有支出记录</h1>
		<br>
		<br><br>
		<div class="button_reset" onclick=location.href='add_outcometxt.jsp'>
			<p>返回重填</p>
			<%--		<div class="feedback"></div>--%>
		</div>
	</div>
</div>

<%--	<div style="text-align: center;"><h2>该时间段已有支出记录</h2></div>--%>
<%--		<a href="add_outcometxt.jsp" target="right" style="text-align: center;"><h2>返回重新添加支出记录</h2></a>--%>
	<% }
	%>
	
</body>
</html>