<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>toolTip提示框</title>
<style>
*{
	margin:0;
	padding:0;
}
.div{
	width:500px;
	padding:20px;
	margin:50px auto;
	border-radius:5px;
	box-shadow:3px 3px 3px 10px #ddd;
	line-height:1.8;
}
.tooltip{
	color:#33eedd;
	cursor:pointer;
}
.tooltipClass{
	padding:5px;
	width:400px;
	border:1px solid #eeffdd;
	color:red;
	background:#eee;
}
</style>
<script src="js/tooltip.js"></script>
<script src="js/move.js"></script>
<script>
window.onload = function(){
	/*var tj = getDocId("tj");
	var sc = getDocId("sichuan");
	var logo = getDocId("cuitLogo");
	var cuit = getDocId("cuit");
	*/
	
	
	var parentDiv = getDocId("div");
	/*myAddEvent(parentDiv,"mousemove",function(){
		alert('aaaaaa');
	});*/
	/*为什么用 addEventListener
	•可以对同一物件的同一事件绑定多个事件处理程序。
	•可以通过事件流三个阶段更好地控制何时触发事件处理程序。
	•工作于 DOM 元素，而不仅是 HTML 元素。*/
	myAddEvent(parentDiv,"mousemove",function(e){
		var target = e.target;
		if(target.className =="tooltip"){
			var _id;
			var _html;
			var _width;
			switch(target.id){
				case "tj":
					_id="me";
					_html="我是唐静";
					_width=200;
					break;
				case "sichuan":
					_id="sc";
					_html="四川是个好地方哟！";
					_width=200;
					break;
				case "cuitLogo":
					_id="lg";
					_html="<img src='images/logo.png'>";
					_width=400;
					break;
				case "cuit":
					_id="cxd";
					_html="<iframe src='http://www.cuit.edu.cn' width='500' height='300'></iframe>";
					_width=500;
					break;
			}
			showToolTip(target,_id,_html,_width);
		}
	});
	/*tj.onmousemove = function(){
		showToolTip(this,"me","我是唐静",200);
	};
	
	sc.onmousemove = function(){
		showToolTip(this,"sc","四川是个好地方哟！",200);
	};
	
	logo.onmousemove = function(){
		showToolTip(this,"lg","<img src='images/logo.png'>",200);
	};
	
	cuit.onmousemove = function(){
		var geek = "<iframe src='http://www.cuit.edu.cn' width='500' height='300'></iframe>";
		showToolTip(this,"cxd",geek,500);
	};*/
};
</script>
</head>
<body>
<div class="div" id="div">
	<h3>个人简介</h3>
	<p>Hello everyone!My name is 
	<a id="tj" class="tooltip">tangjing</a>.I am from 
	<a id="sichuan" class="tooltip">sichuan Guang'an</a>! Now, I have graduated from 
	<a id="cuitLogo" class="tooltip">ChengDu university of information technology</a>! Now, I am 22.</p>
	<p>赶快报名<a class="tooltip" id="cuit">成都信息工程学院</a>吧！</p>
</div>
</body>
</html>