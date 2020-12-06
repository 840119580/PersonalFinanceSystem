<%@ page language="java" import="java.sql.*" contentType="text/html; charset=GB18030"
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
<body><%
String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";//SQL数据库引擎
String dbURL="jdbc:sqlserver://127.0.0.1:1433;DatabaseName=login";//数据源  ！！！！注意若出现加载或者连接数据库失败一般是这里出现问题
String Name="sa";
String Pwd="gaohan@123";
Class.forName(driverName);
Connection conn=DriverManager.getConnection(dbURL,Name,Pwd);
String name=(String)session.getAttribute("Name");
String sql="select * from income where id=?";
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1,name);
ResultSet rs=pstmt.executeQuery();
%>
<br><br><br>
<table class="hovertable" border="2" width="650" align="center">
<tr align="center"><td colspan="8"><%=name %>的收入信息</td></tr>
<tr align="center"><td>用户名</td><td>年</td><td>月</td><td>日</td><td>时</td><td>分</td><td>数额</td><td>备注</td></tr>
<% 
while(rs.next()){%>
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

	<form action="delete_income.jsp" method="get" target="right">
	<br><br>
		<table align="center" width="70%"  border="0">
			<tr><td><h3>年份</h3></td>
			<td><select name="dateyear1">
			<option selected>2020</option>
			<option>2019</option>
			<option>2017</option>
			<option>2016</option>
			<option>2015</option>
			<option>2014</option>
			<option>2013</option>
			<option>2012</option>
			<option>2011</option>
			<option>2010</option>
			<option>2009</option>
			<option>2018</option>
			<option>2021</option>
			<option>2022</option>
			</select></td>
			<td><h3>月份</h3></td>
			<td><select name="datemonth1">
			<option selected>11</option>
			<option>12</option>
			<option>10</option>
			<option>09</option>
			<option>08</option>
			<option>07</option>
			<option>06</option>
			<option>05</option>
			<option>04</option>
			<option>03</option>
			<option>02</option>
			<option>01</option>
			</select></td>
			<td><h3>日期</h3></td>
			<td><select name="dateday1">
				<option selected>01</option>
				<option>02</option>
				<option>03</option>
				<option>04</option>
				<option>05</option>
				<option>06</option>
				<option>07</option>
				<option>08</option>
				<option>09</option>
				<option>10</option>
				<option>11</option>
				<option>12</option>
				<option>13</option>
				<option>14</option>
				<option>15</option>
				<option>16</option>
				<option>17</option>
				<option>18</option>
				<option>19</option>
				<option>20</option>
				<option>21</option>
				<option>22</option>
				<option>23</option>
				<option>24</option>
				<option>25</option>
				<option>26</option>
				<option>27</option>
				<option>28</option>
				<option>29</option>
				<option>30</option>
				<option>31</option>
			</select></td>
			<td><h3>小时</h3></td>
			<td><select name="datehour1">
			<option selected>00</option>
			<option>24</option>
			<option>23</option>
			<option>22</option>
			<option>21</option>
			<option>20</option>
			<option>19</option>
			<option>18</option>
			<option>17</option>
			<option>16</option>
			<option>15</option>
			<option>14</option>
			<option>13</option>
			<option>12</option>
			<option>11</option>
			<option>10</option>
			<option>09</option>
			<option>08</option>
			<option>07</option>
			<option>06</option>
			<option>05</option>
			<option>04</option>
			<option>03</option>
			<option>02</option>
			<option>01</option>

			</select></td>
			<td><h3>分钟</h3></td>
			<td><select name="dateminute1">
				<option selected>00</option>
				<option>01</option>
				<option>02</option>
				<option>03</option>
				<option>04</option>
				<option>05</option>
				<option>06</option>
				<option>07</option>
				<option>08</option>
				<option>09</option>
				<option>10</option>
				<option>11</option>
				<option>12</option>
				<option>13</option>
				<option>14</option>
				<option>15</option>
				<option>16</option>
				<option>17</option>
				<option>18</option>
				<option>19</option>
				<option>20</option>
				<option>21</option>
				<option>22</option>
				<option>23</option>
				<option>24</option>
				<option>25</option>
				<option>26</option>
				<option>27</option>
				<option>28</option>
				<option>29</option>
				<option>30</option>
				<option>31</option>
				<option>32</option>
				<option>33</option>
				<option>34</option>
				<option>35</option>
				<option>36</option>
				<option>37</option>
				<option>38</option>
				<option>39</option>
				<option>40</option>
				<option>41</option>
				<option>42</option>
				<option>43</option>
				<option>44</option>
				<option>45</option>
				<option>46</option>
				<option>47</option>
				<option>48</option>
				<option>49</option>
				<option>50</option>
				<option>51</option>
				<option>52</option>
				<option>53</option>
				<option>54</option>
				<option>55</option>
				<option>56</option>
				<option>57</option>
				<option>58</option>
				<option>59</option>
			</select></td></tr>
		  <tr><td><input type="submit" name="删除" value="删除" /></td></tr>
			</table>	
 </form>
</body>
</html>