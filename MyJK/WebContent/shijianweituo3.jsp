<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>妙味课堂上的事件委托</title>
<script src="js/move.js"></script>
<script>
window.onload = function(){
	var oUl = document.getElementById('ul1');
	var aLi = oUl.getElementsByTagName('li');


	//直接给每个li添加点击事件
	/*for(var i=0; i<aLi.length; i++){
		myAddEvent(aLi[i],'click',function(e){
			var e = e || window.event;
			var target = e.target || e.srcElement;
			alert(target.innerHTML);
		},false);
	}*/


	/*myAddEvent(oUl,'click',function(e){
		var e = e || window.event;
		var target = e.target || e.srcElement;
		alert(target.innerHTML);  //点击li和ul都会触发【改进方法见下面】
	},false);
	*/




	//nodeName找到元素的标签名
	myAddEvent(oUl,'click',function(e){
		var e = e || window.event;
		var target = e.target || e.srcElement;
		//alert(target.nodeName);  //大写的LI
		if(target.nodeName == 'LI'){   //
			alert(target.innerHTML);
		}
	},false);
};
</script>
</head>
<body>
<ul id="ul1">
	<li>111111111111</li>
	<li>2222222222222</li>
	<li>33333333333333333</li>
	<li>4444444444</li>
</ul>
</body>
</html>