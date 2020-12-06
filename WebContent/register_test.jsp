<%@ page language="java" import="java.sql.*" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page language="java" import="utils.MD5Utils"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
	<link href="sass/bottonLogin.css" rel="stylesheet" type="text/css">
	<link href="sass/bottonRegister.css" rel="stylesheet" type="text/css">
	<link href="sass/bottonReset.css" rel="stylesheet" type="text/css">
	<script src="https://cdn.bootcss.com/blueimp-md5/2.10.0/js/md5.js"></script>

<meta charset="GB18030">
<title>注册成功</title>
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>

</head>
<body>
	<%
	  	String registername=request.getParameter("registerName");
		String registernum=request.getParameter("registerNum");
		String registernum1=request.getParameter("registerNum1");
	String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";//SQL数据库引擎
    String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=login";//数据源  ！！！！注意若出现加载或者连接数据库失败一般是这里出现问题
    String Name="sa";
    String Pwd="gaohan@123";
  Class.forName(driverName);
  Connection conn=DriverManager.getConnection(dbURL,Name,Pwd); 
  String sq="select * from logins";
  PreparedStatement stmt=conn.prepareStatement(sq);
  ResultSet s=stmt.executeQuery();
  if((registername.equals(""))||(registernum.equals(""))){
	   request.setAttribute("num",2);
	  request.getRequestDispatcher("failure.jsp").forward(request, response);				
 }
  while(s.next()){
	  String name1=s.getString(1);
	  String num1=s.getString(2);
	  if(name1.equals(registername)){
		   request.setAttribute("num",1);
		  request.getRequestDispatcher("failure.jsp").forward(request, response);				
	  }
  }

	String sql="Insert into logins(id,password) values(?,?)";
	PreparedStatement pstmt=conn.prepareStatement(sql);
	pstmt.setString(1,registername);

	registernum = MD5Utils.str2MD5(registernum);
	registernum1 = MD5Utils.str2MD5(registernum1);
//	双密码md5加密

	pstmt.setString(2,registernum);
	if((registernum.equals(registernum1))){
		pstmt.executeUpdate();
		 	}
	else{
	request.setAttribute("num",6);
	request.getRequestDispatcher("failure.jsp").forward(request, response);}
%>
	<div id="register_test" class="login">
		<div class="login-top">

	<h1>注册成功</h1>

			<br>
			<br><br>
		<div class="button" onclick=location.href='login.jsp'>
			<p>返回登录</p>
			<%--		<div class="feedback"></div>--%>
		</div>

		</form>
		</div>
	</div>

</body>
</html>