<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>给字符串加千分符</title>
<script>
//例如：3456789012  --->  3,456,789,012

var str = '3456789012';
//方法一
/*function test(str){
	var iNum = str.length % 3;  //0,1,2
	var prev = '';
	var arr = [];
	var iNow = 0;
	var tempt = '';
	if(iNum != 0){
		prev = str.substring(0,iNum);  //从0 截取到iNum
		arr.push(prev);
	}
	str = str.substring(iNum);  //从iNum 开始往后截取
	for(var i=0; i<str.length; i++){
		iNow++;
		tempt += str[i];
		if(iNow == 3 && tempt){
			arr.push(tempt);
			iNow = 0;
			tempt = '';
		}
	}
	return arr.join(',');
}
console.log(test(str));*/


//方法二用正则表达式

function test(str){
	var re = /(?=(?!\b)(\d{3})+$)/g;
	return str.replace(re,',');
}
console.log(test(str));
</script>
</head>
<body>

</body>
</html>