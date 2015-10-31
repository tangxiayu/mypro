<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>双飞翼布局</title>
<link href="css/shaungfeiyi.css" type="text/css" rel="stylesheet">
<style>
//HTML渲染是从上到下，故应该把主要部分【middle】放在前面，所以这是float：left就会把middle到最左边来了，故需要下面的调整
*{
	margin:0;
	padding:0;
}
body{
	width:100%;
	min-width:1200px;
}
.header{
width:100%;
	background:pink;
	height:150px;
}
.article{
	background:blue;
	height:400px;
	/*padding-left:150px;
	padding-right:100px;*/
	overflow:hidden;
}
.footer{
	background:grey;
	height:100px;
}
.article .middle{
	background:red;
	float:left;
	width:100%;
	margin-bottom:-9999px;
	padding-bottom:9999px;

}
.article .left{
	background:green;
	float:left;
	width:150px;
	/*height:18px;*/
	margin-left:-100%;
	/*position:relative;
	left:-150px;*/
	margin-bottom:-9999px;
	padding-bottom:9999px;
	
}
.article .right{
	background:yellow;
	float:left;
	width:100px;
	/*height:18px;*/
	margin-left:-100px;
	/*position:relative;
	right:-100px;*/
	margin-bottom:-9999px;
	padding-bottom:9999px;
	
}
.inner{
	margin-left:150px;
	margin-right:100px;
}
</style>
</head>
<body>
	<div class="header">
		我是头
	</div>
	<div class="article">
		<div class="middle">
			<div class="inner">
			我是中间
			<p>我我我</p>
			<p>我我我</p>
			<p>我我我</p>
			</div>
		</div>
		<div class="left">
			我是左
		</div>
		<div class="right">
			我是右
		</div>
	</div>
	<div class="footer">
		我是底部版权@
	</div>
</body>
</html>