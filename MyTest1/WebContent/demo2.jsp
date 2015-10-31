<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>把一个div放在页面的正中间</title>
<style>
	#div1{width:200px;height:200px;background:#f90;}
</style>
<script src="js/jquery-1.11.2.js"></script>
<script src="js/demo2.js"></script>
<script>
	$(function(){
		var div = $('#div1');
		/*div.css({
			top:($(window).height()-div.height())/2,
			left:($(window).width()-div.width())/2,
			position:'absolute'
		});*/
		$.tj.centerDiv(div);
	});
</script>
</head>
<body>
<div id="div1"></div>
</body>
</html>