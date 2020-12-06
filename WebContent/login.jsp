<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>登录页面</title>
<%--	<script src="js/md5.js"></script>--%>
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<link href="sass/bottonLogin.css" rel="stylesheet" type="text/css">
	<link href="sass/bottonRegister.css" rel="stylesheet" type="text/css">
	<link href="sass/bottonReset.css" rel="stylesheet" type="text/css">

<style type="text/css">
body {background:url(images/background2.jpg);}

</style>
</head>
<body>

<div id="login" class="login">
	<div class="login-top">


	<h1>用户登录</h1>
<form name="form" id="form" method="post" onsubmit="return checkForm()">
	<br>

			<input type="text" name="loginName" placeholder="用户名或手机号">

	<br>
			<input type="password" id="password" name="loginNum" placeholder="密码">
	<br>
	<br>
	<br>
	<br>
	<div class="button" onclick="formSubmit()">
			<p>登录</p>
			<div class="feedback"></div>
		</div>
	<br>
	<div class="button_reset" onclick="formReset()">
<%--		此处在buttonLogin里添加float：bottom属性保证不重叠--%>
		<p>清空</p>
	</div>

<br>
	<div class="button_register" onclick=location.href='register.jsp'>
		<p>注册</p>
		<div class="feedback"></div>
	</div>

<%--</table--%>
</form>
	<script>//登录跳转
		function formSubmit(){
			document.form.action = "login_test.jsp";
			document.form.submit();
		}
	</script>

	<script>//表单重置
		function formReset()
		{
			document.getElementById("form").reset()
		}
	</script>

		<script>
			function checkForm() {
				const pwd = document.getElementById('password');
				pwd.value = md5(pwd);// 把密码变为MD5,数据库预留位数不够增加到50位
				return true;
			}
		</script>


</div>
</div>
</body>
</html>