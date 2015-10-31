<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>旋转木马效果</title>
<link rel="stylesheet" type="text/css" href="css/carousel.css"/>
<script src="js/jquery-1.4.4.min.js"></script>
<!-- 封装成一个jq插件 -->
<script type="text/javascript" src="myjs/carousel.js"></script>
</head>
<body>
<div class="aboutCarousel">
	<!-- 注意写成json格式 -->
	<div class="J_Poster poster-main" data-setting='{
										"width":1000,
										"height":270,
										"posterWidth":640,
										"posterHeight":270,
										"scale":0.8,
										"speed":500,
										"autoPlay":true,
										"delay":5000,
										"verticalAlign":"middle"
	
	}'>
		<div class="poster-button poster-prev-button"></div>
		<ul class="poster-list">
			<li class="poster-item"><a href="#"><img src="carouselImage/1.jpg" width="100%" height="100%"/></a></li>
			<li class="poster-item"><a href="#"><img src="carouselImage/2.jpg" width="100%" height="100%"/></a></li>
			<li class="poster-item"><a href="#"><img src="carouselImage/3.jpg" width="100%" height="100%"/></a></li>
			<li class="poster-item"><a href="#"><img src="carouselImage/4.jpg" width="100%" height="100%"/></a></li>
			<li class="poster-item"><a href="#"><img src="carouselImage/5.jpg" width="100%" height="100%"/></a></li>
			<li class="poster-item"><a href="#"><img src="carouselImage/6.jpg" width="100%" height="100%"/></a></li>
			<li class="poster-item"><a href="#"><img src="carouselImage/1.jpg" width="100%" height="100%"/></a></li>
			<li class="poster-item"><a href="#"><img src="carouselImage/6.jpg" width="100%" height="100%"/></a></li>
		</ul>
		<div class="poster-button poster-next-button"></div>
	</div>
	
	
</div>


<script>
$(function(){
	Carousel.init($('.J_Poster'));
});
</script>
</body>
</html>