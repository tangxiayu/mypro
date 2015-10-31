<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>css3多列属性</title>
<style>
*{
	margin:0;
	padding:0;
}
.textMenu{
	width:95%;
	margin:10px auto;
	list-style:none;
	column-count:3;
	column-gap:20px;
	column-rule:1px dashed #808080;
	
	-moz-column-count:3;
	-moz-column-gap:20px;
	-moz-column-rule:1px dashed #808080;
	
	-webkit-column-count:3;
	-webkitcolumn-gap:20px;
	-webkitcolumn-rule:1px dashed #808080;
}
.textMenu li{
	margin-top:20px;
}
@media (min-width:480px){
	.textMenu{
		column-count:1;
		column-gap:0;
		-moz-column-count:1;
		-moz-column-gap:0px;
		-moz-column-count:1;
		-moz-column-gap:0px;
	}
}
@media (min-width:768px){
	.textMenu{
		column-count:2;
		column-gap:10px;
		-moz-column-count:2;
		-moz-column-gap:10px;
		-moz-column-count:2;
		-moz-column-gap:10px;
	}
}
@media (min-width:992px){
	.textMenu{
		column-count:3;
	column-gap:20px;
	column-rule:1px dashed #808080;
	
	-moz-column-count:3;
	-moz-column-gap:20px;
	-moz-column-rule:1px dashed #808080;
	
	-webkit-column-count:3;
	-webkitcolumn-gap:20px;
	-webkitcolumn-rule:1px dashed #808080;
	}
}
@media (min-width:1200px){
	.textMenu{
		column-count:4;
		column-gap:10px;
		-moz-column-count:4;
		-moz-column-gap:10px;
		-moz-column-count:4;
		-moz-column-gap:10px;
	}
}
</style>
</head>
<body>
<ul class="textMenu">
	<li class="menuOne">
		<h1>第一季</h1>
		<p>在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。
		在传统的浮动、定位基础之上，CSS3 提供了一系列新的布局方式，包括弹性盒模型、多列、媒体查询等，
		利用这些布局方式我们可以灵活地应对复杂网页布局，本课程通过属性详解、实战案例的方式向您展示这些新兴布局方式的强大之处。 
		 
		</p>
	</li>
	<li class="menuOne">
		<h1>第二季</h1>
		<p>核心内容： 
			1.弹性盒模型;
			2.flex 菜单；
			3.多列 Multi-column；
			4.媒体查询；
			5.表格的响应式布局；
			6.图片的响应式布局 
			
			软件环境：hbuilder 
			
			是否提供资料：是 
			
			课程等级：中级 
			
			适合人群： 
			具备 html、css 基础知识的相关学习者 
		 
		</p>
	</li>
	<li class="menuOne">
		<h1>第三季</h1>
		<p>::first-letter CSS pseudo-element selector
			::placeholder CSS pseudo-element
			::selection CSS pseudo-element
			@font-face Web fonts
			Blending of HTML/SVG elements
			calc() as CSS unit value
			2.1 selectors
			all property
			Animation
			background-attachment
			background-blend-mode
			background-position edge offsets
			box-decoration-break
			clip-path property
			Counter Styles
			Counters
			currentColor value
			Device Adaptation
			element() function
			Exclusions Level 1
			Feature Queries
			Filter Effects
			filter() function 
		 
		</p>
	</li>
</ul>
</body>
</html>