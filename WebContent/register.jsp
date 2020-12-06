<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>注册页面</title>

	<script src="js/md5.js"></script>
	<script src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.js"></script>
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
	<link href="sass/bottonLogin.css" rel="stylesheet" type="text/css">
	<link href="sass/bottonRegister.css" rel="stylesheet" type="text/css">
	<link href="sass/bottonReset.css" rel="stylesheet" type="text/css">
	<style type="text/css">
body {background:url(images/background2.jpg);}
</style>
</head>
<body>
<div id="register" class="login">
	<div class="login-top">
<h1>用户注册</h1>
<form name="form" id="form_register" method="post">

			<input type="text" id="username" name="registerName" placeholder="账号或手机号">

			<input type="password" id="password_register1" name="registerNum" placeholder="请输入密码">

			<input type="password" id="password_register2" name="registerNum1" placeholder="请再次输入密码">

	<br>
	<br>
	<br>

	<div class="button_register" onclick="form_registerSubmit()">
		<p>注册</p>
<%--		<div class="feedback"></div>--%>
	</div>

	<br>

	<div class="button_reset" onclick="form_registerReset()">
		<p>清空</p>
<%--		<div class="feedback"></div>--%>
	</div>
	<br>

	<div class="button" onclick=location.href='login.jsp'>
		<p>登录</p>
<%--		<div class="feedback"></div>--%>
	</div>

</form>




	<script>//表单重置
	function form_registerReset()
	{
		document.getElementById("form_register").reset()
	}
	</script>

	<script>
		function form_registerSubmit()
		{
			const form = document.getElementById("form_register");
			// var username = document.getElementById("username").value;
			// var password1 = document.getElementById("password_register1").value;
			// var password2 = document.getElementById("password_register1").value;
			// password1 = md5(password1);
			// password2 = md5(password2);
			// document.getElementById("password_register1").value = password1
			// document.getElementById("password_register2").value = password2
			form.action = "register_test.jsp";
			form.submit();
		}
	</script>
	</div>
</div>
	</body>
</html>