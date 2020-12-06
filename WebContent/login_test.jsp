<%@ page language="java" import="java.sql.*" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@ page language="java" import="utils.MD5Utils"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=utils.MD5Utils"GB18030">
<title>Insert title here</title>
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>

</head>
<body>
	<%
	String loginname=request.getParameter("loginName");
	String loginnum=request.getParameter("loginNum");
	System.out.println(loginname);
	System.out.println(loginnum);

	if((loginnum.equals(""))||(loginname.equals(""))){
		request.setAttribute("num",2);
		request.getRequestDispatcher("failure.jsp").forward(request, response);

	}
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
			if (conn==null){
				System.out.println("fail");
			}
			else {
				System.out.println("ok");
			}
		} catch (SQLException throwables) {
			throwables.printStackTrace();
		}
		String sql="select * from logins";
		assert conn != null;
		PreparedStatement pstmt= null;
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException throwables) {
			throwables.printStackTrace();
		}
		assert pstmt != null;
		ResultSet rs= null;
		try {
			rs = pstmt.executeQuery();
		} catch (SQLException throwables) {
			throwables.printStackTrace();
		}

		loginnum = MD5Utils.str2MD5(loginnum);//登录验证md5加密

		while(true) {
			assert rs != null;
			try {
				if (!rs.next()) break;
			} catch (SQLException throwables) {
				throwables.printStackTrace();
			}
			String login_id= null;
			try {
				login_id = rs.getString("id");
			} catch (SQLException throwables) {
				throwables.printStackTrace();
			}
			String login_password=rs.getString("password");
 	 if((login_id.equals(loginname))&&(login_password.equals(loginnum))){
 		request.getRequestDispatcher("main_struct.jsp").forward(request, response);
 	} 
  }	
  request.setAttribute("num",0);
	request.getRequestDispatcher("failure.jsp").forward(request, response);
	  
  rs.close();
  pstmt.close();
  conn.close();
	%>
	
</body>
</html>