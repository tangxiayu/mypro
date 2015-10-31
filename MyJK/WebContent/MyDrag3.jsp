<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>html5拖放本地资源</title>
<style>
#div1{
	width:500px;
	height:500px;
	background-color:#eee;
}
#showContent{
	width:300px;
}
</style>
<script>
var showContent;
window.onload = function(){
	var div1 = document.getElementById('div1');
	showContent = document.getElementById('showContent');
	div1.ondragover = allowDrop;
	//alert('ss');
	
	div1.ondrop = function(e){
		//alert('drop');
		e.preventDefault();
		var f = e.dataTransfer.files[0];
		var fileReader = new FileReader();
		fileReader.onload = function(e){
			//showobj(e.target);
			div1.innerHTML = "<img src='"+fileReader.result+"'>";//'"+fileReader.result+"
			//var m = 1+i+'='
		};
		fileReader.readAsDataURL(f);
	};

	


	

};

function showobj(obj){
	var s = "";
	for(var k in obj){
		s += k+":"+obj[k]+"<br/>";
	}
	showContent.innerHTML = s;
	
}

function allowDrop(e){
	e.preventDefault();
}


function drop1(obj,e){
	e.preventDefault();
	var f = e.dataTransfer.files[0];
	var fileReader = new FileReader();
	fileReader.onload = function(e){
		this.innerHTML = "<img src=\""+fileReader.result+"\">";
	};
	fileReader.readAsDataURL(f);
}
</script>
</head>
<body>
	<div id="div1"></div>
	<div id="showContent"></div>
</body>
</html>