<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>html5  input 类型</title>
</head>
<body>
EMAIL:<input type="email"/><br/>
homepage:<input type="url"/><br/>
points:<input type="number" min="1" max="10"/><br/>
range显示为滚动条： <input type="range" min="1" max="101" step="50"/><!-- 显示为滚动条 --><br/>
Input 类型 - Date Pickers（日期选择器）<br/>
date年月日：<input type="date"/><br/>
month年月：<input type="month"/><br/>
week周和年：<input type="week"/><br/>
time小时和分钟：<input type="time"/><br/>
datetime时间，日月年(UTC时间)：<input type="datetime"/><br/>
datetime-local时间日月年（本地时间）:<input type="datetime-local"/><br/>
search:<input type="search"/><br/>
datalist元素：datalist 元素规定输入域的选项列表。列表是通过 datalist 内的 option 元素创建的。
如需把 datalist 绑定到输入域，请用输入域的 list 属性引用 datalist 的 id：
<input type="url" list="url_list"/>
<datalist id="url_list">
<option label="w3school" value="http://www.W3School.com.cn">
<option label="google" value="http://www.google.com">
<option label="microsoft" value="http://www.microsoft.com">
</datalist>   <br/>
<form action="demo_form.asp" method="get">
Username: <input type="text" name="usr_name" />
Encryption: <keygen name="security" />
<input type="submit" />
</form>
<output id="result" onforminput="resCalc()"></output>  <br/>

<form action="aboutFocus.jsp" method="get" autocomplete="on">
First name: <input type="text" name="fname" /><br />
Last name: <input type="text" name="lname" /><br />
E-mail: <input type="email" name="email" autocomplete="off" /><br />
<input type="submit" />
</form>

autofocus 属性规定在页面加载时，域自动地获得焦点。
User name: <input type="text" name="user_name"  autofocus="autofocus" />  <br/>


form 属性规定输入域所属的一个或多个表单。
<form action="aboutFocus.jsp" method="get" id="user_form">
First name:<input type="text" name="fname" />
<input type="submit" />
</form>
Last name: <input type="text" name="lname" form="user_form" />

<input type="image" src="images/1.jpg" width="99" height="99" />

Select images: <input type="file" name="img" multiple="multiple" />

Country code: <input type="text" name="country_code"
pattern="[A-z]{3}" title="Three letter country code" /><br/>

placeholder:<input type="search" name="user_search"  placeholder="请输入用户名" /><br/>

Name: <input type="text" name="usr_name" required="required" /><br/>

<canvas id="mycanvas" width="1000px" height="500px" style="border:1px solid red;"></canvas>
<script>
var mycanvas = document.getElementById('mycanvas');
var cxt = mycanvas.getContext("2d");
var grd = cxt.createLinearGradient(0,0,400,200);
grd.addColorStop(0,"red");
grd.addColorStop(1,"blue");
cxt.fillStyle = grd;
cxt.fillRect(0,0,400,200);


</script>


</body>
</html>