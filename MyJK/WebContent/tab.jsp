<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>tab标签页更高级一点点的！</title>
<style>
	*{margin:0;padding:0;}
	.tab1{
		margin:50px;
	}
	.navContent{
		list-style:none;
	}
	.navContent li{
		display:inline-block;
		zoom:1;
		*display:inline;
		float:none;
		border:1px solid red;
		color:white;
		background-color:#A9A9A9;
		cursor:pointer;
		margin-right:5px;
		padding:5px;
	}
	.divContent div{
		width:300px;
		height:150px;
		background-color:#696969;
		display:none;
	}
	li.current{
		background-color:#696969;
		border:1px solid #696969;
	}
	
	.tab2{margin:50px;}
	.navContent2{list-style:none;}
	.navContent2 li{
		display:inline-block;
		zoom:1;
		*display:inline;
		float:none;
		margin-right:5px;
		padding:2px;
		cursor:pointer;
	}
	.divContent2 div{
		width:400px;
		height:200px;
		background-color:#B0C4DE;
		border:1px solid black;
		position:relative;
		top:-1px;
	}
	li.current2{
		border:1px solid black;
		background-color:#B0C4DE;
		border-bottom:0;
		z-index:100;
		position:relative;
	}
</style>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script>
	var timeoutid;
	$(function(){
		$('.navContent>li').each(function(index){
			var _this = $(this);
			_this.mouseover(function(){
				timeoutid = setTimeout(function(){
				//在JS中无论是setTimeout还是setInterval，在使用函数名作为调用句柄时都不能带参数
					_this.addClass("current").siblings().removeClass("current");//最先是直接把_this写的是$(this)
					$('.divContent>div').eq(index).show().siblings().hide();
				},300);
			}).mouseout(function(){
				clearTimeout(timeoutid);
			});
		});

		$('.navContent2>li').each(function(index){
			$(this).click(function(){
				$(this).addClass("current2").siblings().removeClass("current2");
				if(index == 0){
					$('.divContent2>div').load("tab1.html");
				}
				if(index == 1){
					$('.divContent2>div').load("tab1.jsp #div1");
				}
				if(index == 2){
					$('.divContent2>div').load("tab1.jsp");
				}
				
			});
		});
	});

	
</script>
</head>
<body>
	<div class="tab1">
		<ul class="navContent">
			<li class="current">
			标签1</li><li>
			标签2</li><li>标签3</li>
		</ul>
		<div class="divContent">
			<div style="display:block;">内容1</div>
			<div>内容2</div>
			<div>内容3</div>
		</div>
	</div>
	
	
	
	<div class="tab2">
		<ul class="navContent2">
			<li class="current2">装载完整页面</li>
			<li>装载部分页面</li>
			<li>装载网络数据</li>
		</ul>
		<div class="divContent2">
			<div></div>
		</div>
	</div>
</body>
</html>