<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UI元素状态伪类选择器</title>
<style>
input[type="text"]:hover{background:red;}
input[type="text"]:focus{background:orange;}
input[type="text"]:active{background:yellow;}


input[type="password"]:enabled{background:red;}
input[type="password"]:disabled{background:orange;}
</style>
</head>
<body>
姓名：<input type="text" placeholder="请输入用户名">

密码：<input type="password" placeholder="请输入密码">
不可用密码：<input type="password" placeholder="请输入密码" disabled>
</body>
</html>