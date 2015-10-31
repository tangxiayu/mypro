<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查找字符串中出现最多的字符和个数</title>
<script>
//例如：sdjkfssscfsssdd 字符出现最多的是s，，出现了7次
var str = 'sdjkfssscfsssdd';

//方法一
/*function test(str){
	var obj = {};
	var num = 0;
	var value = '';
	for(var i=0; i<str.length; i++){
		if(!obj[str[i]]){
			obj[str[i]] = [];
		}
		obj[str[i]].push(str[i]);  //push() 方法可向数组的末尾添加一个或多个元素
		//console.log(obj[str[i]]);
	}
	for(var attr in obj){
		if(num < obj[attr].length){
			num = obj[attr].length;
			value = obj[attr][0];
		}
	}
	return '最多的字符是'+value+',出现了'+num+'次';
}
console.log(test(str));*/


//方法二  正则表达式

function test(str){
	var arr = str.split(''); // 分割成成一个字符串数组['s','d','j','k',...]
	arr.sort();      //排序即 ['c','d','d','d',...]
	str = arr.join('');   //cdddffjksssssss 
	var re = /(\w)\1+/g;
	var num = 0;
	var value = '';
	str.replace(re,function($0,$1){ //$0表示正则整体，如:sssssss  $1表示正则当中指向的第一个,如：s
		if(num < $0.length){
			num = $0.length;
			value = $0;
		}
	});
	return '最多的字符是'+value+',出现了'+num+'次';
}

console.log(test(str));
</script>
</head>
<body>

</body>
</html>