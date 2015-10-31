<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>lightbox插件开发</title>
<link rel="stylesheet" type="text/css" href="css/lightbox.css"/>
<script src="js/jquery-1.4.4.min.js"></script>
<!-- 封装成一个jq插件 -->
<script type="text/javascript" src="myjs/lightbox.js"></script>
</head>
<body>
		class="js-lightbox" 表示这个元素要启用lightbox<br/>
		data-role="lightbox" 表示这个元素要启用lightbox<br/>
		data-source="lightboxImages/2-1.jpg" 原图的地址<br/>
		data-group="group-2"表示当前是否属于同一个组别<br/>
		data-id="11j1sd"  图片的唯一标示符<br/>
		data-caption="11jvg1hhh" 当前图片的描述文字<br/>

<h1>一组图片</h1>
<div>
	<img class="js-lightbox" 
		data-role="lightbox" 
		data-source="lightboxImages/1-1.jpg" 
		src="lightboxImages/1-1.jpg"
		data-group="group-1"
		data-id="1sd"
		data-caption="1111hhh"
		width="100" height="100"/>
	<img class="js-lightbox" data-role="lightbox" data-source="lightboxImages/1-2.jpg" src="lightboxImages/1-2.jpg"
data-group="group-1" data-id="112sd" data-caption="1111hhh" width="100" height="100"/>
	<img class="js-lightbox" data-role="lightbox" data-source="lightboxImages/1-3.jpg" src="lightboxImages/1-3.jpg"
data-group="group-1" data-id="1dd2nnnsd" data-caption="ffff1hhh" width="100" height="100"/>
</div>

<h1>二组图片</h1>
<div>
	<img class="js-lightbox" 
		data-role="lightbox" 
		data-source="lightboxImages/2-1.jpg" 
		src="lightboxImages/2-1.jpg"
		data-group="group-2"
		data-id="11j1sd"
		data-caption="11jvg1hhh"
		width="100" height="100"/>
</div>
<!-- 遮罩 
<div id="G-lightbox-mask"></div>
-->
<!-- 弹出层
<div id="G-lightbox-popup">
	<div class="lightbox-pic-view">
		<span class="lightbox-btn light-prev-btn light-prev-btn-show"></span>
		<img class="lightbox-image" src="lightboxImages/2-2.jpg"/>
		<span class="lightbox-btn light-prev-btn light-next-btn-show"></span>
	</div>
	<div class="lightbox-pic-caption">
		<div class="lightbox-caption-area">
			<p class="lightbox-pic-desc">图片标题</p>
			<span class="lightbox-of-index">当前索引：1/4</span>
		</div>
		<span class="lightbox-close-btn"></span>
	</div>
</div>
 -->

<script>
	$(function(){
		var lightbox = new LightBox({
				speed:600
			});
	});
</script>
</body>
</html>