<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>this的使用</title>
<script>
//谁调用函数，this指的就是谁

/*this.m = 100; //等价于window.m=100;
function test(){
	alert(this.m);
}
test();//100  等价于 window.test()
*/



/*this.m = 1000;
var obj={
		m:100,
		test:function(){
			alert(this.m);
		}
		
};
obj.test(); //100
*/



/*
//含闭包
this.m = 1000;
var obj={
		m:100,
		test:function(){
			alert(this.m);
			return function(){
				alert(this.m);
			};
		}
};
//(obj.test())(); //1000  等价于   var t = obj.test();t();而t()又等价于window.t();
*/






this.a = 1000;
function test(){
	this.a = 1;
}
test.prototype.geta = function(){
	return this.a;
};
var p = new test;
console.log(p.geta());  //1

</script>
</head>
<body>
<!-- <input type="button" value="test" id="test" style="color:red;">
<script>
var style={
		color:"green"		
};
test();  //gren
function test(){
	alert(this.style.color);
}
//document.getElementsByTagName("input")[0].onclick = test; // red
 -->
</script>
</body>
</html>