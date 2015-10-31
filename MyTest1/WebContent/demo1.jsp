<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>jquery类级插件开发</title>
<script src="js/jquery-1.11.2.js"></script>
<script src="js/demo1.js"></script>
<script>
	$(function(){
		$('input').click(function(){
			//$.myAlert('00000000000');
			//$.myAlert1('1111111111');
			//$.myAlert('222222222');
			$.tj.myAlert('3333333333');
		});
	});
</script>
</head>
<body>
	<input type="button" value="点击"/>
</body>
</html>