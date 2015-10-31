<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索框1</title>
<style>
*{margin:0;padding:0;}
body{background:#333;}
.bg-image{position:relative;background-image:url(searchboxImage/river.jpg);width:1228px;height:690px;margin:0 auto;}
.search-logo{background-image:url(searchboxImage/logo.png);width:107px;height:53px;float:left;margin:-10px 10px 0 0;}
.search-form{float:left;background-color:#fff;padding:5px;}
.box{position:absolute;left:200px;top:150px;}
.input-text{width:350px;height:25px;line-height:25px;border:0;outline:0;}
.input-submit{background-image:url(searchboxImage/search-button.png);width:29px;height:29px;border:0;cursor:pointer;}
.suggest{position:absolute;width:393px;background:#fff;border-top:1px solid grey;}
.suggest ul{list-style:none;}
.suggest ul li{height:25px;line-height:25px;padding:3px;}
.suggest ul li:hover{background:#eee;text-decoration:underline;cursor:pointer;}
</style>
<script src="js/jquery-1.4.4.min.js"></script>
<script>
$(function(){
	$('.suggest').css({
		left:$('.search-form').offset().left+'px',
		top:$('.search-form').offset().top+$('.search-form').height()+10+'px'
	});
	$('.search-form').on('keyup','.input-text',function(){
		var text = $(this).val();
		$.get('http://api.bing.com/qsonhs.aspx?q='+text);
	});
});
</script>
</head>
<body>
<div>
	<div class="bg-image">
		<div class="box">
			<div class="search-logo"></div>
			<form class="search-form">
				<input type="text" class="input-text"/>
				<input type="submit" value="" class="input-submit"/>
			</form>
		</div>	
	</div>	
</div>


<div class="suggest">
	<ul>
		<li>搜索内容1</li>
		<li>搜索内容2</li>
		<li>搜索内容3</li>
	</ul>
</div>

</body>
</html>