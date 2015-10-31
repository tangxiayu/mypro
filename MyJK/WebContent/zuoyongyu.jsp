<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>js作用域和闭包</title>
<script>
//js是函数级别作用域，在内部的变量，内部都能访问；
//外部不能访问内部的，内部能访问外部的
/*function test(){
	if(false){
		var i = 10;
	}
	//console.log(i);//undefined
	console.log(j);//j is not defined
	
}
test();*/




/*test();
function test(){
	if(false){
		var i = 10;
	}else{
		var t = 100;
	}
	console.log(t);//100
}
console.log(t);// 外部不能访问内部的    t is not defined
*/

/*var j;
test();//先把变量收集过来，后面再进行赋值   undefined
j = 1000;
//var j = 1000;
function test(){
	if(false){
		var i = 10;
	}else{
		var t = 100;
	}
	console.log(j);
	
}*/



/*var j = 1000;
function test(){
	if(false){
		var i = 10;
	}else{
		var t = 100;
	}
	console.log(j);
	
}
test();//1000
*/



var j = 100;
function test(){
	console.log(j);
	var j;
}
test();  //undefined
//console.log(j);var j;  等价于   var j;console.log(j);
</script>
</head>
<body>

</body>
</html>