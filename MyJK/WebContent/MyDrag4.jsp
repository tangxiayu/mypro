<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>html5图片上传预览</title>
<style>
*{
	margin:0;
	padding:0;
}
#div1{
	display:none;
	background:black;
	position:absolute;
	z-index:2;
	opacity:0.5;
	left:100px;
	height:50px;
	width:600px;
	height:600px;
	
}
ul{
	list-style:none;
	width:600px;
	height:400px;
}
ul li{
	float:left;
}
ul li img{
	width:200px;
	height:200px;
}
#button{
	width:100px;
	height:30px;
	line-height:30px;
	text-align:center;
	background:red;
	color:#fff;
	position:absolute;
	bottom:0;
	cursor:pointer;
}
</style>
<script>
window.onload = function(e){
	var oUl = document.getElementById('ul');
	var oDiv1 = document.getElementById('div1');
	var oButton = document.getElementById('button');
	//alert(oUl);
	document.ondragover = function(e){
		var e = e || window.event;
		e.preventDefault();
		
	};
	document.ondrop = function(e){
		e.preventDefault();
		oDiv1.style.display = 'block';
		var fs = e.dataTransfer.files;
		for(var i=0; i<fs.length; i++){
			if(fs[i].type.indexOf('image') != -1){
				var fd = new FileReader();
				fd.readAsDataURL(fs[i]);
				fd.onload = function(){
					var oLi = document.createElement('li');
					var oImg = document.createElement('img');
					oImg.src = this.result;
					oLi.appendChild(oImg);
					oUl.appendChild(oLi);
				};
			}
		}
	};
	oButton.onclick = function(){
		oDiv1.style.opacity = '1';
	};
};
</script>
</head>
<body>
<!-- 图片上传预览，有一个遮罩 -->
<div id="div1">
	<ul id="ul"></ul>
	<div id="button">确认上传</div>
</div>

</body>
</html>