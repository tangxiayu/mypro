<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表切换</title>
<style>
*{margin:0;padding:0;}
#box{
	width:85%;
	margin:10px auto;
}
.changeList{
	width:100%;
	height:50px;
	border-bottom:1px solid red;
}
.list{
	list-style:none;
	float:right;
	width:200px;
	height:30px;
	
}
.list li{
	float:left;
	margin-left:5px;
	color:red;
	width:80px;
	height:20px;
	cursor:pointer;
	text-align:center;
}
.listC{
	list-style:none;
}
.listC li{
	margin-left:10px;
	margin-bottom:10px;
	border:1px solid blue;
}
.list-1-o{
	float:left;
}
.list-2-v{
	height:250px;
	width:400px;
}

</style>
<script src="js/jquery-1.11.2.js"></script>
<script>
	$(function(){
		$(document).on('click','.list1',function(){
			$(this).css("background","#bbb");
			$('.list2').css("background","#eee");
			$('.listC').children('li').removeClass("list-2-v").addClass("list-1-o");
		});
		$(document).on('click','.list2',function(){
			$(this).css("background","#bbb");
			$('.list1').css("background","#eee");
			$('.listC').children('li').removeClass("list-1-o").addClass("list-2-v");
		});
	});
</script>
</head>
<body>
<div id="box">
	<div class="changeList">
		<ul class="list">
			<li class="list1" style="background:#bbb;">网格列表</li>
			<li class="list2" style="background:#eee;">水平列表</li>
		</ul>
	</div>
	<div class="changeList2">
		<ul class="listC">
			<li class="list-1-o">
				<div>
					<img src="images/12.jpg"/>
					<div>课程介绍</div>
				</div>
			</li>
			<li class="list-1-o">
				<div>
					<img src="images/12.jpg"/>
					<div>课程介绍</div>
				</div>
			</li>
			<li class="list-1-o">
				<div>
					<img src="images/12.jpg"/>
					<div>课程介绍</div>
				</div>
			</li>
			<li class="list-1-o">
				<div>
					<img src="images/12.jpg"/>
					<div>课程介绍</div>
				</div>
			</li>
			<li class="list-1-o">
				<div>
					<img src="images/12.jpg"/>
					<div>课程介绍</div>
				</div>
			</li>
			
			<li class="list-1-o">
				<div>
					<img src="images/12.jpg"/>
					<div>课程介绍</div>
				</div>
			</li>
			<li class="list-1-o">
				<div>
					<img src="images/12.jpg"/>
					<div>课程介绍</div>
				</div>
			</li>
			

		</ul>
	</div>
</div>
</body>
</html>