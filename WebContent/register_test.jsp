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
<title>ע��ɹ�</title>
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>

</head>
<body>
	<%
	  	String registername=request.getParameter("registerName");
		String registernum=request.getParameter("registerNum");
		String registernum1=request.getParameter("registerNum1");
	String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";//SQL���ݿ�����
    String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=login";//����Դ  ��������ע�������ּ��ػ����������ݿ�ʧ��һ���������������
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
//	˫����md5����

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

	<h1>ע��ɹ�</h1>

			<br>
			<br><br>
		<div class="button" onclick=location.href='login.jsp'>
			<p>���ص�¼</p>
			<%--		<div class="feedback"></div>--%>
		</div>

		</form>
		</div>
	</div>

</body>
</html>