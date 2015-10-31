<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>作用域</title>
<script>
//第一题：
/*var a = 10;
function aaa(){
	alert(a);
}
function bbb(){
	var a = 20;
	aaa();
}
bbb();  //结果是：10  这里执行aaa()时，是去找aaa()这个函数，然后在aaa()这个函数里面，只能访问到外部的10，不能访问到内部的20
*/



//第二题：
/*function aaa(){
	a = 10;
}
aaa();
alert(a);  //结果是：10 当var 不加的时候，会自动生成一个全局的变量
*/ 



//第三题：
/*function aaa(){
	var a = b = 10;  //从右往左看
}
aaa();
//alert(a);  //结果是：a is not defined   外层不能访问内层变量
alert(b);  //结果是：10   解析成全局变量
*/



//第四题：  变量的查找是就近原则去查找var定义的变量，当就近没有找到，就会查找外层
/*var a = 10;
function aaa(){
	var a = 20;  //就近原则去查找var定义的变量
	alert(a);
}
aaa();   //结果是：20
*/


/*var a = 10;
function aaa(){
	a = 20;  //解析成全局变量
	alert(a);
}
aaa();   //结果是：20
*/


/*var a = 10;   //就近原则去查找var定义的变量,当就近没有找到，就会查找外层
function aaa(){
	alert(a);
	a = 20;
}
aaa();  //结果是：10
*/


/*var a = 10;
function aaa(){
	alert(a);
	var a;  //当就近没有找到，就会查找外层
}
aaa();  //结果是：undefined  等价于：var a; alert(a);  有声明，但是没有赋值
*/




//第五题：
/*var a = 10;
function aaa(){
	alert(a);
	var a = 20;
}
aaa();  //结果是：undefined  等价于：var a; alert(a); a = 20;
*/
</script>
</head>
<body>

</body>
</html>