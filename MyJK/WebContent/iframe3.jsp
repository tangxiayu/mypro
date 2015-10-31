<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>iframe防钓鱼处理</title>
<script>
window.onload = function(){
	if(window != window.top){
		window.top.location.href = window.location.href;
	}
};
</script>
</head>
<body>
<div style="width:100px;height:200px;background:red;"></div>
</body>
</html>