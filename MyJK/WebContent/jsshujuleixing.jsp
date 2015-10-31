<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>js数据类型</title>
<script>
var a=0;
var b="a";
var c=function(){};
var d=[];
var e={};
var f=1.2;
var g = false;
var h;
var i=null;
console.log("a的类型＝"
+typeof(a)
+"\nb的类型＝"
+typeof(b)
+"\nc的类型＝"
+typeof(c)
+"\nd的类型＝"
+typeof(d)
+"\ne的类型＝"
+typeof(e)
+"\nf的类型＝"
+typeof(f)
+"\nnew c()的类型＝"
+typeof(new c())+"\ng的数据类型="+typeof(g)+"\nh的数据类型="+typeof(h)+"\ni的数据类型="+typeof(i));
/*a的类型＝number
b的类型＝string
c的类型＝function
d的类型＝object
e的类型＝object
f的类型＝number
new c()的类型＝object
g的数据类型=boolean
h的数据类型=undefined
i的数据类型=object*/
</script>
</head>
<body>
	
</body>
</html>