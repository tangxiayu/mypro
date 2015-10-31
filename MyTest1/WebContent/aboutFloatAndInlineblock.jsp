<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>关于清除浮动的那些事儿</title>
<style>
.content:after{   /*这是方法二*/
	content:'';
	clear:both;
	display:block; /*不能忘记这个*/
} 
</style>
<script>

</script>
</head>
<body>


<!-- 如果float,又要用到margin ，那么为了兼容ie6的两倍间距，要加上_display:inline; -->
<div class="content" style="width:500px;min-height:20px;background:pink;">
	<div style="float:left;_display:inline;width:150px;height:200px;background:red;"></div>
	<div style="float:left;width:150px;height:200px;background:blue;"></div>
	<div style="float:left;width:150px;height:200px;background:yellow;"></div>
	<!-- 方法一:<div style="clear:both;"></div> -->
</div>


<div class="content2" style="width:500px;min-height:20px;background:pink;margin-top:200px;">
	<div style="display:inline-block;width:150px;height:200px;background:red;"></div>
	<div style="display:inline-block;width:150px;height:200px;background:blue;"></div>
	<div style="display:inline-block;width:150px;height:200px;background:yellow;"></div>
</div>

<!-- 使用display:inline-block处理本身有的4px的间距  还有ie的兼容性 -->
<div class="content3" style="width:500px;min-height:20px;background:pink;margin-top:200px;">
	<div style="display:inline-block;zoom:1;*display:inline;float:none;width:150px;height:200px;background:red;"></div><!--  
	--><div style="display:inline-block;zoom:1;*display:inline;float:none;width:150px;height:200px;background:blue;"></div><!-- 
	 --><div style="display:inline-block;zoom:1;*display:inline;float:none;width:150px;height:200px;background:yellow;"></div>
</div>
</body>
</html>