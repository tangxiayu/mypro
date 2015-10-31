<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>侧边栏固定</title>

<style>
	*{
		margin:0;
		padding:0;
	}
	body{background:#eee;}
	#header{
		width:90%;
		height:400px;
		line-height:400px;
		margin:0 auto;
		background:#ddd;
		text-align:center;
	}
	#container{
		width:90%;
		height:2000px;
		margin:0 auto;
		background:#eedd33;
		overflow:hidden;
		position:relative;
	}
	#container .leftC{
		width:25%;
		float:left;
		height:500px;
		background:green;
	}
	#container .content{
		width:70%;
		margin-bottom:-9999px;
		padding-bottom:9999px;
		background:red;
		float:right;
	}
	#footer{
		width:90%;
		height:200px;
		text-align:center;
		line-height:200px;
		background:black;
		color:white;
		margin:0 auto;
	}
</style>
<script src="js/jquery-1.11.2.js"></script>
<script>
	$(function(){
		$(window).scroll(function(){
			//当前滚动条的高度
			var scrollHeight = $(window).scrollTop();
			//内容区与左侧导航栏的差值
			var contentHeight = $('#container').height()-$('.leftC').height();
			var titleHeight = $('#header').height();
			console.log(scrollHeight+'---'+contentHeight+'---'+titleHeight);
			console.log(scrollHeight > titleHeight && scrollHeight < contentHeight+titleHeight);
			if(scrollHeight > titleHeight && scrollHeight < contentHeight+titleHeight){
				//alert('ccc');
				$('.leftC').css({
					position:"absolute",
					left:"0px",
					top:scrollHeight-titleHeight+"px"
				});
			}else if(scrollHeight<titleHeight){
				$('.leftC').css({
					position:"absolute",
					left:"0px",
					top:"0px"
				});
			}
		});
	});
</script>
</head>
<body>
<div id="header">标题栏</div>
<div id="container">
	<div class="leftC">侧边栏</div>
	<div class="content">具体内容</div>
</div>
<div id="footer">底部版权</div>
</body>
</html>