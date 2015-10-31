<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>淘宝搜索框制作</title>
<style>
*{margin:0;padding:0;}
.search-container{width:60%;height:200px;background:pink;margin:100px auto;}
.search-list{width:100%;height:30px;line-height:30px;background:red;}
.search-panel{width:100%;height:60px;}
.search-panel form{width:100%;height:50px;background:#fff;}
.search-top,.search-button,.search-text{float:left;height:50px;line-height:50px;}
.search-top a{margin-top:0;}
.search-text input{width:200px;height:30px;}
</style>
</head>
<body>
<div>
	<div class="search-container">
		<div class="search-list">
			<span>宝贝</span>
			<span>天猫</span>
			<span>店铺</span>
		</div>
		<div class="search-panel">
			<form>
				<div class="search-text">
					<input type="text"/>
				</div>
				<div class="search-button">
					<button>搜索</button>
				</div>
				<div class="search-top">
					<a href="#">
					高级<br/>搜索
					</a>
				</div>
				
				
			</form>
		</div>
	</div>
</div>
</body>
</html>