<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>菜单页面</title>
    <link href="css/top.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="sass/bottonLogin.css" rel="stylesheet" type="text/css">
    <link href="sass/botton_clear.css" rel="stylesheet" type="text/css">
    <link href="sass/bottonRegister.css" rel="stylesheet" type="text/css">
    <link href="sass/bottonReset.css" rel="stylesheet" type="text/css">
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>

</head>
<body>
<br><br><br><br><br><br><br><br><br>

<div id="top" class="login">
    <div class="login-top">
        <br>
        <br>
<a href="addtext.jsp" target="right">
    <div class="button">
        <p>添加个人账务</p>
    </div>
</a>

<br>

<a href="look.jsp" target="right">
    <div class="button_register" >
        <p>查询个人账务</p>
        <%--		<div class="feedback"></div>--%>
    </div>
</a>
<br>

<a href="delete_judge.jsp" target="right">
    <div class="button_reset" >
        <p>删除个人账务</p>
        <%--		<div class="feedback"></div>--%>
    </div>
</a>

<br>
<a href="calculate_txt.jsp" target="right">
    <div class="button_clear" >
        <p>个人账务计算</p>
        <%--		<div class="feedback"></div>--%>
    </div>
</a>

    </div>
</div>
</body>
</html>