<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>html5拖放</title>
<style>
	#div1{
		width:600px;
		height:600px;
		background:#eee;
	}
</style>
<script>
	var div1;
	var img1;
	
	window.onload = function(e){
		div1 = document.getElementById('div1');
		img1 = document.getElementById('img1');
		img1.ondragstart = drag;
		div1.ondragover = allowDrop;
		div1.ondrop = drop;
		
	};

	function drag(e){
		e.dataTransfer.setData("text",e.target.id);//被拖数据的数据类型和值，相当于把可拖动元素的id放到text中
	}
	function allowDrop(e){
		e.preventDefault();
	}
	function drop(e){
		e.preventDefault();
		var data = e.dataTransfer.getData("text");//获得被拖动的数据
		e.target.appendChild(document.getElementById(data));
	}
</script>
</head>
<body>
	<div id="div1"></div>
	<img id="img1" src="images/6.jpg">
</body>
</html>