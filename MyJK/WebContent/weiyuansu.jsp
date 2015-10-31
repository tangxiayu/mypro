<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于伪元素</title>
<style>
:root{background:#eee;}
body{background:white;}
p:first-line:not(.p2){color:blue;}
p:first-letter{font-size:40px;}
ul{list-style:none;}
ul li:before{content:'LI';color:green;font-size:30px;}
ul li:after{content:'我是伪元素after';font-size:20px;}
table{border:1px solid black;border-collapse:collapse;width:400px;}
table th,td{border:1px solid black;}
table td:empty{background:red;}
:target{background:red;color:#fff;}
table tbody tr:nth-child(2){color:pink;}
li:nth-child(even){background:orange;}
li:nth-last-child(1){background:yellow;}
li:last-child{color:blue;}


/*.div1 h2:nth-child(even){background:blue;;}无效 */  
.div1 h2:nth-of-type(even){background:blue;}
</style>
</head>
<body>
<div>
	<h1>伪元素</h1>
	<p>11111111111111<br/>2222222222222</p>
	<p class="p2">我们都是好孩子！</p>
	<p></p>
</div>
<table>
	<thead>
		<tr>
			<th>姓名</th>
			<th>学号</th>
			<th>简介</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>tangjing</td>
			<td>09</td>
			<td>tangjing</td>
		</tr>
		<tr>
			<td>tangjing</td>
			<td>09</td>
			<td></td>
		</tr>
	</tbody>
</table>
<ul>
	<li>11111111111</li>
	<li>22222222222</li>
	<li>333333333333</li>
	<li>44444444444</li>
</ul>


<a href="#a1">AAAAAAAAAAA</a>
<a href="#b2">BBBBBBBBBB</a>
<a href="#c3">CCCCCCCCCCC</a>
<a href="#d4">DDDDDDDDDDD</a>
<a href="#d5">D</a>
<div id="a1">
	<h2>标题</h2>
	<p>内容</p>
</div>
<div id="b2">
	<h2>标题</h2>
	<p>内容</p>
</div>
<div id="c3">
	<h2>标题</h2>
	<p>内容</p>
</div>
<div id="d4">
	<h2>标题</h2>
	<p>内容</p>
</div>
<span id="d5">ddddddddddddd55555555</span>

<div class="div1" style="width:500px;height:500px;border:1px solid red;">
	<h2>标题1</h2>
	<p>内容1</p>
	<h2>标题2</h2>
	<p>内容2</p>
	<h2>标题3</h2>
	<p>内容3</p>
</div>
</body>
</html>