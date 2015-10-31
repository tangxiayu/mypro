<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>幽灵按钮</title>
<link href="css/ghost.css" type="text.css" rel="stylesheet">
<script src="js/jquery-1.11.2.js"></script>
<script>
$(function(){
	$('.link .button').hover(function(){
		var title = $(this).attr("data-title");
		$('.tip em').text(title);
		var pos = $(this).offset().left;
		var dis = ($('.tip').outerWidth()-$(this).outerWidth())/2;
		var f = pos - dis;
		$('.tip').css("left",f+"px").animate({
			"opacity":1,
			"top":195
		},300);
	},function(){
		$('.tip').animate({"top":160,"opacity":0});
	});

});
</script>
</head>
<body>
<div class="box">
	<div class="link link-miss">
		<span class="icon"></span>
		<a href="#" class="button" data-title="My mission is clear">
			<span class="line line-top"></span>
			<span class="line line-left"></span>
			<span class="line line-right"></span>
			<span class="line line-bottom"></span>
			MISSION
		</a>
	</div>
	<div class="link link-play">
		<span class="icon"></span>
		<a href="#" class="button" data-title="This is my playground">
			<span class="line line-top"></span>
			<span class="line line-left"></span>
			<span class="line line-right"></span>
			<span class="line line-bottom"></span>
			PLAY
		</a>
	</div>
	<div class="link link-touch">
		<span class="icon"></span>
		<a href="#" class="button" data-title="Lets do something together">
			<span class="line line-top"></span>
			<span class="line line-left"></span>
			<span class="line line-right"></span>
			<span class="line line-bottom"></span>
			TOUCH
		</a>
	</div>
	<div class="tip">
		<em></em>
		<span></span>
	</div>
</div>
</body>
</html>