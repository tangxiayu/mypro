<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>全选、全不选、反选</title>
<script src="js/jquery-1.4.4.min.js"></script>
<script>

	//这里有jquery本身的一个bug，选择一个低版本的jquery库就可以了
	$(function(){
		var checkAll = $('#checkAll');
		var checkNone = $('#checkNone');
		var checkReverse = $('#checkReverse');
		var checkbox = $('#checkbox>:checkbox');
		
		checkAll.click(function(){
			checkbox.attr('checked',true);
		});
		checkNone.click(function(){
			checkbox.attr('checked',false);
		});
		checkReverse.click(function(){
			checkbox.each(function(){
				$(this).attr('checked',!($(this).attr('checked')));
			});
		});
	});
</script>
</head>
<body>
	<div id="btn">
		<input type="button" id="checkAll" value="全选"/>
		<input type="button" id="checkNone" value="全不选"/>
		<input type="button" id="checkReverse" value="反选"/>
	</div>
	<div id="checkbox">
		<input type="checkbox"/>吃
		<input type="checkbox"/>喝
		<input type="checkbox"/>玩
		<input type="checkbox"/>乐
	</div>
</body>
</html>