<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>html5拖放</title>
<style>
#div1{
	width:200px;
	height:200px;
	background:red;
}
#div2{
	width:200px;
	height:200px;
	background:blue;
}
#img1{
	width:100px;
	height:100px;
}
</style>
<script>
var div1,div2,img1;
window.onload = function(){
	div1 = document.getElementById('div1');
	div2 = document.getElementById('div2');
	img1 = document.getElementById('img1');
	img1.ondragstart = drag;
	div2.ondragover = allowDrop;
	div2.ondrop = drop;
	div1.ondragover = allowDrop;
	div1.ondrop = drop;
};
function allowDrop(e){
	e.preventDefault();
}
function drag(e){
	e.dataTransfer.setData("text",e.target.id);
}
function drop(e){
	e.preventDefault();
	var data = e.dataTransfer.getData("text");
	e.target.appendChild(document.getElementById(data));
}
</script>
</head>
<body>
	<div id="div1">
		<img id="img1" src="images/10.jpg">
	</div>
	<div id="div2"></div>
</body>
</html>