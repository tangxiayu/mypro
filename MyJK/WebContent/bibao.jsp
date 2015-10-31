<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>闭包</title>
<script>
//闭包就是拿到本不属于它的东西
var j = 100;
function test(){
	var j;
	j = 10;
	var k = 1000;
	return function(){  //返回一个函数
		return k;  //会造成内存泄露
	};
	alert(j);
}
var t = test()();
alert(t); //1000  把内部的东西拿出来
</script>
</head>
<body>

</body>
</html>