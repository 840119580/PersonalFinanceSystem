<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>页面标题</title>
    <link href="css/top.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="sass/bottonLogin.css" rel="stylesheet" type="text/css">
    <link href="sass/bottonRegister.css" rel="stylesheet" type="text/css">
    <link href="sass/bottonReset.css" rel="stylesheet" type="text/css">
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>
</head>
<body>
<div id="top" class="login">
    <div class="login-top">
        <h1>个人财务统计系统</h1>
        <br>

<%--<a href="login.jsp" target="main" style="text-align: center;"><h2>退出登录</h2></a>--%>

<a href="login.jsp" target="main">
    <div class="button_register">
        <p>退出</p>
        <%--		<div class="feedback"></div>--%>
    </div>
</a>
<%--<a>标签里套<div>实现target属性跳转--%>

    </div>
</div>
</body>
</html>