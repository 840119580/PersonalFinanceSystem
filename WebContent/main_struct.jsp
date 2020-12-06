<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>个人财务统计系统</title>
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>
<frameset row="*" name="main">
<frameset rows="20%,*">
	<frame src="top.jsp" name="top" scrolling="no">
	<frameset cols="15%,*">
		<frame src="left.jsp" name="left" scroling="no">
		<frame src="right.jsp" name="right" scoring="auto">
	</frameset>
</frameset>
</frameset>
<% String loginName=request.getParameter("loginName");
session.setAttribute("Name",loginName ); %>
</head>
<body>
</body>
</html>