<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>写一个字符串转成驼峰的方法</title>
<script><!--
//例如：border-bottom-color -->  borderBottomColor


//方法一
var str = 'border-bottom-color';

/*function test(str){
	var arr = str.split('-');  //['border','bottom','color'] split把一个字符串分割成字符串数组
	for(var i=1; i<arr.length; i++){
		arr[i] = arr[i].charAt(0).toUpperCase()+arr[i].substring(1);
	}
	return arr.join('');
	
}
console.log(test(str));*/


//方法二用正则表达式
function test(str){
	var re = /-(\w)/g;
	return str.replace(re,function($0,$1){  //$0:-b  -c    $1:b   c
		return $1.toUpperCase();
	});
}
console.log(test(str));

</script>
</head>
<body>

</body>
</html>