<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>妙味课堂js对象引用</title>
<script>
//例题1：
/*
var a =[1,2,3];
var b = a;  //a,b公用一个引用
b.push(4);
alert(b);  //1,2,3,4
alert(a);  //1,2,3,4
*/



//例题2：
/*
var a = [1,2,3];
var b = a;
b = [1,2,3,4];  //b新开了一个引用
alert(a);  //1,2,3
alert(b);   //1,2,3,4
*/



//例题3：
/*
var obj = {
		a:10
};
var obj2 = obj;
obj2.a = 20;
alert(obj.a);   //20
*/




//例题4：
/*
var obj = {
		a:10
};
function copy(obj){ //浅拷贝  （只拷贝了一层）
	var newObj = {};
	for(var attr in obj){
		newObj[attr] = obj[attr];
	}
	return newObj;
}
var obj2 = copy(obj);
obj2.a = 20;
alert(obj.a);  //10
*/




//例题5：
/*
var obj = {
		a:{
		b:10	
	}
};
function copy(obj){ //浅拷贝  （只拷贝了一层）
	var newObj = {};
	for(var attr in obj){
		newObj[attr] = obj[attr];
	}
	return newObj;
}
var obj2 = copy(obj);
obj2.a.b = 20;
alert(obj.a.b);    //20
*/




//例题6：递归：函数调用函数自身，执行递的动作；最后一次判断一个终止条件，执行归的动作
//求n*n-1*n-2*...*1
/*
function test(n){
	if(n == 1){
		console.trace();
		return 1;
	}
	return n*test(n-1);
}
alert(test(4));
*/




//例题7：深拷贝
var obj = {
		a:{
		b:10
	}
};
function deepCopy(obj){
	if(typeof obj != 'object'){  //到最后一层了
		return obj;
	}
	var newObj = {};
	for(var attr in obj){
		newObj[attr] = obj[attr];
	}
	return newObj;
}
var obj2 = deepCopy(obj);
obj2.a.b = 20;
alert(obj.a.b);  //20

</script>
</head>
<body>
</body>
</html>