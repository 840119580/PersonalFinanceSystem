<%@ page language="java" import="java.sql.*" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
    <link href="css/table.css" rel="stylesheet" type="text/css" media="all">
<title>Insert title here</title>
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
    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection conn= null;
    try {
        conn = DriverManager.getConnection(dbURL,Name,Pwd);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    String name=(String)session.getAttribute("Name");
String sql="select * from income where id=?";
    assert conn != null;
    PreparedStatement pstmt= null;
    try {
        pstmt = conn.prepareStatement(sql);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    try {
        assert pstmt != null;
        pstmt.setString(1,name);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    ResultSet rs= null;
    try {
        rs = pstmt.executeQuery();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    String sql1="select * from outcome where id=?";
    PreparedStatement pstmt1= null;
    try {
        pstmt1 = conn.prepareStatement(sql1);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    assert pstmt1 != null;
    try {
        pstmt1.setString(1,name);
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
    ResultSet rs1= null;
    try {
        rs1 = pstmt1.executeQuery();
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }
%>
<br><br><br> 
<table class="hovertable" border="2" width="650" align="center">
<tr align="center"><td colspan="8"><%=name %>的收入信息</td></tr>
<tr align="center"><td>用户名</td><td>年</td><td>月</td><td>日</td><td>时</td><td>分</td><td>数额</td><td>备注</td></tr>
<% 
while(true){
    assert rs != null;
    try {
        if (!rs.next()) break;
    } catch (SQLException throwables) {
        throwables.printStackTrace();
    }%>
<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';" align="center">
<td><%=rs.getString("id") %></td>
<td><%=rs.getInt("dateyear") %></td>
<td><%=rs.getInt("datemonth") %></td>
<td><%=rs.getInt("dateday")%></td>
<td><%=rs.getInt("datehour") %></td>
<td><%=rs.getInt("dateminute") %></td>
<td><%=rs.getFloat("counts")%></td>
<td><%=rs.getString("remark") %></td>
</tr><%} %>
</table>
<br><br><br> 
<table class="hovertable" border="2" width="650" align="center">
<tr align="center"><td colspan="8"><%=name %>的支出信息</td></tr>
<tr align="center"><td>用户名</td><td>年</td><td>月</td><td>日</td><td>时</td><td>分</td><td>数额</td><td>备注</td></tr>
<% 
while(rs1.next()){%>
<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';" align="center">
<td><%=rs1.getString("id") %></td>
<td><%=rs1.getInt("dateyear") %></td>
<td><%=rs1.getInt("datemonth") %></td>
<td><%=rs1.getInt("dateday")%></td>
<td><%=rs1.getInt("datehour") %></td>
<td><%=rs1.getInt("dateminute") %></td>
<td><%=rs1.getFloat("counts")%></td>
<td><%=rs1.getString("remark") %></td>
</tr><%} %>
</table> 

</body>
</html>