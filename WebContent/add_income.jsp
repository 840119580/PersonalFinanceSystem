<%@ page language="java" import="java.sql.*" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
	<link href="sass/bottonLogin.css" rel="stylesheet" type="text/css">
	<link href="sass/bottonRegister.css" rel="stylesheet" type="text/css">
	<link href="css/table.css" rel="stylesheet" type="text/css" media="all">
	<link href="sass/bottonReset.css" rel="stylesheet" type="text/css">

<style type="text/css">
body {background:url(images/background2.jpg);}
</style>
</head>
<body>
<% 
String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";//SQL���ݿ�����
String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=login";//����Դ  ��������ע�������ּ��ػ����������ݿ�ʧ��һ���������������
String Name="sa";
String Pwd="gaohan@123";
Class.forName(driverName);
Connection conn=DriverManager.getConnection(dbURL,Name,Pwd);
String loginid=(String)session.getAttribute("Name");
int loginyear=Integer.parseInt(request.getParameter("dateyears"));
int loginmonth=Integer.parseInt(request.getParameter("datemonths"));
int loginday=Integer.parseInt(request.getParameter("datedays"));
int loginhour=Integer.parseInt(request.getParameter("datehours"));
int loginminute=Integer.parseInt(request.getParameter("dateminutes"));
float logincounts=Float.parseFloat(request.getParameter("countss"));
String loginremark=new String(request.getParameter("remarks"));
String sql="select * from income";
PreparedStatement pstmt=conn.prepareStatement(sql);
ResultSet rs=pstmt.executeQuery();
while(rs.next()) {  
	String login_id=rs.getString("id");
	 int login_dateyear=rs.getInt("dateyear");
	 int login_datemonth=rs.getInt("datemonth");
	 int login_dateday=rs.getInt("dateday");
	 int login_datehour=rs.getInt("datehour");
	 int login_dateminute=rs.getInt("dateminute");
	 if((login_id.equals(loginid))&&(login_dateyear==loginyear)&&(login_datemonth==loginmonth)&&(login_dateday==loginday)&&(login_datehour==loginhour)&&(login_dateminute==loginminute)){
		request.setAttribute("num",4);
		request.getRequestDispatcher("failure.jsp").forward(request, response);
	} 
}
String sql1="Insert into income (id,dateyear,datemonth,dateday,datehour,dateminute,counts,remark) values(?,?,?,?,?,?,?,?)";
	PreparedStatement pstmt1=conn.prepareStatement(sql1);
	pstmt1.setString(1,loginid);
	pstmt1.setInt(2,loginyear);
	pstmt1.setInt(3,loginmonth);
	pstmt1.setInt(4,loginday);
	pstmt1.setInt(5,loginhour);
	pstmt1.setInt(6,loginminute);
	pstmt1.setFloat(7,logincounts);
	pstmt1.setString(8,loginremark);
	pstmt1.executeUpdate();
%>
<br><br><br><br><br><br><br><br><br>

<div id="add_ok" class="login">
	<div class="login-top">
		<h1>����������ӳɹ�</h1>
	</div>
</div>
</body>
</html>