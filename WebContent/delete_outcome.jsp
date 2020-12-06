<%@ page language="java" import="java.sql.*" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>Insert title here</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="sass/bottonLogin.css" rel="stylesheet" type="text/css">
    <link href="sass/bottonRegister.css" rel="stylesheet" type="text/css">
    <link href="sass/bottonReset.css" rel="stylesheet" type="text/css">
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>
</head>
<body>
<% 
String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";//SQL数据库引擎
String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=login";//数据源  ！！！！注意若出现加载或者连接数据库失败一般是这里出现问题
String Name="sa";
String Pwd="gaohan@123";
Class.forName(driverName);
Connection conn=DriverManager.getConnection(dbURL,Name,Pwd);
String name=(String)session.getAttribute("Name");
int year1=Integer.parseInt(request.getParameter("dateyear1"));
int month1=Integer.parseInt(request.getParameter("datemonth1"));
int day1=Integer.parseInt(request.getParameter("dateday1"));
int hour1=Integer.parseInt(request.getParameter("datehour1"));
int minute1=Integer.parseInt(request.getParameter("dateminute1"));
String sql="delete from outcome where id=? and dateyear=? and datemonth=? and dateday=? and datehour=? and dateminute=?";
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1,name);
pstmt.setInt(2,year1);
pstmt.setInt(3,month1);
pstmt.setInt(4,day1);
pstmt.setInt(5,hour1);
pstmt.setInt(6,minute1);
pstmt.executeUpdate();
%>
<br><br><br><br><br><br><br><br><br>

<div id="dele_ok" class="login">
    <div class="login-top">
        <h1>删除成功</h1>
    </div>
</div>
<%--<div style="text-align: center;"><h3>删除成功</h3></div>--%>

</body>
</html>