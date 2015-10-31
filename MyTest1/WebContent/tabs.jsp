<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>tab标签页</title>
<style>
	*{margin:0;padding:0;}
	#div1{margin:100px;}
	#div1 ul{list-style:none;}
	#div1 ul li{display:inline-block;zoom:1;*display:inline;width:100px;height:40px;line-height:40px;
	border:1px solid yellow;text-align:center;cursor:pointer;}
	#div2 div{display:none;width:306px;height:200px;background:#abcabc;color:white;}
	.current{background:#abcabc;color:white;}
</style>
<script src="js/jquery-1.11.2.js"></script>

<script>
	$(function(){
		$("ul").on('click','li',function(){
			$(this).addClass("current").siblings().removeClass("current").parent().
			next().find("div").eq($(this).index()).show().siblings().hide();
		});
	});
	/*window.onload = function(){
		var oDiv1 = document.getElementById('div1');
		var oDiv2 = document.getElementById('div2');
 		var aLi =  oDiv1.getElementsByTagName('li');
 		//alert(aLi.length);
 		var aDiv = oDiv2.getElementsByTagName('div');
 		//alert(aDiv.length);
 		for(var i=0; i<aLi.length; i++){
 	 		aLi[i].index = i;//不要忘了，可结合下面this.index记忆
			aLi[i].onClick = function(){  //注意：！！！onclick()事件中c是小写
				for(var i=0; i<aLi.length; i++){
					aLi[i].className = '';
					aDiv[i].style.display = 'none';
				}
				this.className = 'current';
				aDiv[this.index].style.display = 'block';  
			};
 	 	}
	};*/
</script>
</head>
<body>
	<div id="div1">
		<ul>
			<li class="current">
			html</li><li>
			css</li><li>
			javascript</li>
		</ul>
		<div id="div2">
			<div style="display:block;">html</div>
			<div>css</div>
			<div>javascript</div>
		</div>
	</div>
</body>
</html>