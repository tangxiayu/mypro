<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>查看修改删除</title>
<style>
	#table1{width:600px;border:1px solid black;border-collapse:collapse;}
	#table th,td{height:28px;border:1px solid black;text-align:center;}
	a{text-decoration:none;color:red;margin-left:5px;}
	.popDiv{display:none;width:300px;padding:10px;border:1px solid blue;position:absolute;background:white;z-index:4;}
	.popDiv p{border-bottom:1px solid blue;}
	.modDiv{display:none;width:300px;padding:10px;border:1px solid blue;position:absolute;background:white;z-index:4;}
</style>
<script src="js/jquery-1.11.2.js"></script>
<script>
	$(function(){
		//查看
		$('td').on('click','.view',function(e){
			var arr = [];
			$(this).parent().siblings().each(function(){
				arr.push($(this).text());
			});
			$('.popDiv').show().css({
				left:e.pageX,
				top:e.pageY
			}).children().each(function(index){
				$(this).children('span').text(arr[index]);
			});
			return false;//这里要取消冒泡并且阻止默认事件
		});
		//点击其他地方自动关闭
		$(document).on('click',function(e){
			var src = e.target;
			if(src.className && src.className === "popDiv"){
				return false;
			}else{
				$('.popDiv').hide();
			}
		});
		//关闭
		$('div').on('click','.close',function(){
			$(this).parent().hide();
			//$('.mask').remove();
		});
		//删除
		$('td').on('click','.del',function(){
			$(this).parents('tr').remove();
		});
		//修改
		$('td').on('click','.modify',function(e){
			var _this = $(this);//_this的大好作用
			e.preventDefault();
			var arr1 = [];
			$(this).parent().siblings().each(function(){
				arr1.push($(this).text());
			});
			$('.modDiv').show().css({
				left:e.pageX,
				top:e.pageY
			}).children().each(function(index){
				$(this).children('input').val(arr1[index]);
			});
			//return false;//这里要取消冒泡并且阻止默认事件
			//保存
			$('div').on('click','.save',function(e){
				e.preventDefault();
				var arr2=[];
				$(this).siblings('p').find('input').each(function(){
					arr2.push($(this).val());
				});
				$('.modDiv').hide();
				_this.parents('tr').children('td:not(:last)').each(function(index){//注意:_this的大好作用
					$(this).text(arr2[index]);
				});
				
			});
		});
		
		
	});
</script>
</head>
<body>
	<table id="table1">
		<tr>
			<th>姓名</th>
			<th>年龄</th>
			<th>工资</th>
			<th>操作</th>
		</tr>
		<tr>
			<td>张三</td>
			<td>23</td>
			<td>2000</td>
			<td><a href="#" class="view">查看</a><a href="#" class="del">删除</a><a href="#" class="modify">修改</a></td>
		</tr>
		<tr>
			<td>李四</td>
			<td>26</td>
			<td>2600</td>
			<td><a href="#" class="view">查看</a><a href="#" class="del">删除</a><a href="#" class="modify">修改</a></td>
		</tr>
		<tr>
			<td>王五</td>
			<td>43</td>
			<td>8000</td>
			<td><a href="#" class="view">查看</a><a href="#" class="del">删除</a><a href="#" class="modify">修改</a></td>
		</tr>
		<tr>
			<td>小五</td>
			<td>33</td>
			<td>4000</td>
			<td><a href="#" class="view">查看</a><a href="#" class="del">删除</a><a href="#" class="modify">修改</a></td>
		</tr>
	</table>
	
	
	<div class="popDiv">
		<p><strong>姓名：</strong><span></span></p>
		<p><strong>年龄：</strong><span></span></p>
		<p><strong>工资：</strong><span></span></p>
		<a href="#" class="close">关闭</a>
	</div>
	
	<div class="modDiv">
		<p><strong>姓名：</strong><input type="text"/></p>
		<p><strong>年龄：</strong><input type="text"/></p>
		<p><strong>工资：</strong><input type="text"/></p>
		<a href="#" class="save">保存</a>
	</div>
</body>
</html>