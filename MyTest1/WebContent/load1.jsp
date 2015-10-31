<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>$.ajax()</title>
<script src="js/jquery-1.11.2.js"></script>
<script type="text/javascript">
	$(function(){
		$('input[type=button]').click(function(){
			//$('div').load('text1.txt?data='+Math.random());
			//$('div').load('tableCZ.jsp?data='+Math.random());
			//$('div').load('tabs.jsp?data='+Math.random());
			//$('div').load('demo4.jsp?data='+Math.random()+' .tabContent');
			$('div').load('index.jsp?data='+Math.random());
		});
	});
</script>
</head>
<body>
	<input type="button" value="加载"/>
	<div style="color:red;"></div>
</body>
</html>