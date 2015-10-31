<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>tab标签页更高级一点点的！2015/9/19</title>
<style>
	*{margin:0;padding:0;}
	body{font-size:16px;border:none;font-family:'微软雅黑 ';}
	ul{list-style:none;}
	.tab1{margin:50px;}
	.tab1 .ulNav{
		font-size:0;
		letter-spacing:-4px;
		word-spacing:-4px;
	}
	.tab1 .ulNav li{
		font-size:16px;
		letter-spacing:normal;
		word-spacing:normal;
		display:inline-block;
		zoom:1;
		*display:inline;  /*ie7-*/
		margin-right:10px;
		padding:5px;
		border:1px solid #fff;
		color:#fff;
		background-color:pink;
		cursor:pointer;
	}
	.tab1 .content div{
		width:300px;
		height:200px;
		background-color:red;
		display:none;
	}
	.tab1 .content div.show{display:block;}
	.tab1 .ulNav li.current{
		background-color:red;
		border-color:red;
	}
	
	
	
	
	
	.tab2{
		margin:100px;
	}
	.tab2 .tabNav{
		font-size:0;
		letter-spacing:-4px;
		word-spacing:-4px;
	}
	.tab2 .tabNav li{
		font-size:16px;
		letter-spacing:normal;
		word-spacing:normal;
		display:inline-block;
		zoom:1;
		*display:inline;
		/* border:1px solid #000; */
		background-color:pink;
		margin-right:5px;
		padding:5px;
		
	}
	.tab2 .tabNav li.current2{
		position:relative;
		border:1px solid #000;
		border-bottom:0;
		z-index:100;
	}
	.tab2 .content2 div{
		width:300px;
		height:200px;
		border:1px solid #000;
		background-color:pink;
		position:relative;
		top:-2px;
		display:none;
	}
	.tab2 .content2 div.show{
		display:block;
	}
	
	
	
	
	
	
	
	
	.trangleDiv{
		position:relative;
		font-size:16px;
		height:35px;
		line-height:35px;
		padding:2px 10px;
		margin:100px;
		border-radius:5px;
		background:red;
		color:#000;
		width:140px;
	}
	.trangleDiv span{
		position:absolute;
		font-size:0px;
		line-height:0px;
		width:0;
		height:0;
		border-top:7px solid red;
		border-left:7px solid transparent;
		border-right:7px solid transparent;
		left:50%;
		bottom:-7px;
		margin-left:-3px;
	}
	
	.tDiv{
		margin:100px;
		width:100px;
		height:100px;
		background-color:green;
		/* transform-origin:right bottom; */
		/* transform:translate(100px,0px); */
		transform:rotate(45deg);
	}
</style>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>

<script>
	$(function(){
		var timeId = null;
		$('.tab1 .ulNav>li').each(function(index){
			$(this).hover(function(){
				var _this = $(this);
				timeId = setTimeout(function(){
					_this.addClass('current').siblings('li').removeClass('current');
					$('.tab1 .content>div').eq(index).show().siblings('div').hide();
					//$('.tab1 .content>div').eq(index).addClass('show').siblings('div').removeClass('show');
				},300);
			},function(){
				clearTimeout(timeId);
			});
		});
		
		
		var timeId2 = null;
		$('.tab2 .tabNav>li').each(function(index){
			$(this).hover(function(){
				var _this = $(this);
				timeId2 = setTimeout(function(){
					_this.addClass('current2').siblings('li').removeClass('current2');
					$('.tab2 .content2>div').eq(index).show().siblings('div').hide();
					//$('.tab1 .content>div').eq(index).addClass('show').siblings('div').removeClass('show');
				},300);
			},function(){
				clearTimeout(timeId2);
			});
		});
	});
	
</script>
</head>
<body>
	<div class="tab1">
		<ul class="ulNav">
			<li class="current">标签1</li>
			<li>标签2</li>
			<li>标签3</li>
		</ul>
		<div class="content">
			<div class="show">1</div>
			<div>2</div>
			<div>3</div>
		</div>
	</div>
	
	
	<div class="tab2">
		<ul class="tabNav">
			<li class="current2">数据1</li>
			<li>数据2</li>
			<li>数据3</li>
		</ul>
		<div class="content2">
			<div class="show">1</div>
			<div>2</div>
			<div>3</div>
		</div>
	</div>
	
	
	
	
	//到三角形制作
	<div class="trangleDiv">
		<em>hello trangle!</em>
		<span></span>
	</div>
	
	//css基准点
	<div class="tDiv">看我罗</div>
	
	
	
	
	<div style="width:300px;height:50px;line-height:50px;background:red;margin:100px;"><span>hello</span>trangle</div>
</body>
</html>