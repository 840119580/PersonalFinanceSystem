<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>��¼ҳ��</title>
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


	<h1>�û���¼</h1>
<form name="form" id="form" method="post" onsubmit="return checkForm()">
	<br>

			<input type="text" name="loginName" placeholder="�û������ֻ���">

	<br>
			<input type="password" id="password" name="loginNum" placeholder="����">
	<br>
	<br>
	<br>
	<br>
	<div class="button" onclick="formSubmit()">
			<p>��¼</p>
			<div class="feedback"></div>
		</div>
	<br>
	<div class="button_reset" onclick="formReset()">
<%--		�˴���buttonLogin�����float��bottom���Ա�֤���ص�--%>
		<p>���</p>
	</div>

<br>
	<div class="button_register" onclick=location.href='register.jsp'>
		<p>ע��</p>
		<div class="feedback"></div>
	</div>

<%--</table--%>
</form>
	<script>//��¼��ת
		function formSubmit(){
			document.form.action = "login_test.jsp";
			document.form.submit();
		}
	</script>

	<script>//������
		function formReset()
		{
			document.getElementById("form").reset()
		}
	</script>

		<script>
			function checkForm() {
				const pwd = document.getElementById('password');
				pwd.value = md5(pwd);// �������ΪMD5,���ݿ�Ԥ��λ���������ӵ�50λ
				return true;
			}
		</script>


</div>
</div>
</body>
</html>