<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加个人收入账务</title>
<style type="text/css">
body {background:url(images/background2.jpg);}
</style>

</head>
<body>
<form action="add_income.jsp" method="post" target="right">
		<table align="right" width="70%"  border="0">
			<tr><td>类型</td></tr>
			<tr><td><select name="type">
			<option selected>收入</option>
			<tr><td>年份</td></tr>
			<tr><td><select name="dateyears">
			<option selected>2020</option>
				<option>2020</option>
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
				<option>2009</option>
				<option>2021</option>
				<option>2022</option>
			</select></td></tr>
			<tr><td>月份</td></tr>
			<tr><td><select name="datemonths">
			<option selected>11</option>
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
			</select></td></tr>
			<tr><td>日期</td></tr>
			<tr><td><select name="datedays">
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
			</select></td></tr>
			<tr><td>小时</td></tr>
			<tr><td><select name="datehours">
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
			<option>00</option>
			</select></td></tr>
			<tr><td>分钟</td></tr>
			<tr><td><select name="dateminutes">
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
			<tr><td>金额</td></tr>
			<tr><td><input type="text" name=countss></td></tr>
			<tr><td>备注</td></tr>
			<tr><td><textarea rows="5" cols="20" name="remarks"></textarea></td></tr>
			<tr><td><input type="submit" name="添加" value="添加" /></td></tr>
			</table>	
 </form>
</body>
</html>