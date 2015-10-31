<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的笔记 ---AngularJS</title>
<script src="http://apps.bdimg.com/libs/angular.js/1.3.9/angular.min.js"></script>
</head>
<body >

	<div ng-app="myNoteApp" ng-controller="myNoteCtrl">
		<h3>我的笔记</h3>
		<p><textArea ng-model="message" cols="30" rows="10" style="resize:none;"></textArea></p>
		<p>
			<button ng-click="save()">保存</button>
			<button ng-click="clear()">清除</button>
		</p>
		<p>剩余字数：<span ng-bind="left()">100</span></p>
	</div>
	<script src="myjs/myNoteApp.js"></script>
	<script src="myjs/myNoteCtrl.js"></script>
</body>
</html>