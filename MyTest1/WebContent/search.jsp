<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jquery页面搜索实例</title>
<style>
	#table1{width:700px;border:1px solid black;border-collapse:collapse;}
	#table1 th,td{height:30px;border:1px solid black;text-align:center;}
</style>
<script src="js/jquery-1.11.2.js"></script>
<script>
	$(function(){
		$('input[type=button]').click(function(){
			var text = $('input[type=text]').val();
			$('table tr:not("#thead")').hide().filter(':contains("'+text+'")').show();//注意字符串的拼接
		});
	});
</script>
</head>
<body>
	<input type="text"/>
	<input type="button" value="搜索"/>
	<table id="table1">
		<tr id="thead">
			<th>姓名</th>
			<th>性别</th>
			<th>电话</th>
		</tr>
		<tr>
			<td>张三</td>
			<td>男</td>
			<td>18480990987</td>
		</tr>
		<tr>
			<td>李四</td>
			<td>男</td>
			<td>18324909887</td>
		</tr>
		<tr>
			<td>小妹</td>
			<td>女</td>
			<td>18444448087</td>
		</tr>
		<tr>
			<td>王五</td>
			<td>女</td>
			<td>18455668087</td>
		</tr>
		<tr>
			<td>陈阿娇</td>
			<td>女</td>
			<td>18689648087</td>
		</tr>
	</table>
</body>
</html>