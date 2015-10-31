<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
input::-webkit-input-placeholder { 
color: #999; 
-webkit-transition: color.5s; 
} 
input:focus::-webkit-input-placeholder, input:hover::-webkit-input-placeholder { 
color: #c2c2c2; 
-webkit-transition: color.5s; 
} 

</style>
</head>
<body>
<input type="text" name="user_search" placeholder="Search W3School" />


<div id="div1" style="width:400px;height:300px;background:red;">
<div id="div2" style="width:100px;height:100px;background:black;"></div>
<input type="button" id="bt1" value="button">
</div>
<script>
var div1 = document.getElementById('div1');
var div2 = document.getElementById('div2');
var btn1 = document.getElementById('bt1');
div2.onclick = function(e){
	e.stopPropagation();
	alert('div2');
};
div1.onclick = function(e){
	
	alert('div1');
};

btn1.onclick = function(e){
	e.stopPropagation();
	alert('btn1');
};
</script>
</body>
</html>