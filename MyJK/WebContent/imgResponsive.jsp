<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>响应式图片项目实战</title>
<style>
*{
	margin:0;
	padding:0;
}
.container{
	width:100%;
	text-align:center;
	margin:50px auto;
}
</style>
<script type="text/javascript" src="is/picturefill.min.js"></script><!-- 用来兼容大部分现代浏览器 -->
</head>
<body>
	<div class="container">
		<!--媒体宽度>=900，则以900显示，否则，以100%展示  -->
		<img
			sizes="(min-width:900px) 900px,100vw"    
			srcset="images/1.jpg 480px,
					images/2.jpg 640px,
					images/3.jpg 720px,
					images/4.jpg 900px"
			src="images/1.jpg" alt="responsive images"
		/>
	</div>
	
	
	
	<div class="container">
		<!--  -->
		<picture>
			<source media="(max-width:480px)" srcset="images/1.jpg"></source>
			<source media="(max-width:640px)" srcset="images/2.jpg"></source>
			<source media="(max-width:720px)" srcset="images/3.jpg"></source>
			<source media="(max-width:900px)" srcset="images/4.jpg"></source>
			<img src="images/4.jpg" alt="responsive images"/>
		</picture>
	</div>
	
</body>
</html>