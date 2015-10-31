<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>滚动公告</title>
<style>
	ul{margin:50px;}
</style>
<script src="js/jquery-1.11.2.js"></script>
<script>
	$(function(){
		setInterval(function(){
			var newLi = $('ul').find('li').first().clone(true);
			$('ul').append(newLi);
			$('ul').find('li').first().remove();
		},2000);
	});
</script>
</head>
<body>
<h1>滚动公告</h1>
	<ul>
		<li>我是第1条公告</li>
		<li>我是第2条公告</li>
		<li>我是第3条公告</li>
		<li>我是第4条公告</li>
		<li>我是第5条公告</li>
		<li>我是第6条公告</li>
		<li>我是第7条公告</li>
		<li>我是第8条公告</li>
		<li>我是第9条公告</li>
		<li>我是第10条公告</li>
	</ul>
</body>
</html>