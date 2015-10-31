<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
/*.floatorinline{
	width:100px;
	height:50px;
	float:left;
	margin-left:20px;
	_display:inline;
}*/

.floatorinline{
	display:inline-block;
	zoom:1;
	*display:inline;
	float:none;
	width:100px;
	height:50px;
	margin-left:20px;
}
</style>
</head>
<body>
<div style="width:500px;height:200px;background-color:pink;"><!-- 
 --><div class="floatorinline" style="background:red;">111</div><!-- 
	 --><div class="floatorinline" style="background:blue;">222</div><!-- 
	 --><div class="floatorinline" style="background:yellow;">333</div>
</div>
</body>
</html>