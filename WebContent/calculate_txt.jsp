<%@ page language="java" contentType="text/html; charset=GB18030"
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
	<form action="calculate.jsp" method="get" target="right">
	<br><br><br><br><br><br><br><br>
		<table align="center" width="70%"  border="0">
			<tr align="center"><td colspan="6">计算范围</td></tr>
			<tr><td>上限</td></tr>
			<tr><td>年份</td>
			<td><select name="dateyear1">
			<option selected>2020</option>
			<option>2019</option>
			<option>2018</option>
			<option>2017</option>
			<option>2016</option>
			<option>2015</option>
			<option>2014</option>
			<option>2013</option>
			<option>2012</option>
			<option>2011</option>
			<option>2010</option>
			<option>2021</option>
			<option>2022</option>

			</select></td>
			<td>月份</td>
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
			<td>日期</td>
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
<%--			<option></option>--%>
			</select></td>
			
		   <tr><td>下限</td></tr>
			<tr><td>年份</td>
			<td><select name="dateyear2">
			<option selected>2020</option>
			<option>2018</option>
			<option>2017</option>
			<option>2016</option>
			<option>2015</option>
			<option>2014</option>
			<option>2013</option>
			<option>2012</option>
			<option>2011</option>
			<option>2010</option>
			<option>2009</option>
			<option>2019</option>
			<option>2021</option>
			<option>2022</option>
			</select></td>
			<td>月份</td>
			<td><select name="datemonth2">
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
			<td>日期</td>
			<td><select name="dateday2">
			<option selected>31</option>
			<option>30</option>
			<option>29</option>
			<option>28</option>
			<option>27</option>
			<option>26</option>
			<option>25</option>
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
			  <tr><td><input type="submit" name="计算" value="计算" /></td></tr>
			</table>	
 </form>
</body>
</html>