<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/move.js"></script>
<script>

function init(){
	
	console.profile(aa);
	aa();
	console.profileEnd(aa);

	console.profile(bb);
	bb();
	console.profileEnd(bb);
}
	function aa(){
		var oUl= document.getElementById('list');
		var aLi = oUl.getElementsByTagName('li');
		for(var i=0; i<aLi.length; i++){
			myAddEvent(aLi[i],"click",function(e){
				var target = e.target;
				alert(target.innerHTML);
			},false);
		}
		
	};

	function bb(){
		var oUl = document.getElementById('list');
		myAddEvent(oUl,'click',function(e){
			var target = e.target;
			alert(target.innerHTML);
		},false);
		
	};
	window.onload = function(){
		init();
	};
		




</script>
</head>
<body>
<ul id="list">
	<li>1111111111111</li>
	<li>22222222222222</li>
	<li>33333333333333333333</li>
	<li>444444444444444444444</li>
</ul>
</body>
</html>