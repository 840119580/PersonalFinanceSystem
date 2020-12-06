<%@ page language="java" import="java.sql.*" import="beans.Cal" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="GB18030">
<title>Insert title here</title>
	<link href="css/table.css" rel="stylesheet" type="text/css" media="all">

	<style type="text/css">
body {background:url(images/background2.jpg);}
</style>
</head>
<body>
<%String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";//SQL数据库引擎
String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=login";//数据源  ！！！！注意若出现加载或者连接数据库失败一般是这里出现问题
String Name="sa";
String Pwd="gaohan@123";
Class.forName(driverName);
Connection conn=DriverManager.getConnection(dbURL,Name,Pwd);
String name=(String)session.getAttribute("Name");
int year1=Integer.parseInt(request.getParameter("dateyear1"));
//	System.out.println(year1);
int month1=Integer.parseInt(request.getParameter("datemonth1"));
//	System.out.println(month1);
int day1=Integer.parseInt(request.getParameter("dateday1"));
//	System.out.println(day1);
int year2=Integer.parseInt(request.getParameter("dateyear2"));
//	System.out.println(year2);
int month2=Integer.parseInt(request.getParameter("datemonth2"));
//	System.out.println(month2);
int day2=Integer.parseInt(request.getParameter("dateday2"));
//	System.out.println(day2);
String sql="select SUM(counts) as allt from income where id=? ";
//		"and ((dateyear>?)or(dateyear=? and datemonth>?)or(dateyear=? and datemonth=? and dateday>=?)) and((dateyear<?)or(dateyear=? and datemonth<?)or(dateyear=? and datemonth=? and dateday<=?))";

	PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1,name);
//pstmt.setInt(2,year2);
//pstmt.setInt(3,year2);
//pstmt.setInt(4,month2);
//pstmt.setInt(5,year2);
//pstmt.setInt(6,month2);
//pstmt.setInt(7,day2);
//pstmt.setInt(8,year1);
//pstmt.setInt(9,year1);
//pstmt.setInt(10,month1);
//pstmt.setInt(11,year1);
//pstmt.setInt(12,month1);
//pstmt.setInt(13,day1);
	ResultSet rs=pstmt.executeQuery();
float resultIncome=0;
	System.out.println(resultIncome);

while(rs.next()){
	resultIncome=rs.getFloat("allt");
	System.out.println(resultIncome);

}
String sql1="select SUM(counts) as alls from outcome where id=? and ((dateyear>?)or(dateyear=? and datemonth>?)or(dateyear=? and datemonth=? and dateday>=?)) and((dateyear<?)or(dateyear=? and datemonth<?)or(dateyear=? and datemonth=? and dateday<=?))";
PreparedStatement pstmt1=conn.prepareStatement(sql1);
pstmt1.setString(1,name);
//pstmt1.setInt(2,year2);
//pstmt1.setInt(3,year2);
//pstmt1.setInt(4,month2);
//pstmt1.setInt(5,year2);
//pstmt1.setInt(6,month2);
//pstmt1.setInt(7,day2);
//pstmt1.setInt(8,year1);
//pstmt1.setInt(9,year1);
//pstmt1.setInt(10,month1);
//pstmt1.setInt(11,year1);
//pstmt1.setInt(12,month1);
//pstmt1.setInt(13,day1);
ResultSet rs1=pstmt1.executeQuery();
float resultOutcome=0;
while(rs1.next()){
	resultOutcome=rs1.getFloat("alls");
}
Cal sub=new Cal(resultIncome,resultOutcome); 
float result=sub.SUBresult(); %>	

<form action="" method="post">
<br><br><br><br><br><br><br><br><br>
<table class="hovertable" border="2" width="650" align="center">
<tr align="center"><td colspan="3"><%=name %>的总收入与总支出</td></tr>
<tr align="center"><td align="center">总收入</td><td align="center" name="">总支出</td><td align="center">总额</td></tr>
<tr onmouseover="this.style.backgroundColor='#ffff66';" onmouseout="this.style.backgroundColor='#d4e3e5';"><td align="center"><%=resultIncome %></td>
<td align="center"><%=resultOutcome %></td>
<td align="center"><%=result %></td></tr>
</table>
</form>
</body>
</html>