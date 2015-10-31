<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.4.4.min.js"></script>
<script>
	$(function(){
		/* $('#div1').mouseenter(function(){
			$(this).css("background-color","red");
		}).mouseleave(function(){
			$(this).css("background-color","#fff");
		});
		$('#div2').mouseenter(function(){
			$(this).css("background-color","blue");
		}).mouseleave(function(){
			$(this).css("background-color","#fff");
		}); */
		$('#div1').mouseover(function(){
			$(this).css("background-color","red");
		}).mouseout(function(){
			$(this).css("background-color","#fff");
		});
		$('#div2').mouseover(function(){
			$(this).css("background-color","blue");
		}).mouseout(function(){
			$(this).css("background-color","#fff");
		});
	});
</script>
</head>
<body>
	<div style="width:300px;height:300px;margin:100px;border:1px solid red;" id="div1">
		<div style="width:100px;height:100px;margin-left:-20px;border:1px solid #000;" id="div2"></div>
	</div>
</body>
</html>