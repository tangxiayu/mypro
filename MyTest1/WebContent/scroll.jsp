<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
*{margin:0;padding:0;}
#pic{width:650px;height:370px;margin:100px;background:black;position:relative;overflow:hidden;}
#pic ul{list-style:none;position:absolute;left:0;top:0;}
#pic ul li{float:left;width:650px;height:370px;}
#pic ul li img{width:650px;height:370px;}
</style>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script>
$(function(){
	var i=0;
	function tab(){
		$('ul').animate({
			left:-i*650
		},'fast');
	}
	function next(){
		i++;
		if(i == 4){
			i = 0;
		}
		tab();
	}
	var timer = setInterval(next,2000);
	$('#pic').mouseover(function(){
		clearInterval(timer);
	}).mouseout(function(){
		timer = setInterval(next,2000);
	});
});
</script>
</head>
<body>
	<!-- 图片轮换 -->
		
		<div id="pic">
			<ul>
				<li><a href="#"><img src="images/news1.JPG"/></a></li>
				<li><a href="#"><img src="images/news2.JPG"/></a></li>
				<li><a href="#"><img src="images/news3.JPG"/></a></li>
				<li><a href="#"><img src="images/news4.png"/></a></li>
			</ul>
		</div>
</body>
</html>