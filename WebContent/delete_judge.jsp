<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>Insert title here</title>
    <link href="css/selectbutton.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/selectbutton2.css" rel="stylesheet" type="text/css" media="all"/>
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>
</head>
<body>
<br><br><br><br><br><br><br><br><br>

<a href="delete_incometxt.jsp" target="right">
    <div class="buttons">
        <button class="btn-hover color-1">删除个人收入信息</button>
        <%--		<div class="feedback"></div>--%>
    </div>
</a>

<%--<p><a href="delete_incometxt.jsp" target="right"><span style="font-size: x-large; font-family: 楷体;  text-align: center;">删除个人收入信息</span></a>--%>
<br>

    <a href="delete_outcometxt.jsp" target="right">
        <div class="buttons2">
            <button class="btn2-hover color-1">删除个人支出信息</button>
            <%--		<div class="feedback"></div>--%>
        </div>
    </a>
<%--<p><a href="delete_outcometxt.jsp" target="right"><span style="font-size: x-large; font-family: 楷体;  text-align: center;">删除个人支出信息</span></a>--%>

</body>
</html>