<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>开发一个tab标签页的插件</title>
<style>
	*{margin:0;padding:0;}
	.tab{margin:50px;}
	.tab ul{list-style:none;}
	.tab ul li{display:inline-block;zoom:1;*display:inline;width:100px;height:30px;border:1px solid black;cursor:pointer;text-align:center;}
	.tabContent div{display:none;width:300px;height:200px;border:1px solid black;}
	.current{background:blue;color:white;}
</style>
<script src="js/jquery-1.11.2.js"></script>
<script src="js/jquery-tab-1.0.js"></script>
<script>
	$(function(){
		$('.tab').tab({
			eventType:'mouseover'
		});
	});
</script>
</head>
<body>
	<div class="tab">
		<ul class="tabNav">
			<li class="current">
			html</li><li>
			css</li><li>javascript</li>
		</ul>
		<div class="tabContent">
			<div style="display:block;">html</div>
			<div>css</div>
			<div>javascript</div>
		</div>
	</div>
</body>
</html>