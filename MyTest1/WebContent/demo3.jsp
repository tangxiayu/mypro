<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>开发一个table隔行变色并且鼠标移上去高亮的插件</title>
<style>
	#table1{width:600px;border:1px solid black;border-collapse:collapse;}
	#table1 th,td{height:28px;border:1px solid black;text-align:center;}
	.evenRow{background:pink;}
	.oddRow{background:#09f;}
	.currentRow{background:yellow;}
</style>
<script src="js/jquery-1.11.2.js"></script>
<script src="js/jquery-table-1.0.js"></script>

<script>
//刚开始一直不行，是引query库的顺序的问题，应该先引jquery-1.11.2.js，这样才有$
	$(function(){
		$('#table1').table();
	});
</script>
</head>
<body>
	<table id="table1">
		<tr>
			<th>姓名</th>
			<th>年龄</th>
			<th>身高</th>
		</tr>
		<tr>
			<td>张三</td>
			<td>男</td>
			<td>124</td>
		</tr>
		<tr>
			<td>李四</td>
			<td>男</td>
			<td>154</td>
		</tr>
		<tr>
			<td>小三</td>
			<td>女</td>
			<td>164</td>
		</tr>
		<tr>
			<td>墨子</td>
			<td>男</td>
			<td>174</td>
		</tr>
	</table>
</body>
</html>