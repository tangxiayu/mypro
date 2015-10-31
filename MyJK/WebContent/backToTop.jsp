<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>回到顶部功能实现</title>
<style>
*{
	margin:0;
	padding:0;
}
	.container{
		width:1000px;
		height:2500px;
		background-color:#ddd;
		margin:0 auto;
	}
	#btn{
		width:40px;
		height:80px;
		background:red;
		position:fixed;
		left:50%;
		bottom:-80px;
		margin-left:500px;
		bottom:30px;
		display:none; 
	}
	#btn:hover{
		background:green;
	}
</style>
<script>

	window.onload = function(){
		var topbtn = document.getElementById('btn');
		var timer;
		var clientHeight = document.documentElement.clientHeight;//可见区域的高度
		window.onscroll = function(){
			var backtop = document.body.scrollTop || document.documentElement.scrollTop;
			//console.log(backtop);
			if(backtop < clientHeight){
				topbtn.style.display = "none";
			}else{
				topbtn.style.display = "block";
			} 
			
		};
		topbtn.onclick = function(){
			timer = setInterval(function(){
				var backtop = document.body.scrollTop || document.documentElement.scrollTop;
				
				var speed = backtop/5;
				document.body.scrollTop = backtop - speed;
				
				if(backtop == 0){
					clearInterval(timer);
				}
				
				
			},30);
		};
	};
</script>
</head>
<body>
<!-- 回到顶部时是减速回去，向下滑动时，当滚动条高度超过可见区域高度时显示按钮 -->
	<div class="container">
		<div>我是顶部</div>
		<a style="display:none;" href="javascript:void();" id="btn" title="回到顶部"></a>
	</div>
</body>
</html>