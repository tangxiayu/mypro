<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
/*
function test(n1,n2,n3){
	//alert(test.length);   //3  length表示函数的形参集合
	alert(arguments[0]);  //1   arguments表示函数的实参集合
}
test(1,3,2); 
*/

//arguments可以获取js方法中的所有传入的参数
//求给定的若干个值中的最大值
function max(a,b){
	return a>b?a:b;
}
function test(){
	var maxValue = arguments[0];
	for(var i=1; i<arguments.length; i++){
		maxValue = max(maxValue,arguments[i]);
	}
	return maxValue;
}
console.log(test(1,2,-3,100,99,10,-5));
</script>
</head>
<body>

</body>
</html>