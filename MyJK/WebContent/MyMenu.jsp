<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>垂直菜单，水平菜单</title>
<link href="css/menu.css" type="text/css" rel="stylesheet">
<script src="js/jquery-1.11.2.js"></script>
<script>
	$(function(){
		$('.main>a').click(function(){
			var ulNode = $(this).next('ul');
			ulNode.toggle();
			changeIcon($(this));
		});


		$('.hmain').hover(function(){
			$(this).children('ul').slideDown();
			changeIcon($(this).children('a'));
		},function(){
			$(this).children('ul').slideUp();
			changeIcon($(this).children('a'));
		});
	});

	function changeIcon(mainNode){
		if(mainNode){
			if(mainNode.css("background-image").indexOf("collapse.jpg")>=0){
				mainNode.css("background-image","url(images/expand.jpg)");
			}else{
				mainNode.css("background-image","url(images/collapse.jpg)");
			}
		}
	}
</script>
</head>
<body>
	<!-- 垂直菜单 -->
	<ul>
		<li class="main"><a href="#">菜单1</a>
			<ul>
				<li><a href="#">子菜单1</a></li>
				<li><a href="#">子菜单2</a></li>
			</ul>
		</li>
		<li class="main"><a href="#">菜单2</a>
			<ul>
				<li><a href="#">子菜单1</a></li>
				<li><a href="#">子菜单2</a></li>
			</ul>
		</li>
		<li class="main"><a href="#">菜单3</a>
			<ul>
				<li><a href="#">子菜单1</a></li>
				<li><a href="#">子菜单2</a></li>
			</ul>
		</li>
	</ul>
	<br/><br/><br/><br/>
	<!-- 水平菜单 -->
	<ul>
		<li class="hmain"><a href="#">菜单1</a>
			<ul>
				<li><a href="#">子菜单1</a></li>
				<li><a href="#">子菜单2</a></li>
			</ul>
		</li>
		<li class="hmain"><a href="#">菜单2</a>
			<ul>
				<li><a href="#">子菜单1</a></li>
				<li><a href="#">子菜单2</a></li>
			</ul>
		</li>
		<li class="hmain"><a href="#">菜单3</a>
			<ul>
				<li><a href="#">子菜单1</a></li>
				<li><a href="#">子菜单2</a></li>
			</ul>
		</li>
	</ul>
</body>
</html>