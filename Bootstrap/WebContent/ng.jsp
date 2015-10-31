<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AngularJS</title>
<script src="http://apps.bdimg.com/libs/angular.js/1.3.9/angular.min.js"></script>
</head>
<body>
	<!-- <ul ng-app="">
		<li>姓名：<input type="url" ng-model="name"/></li>
		<li>你输入的是：<span ng-bind="name"></span></li>
	</ul> -->
	
	
	<!-- <div ng-app="" ng-init="firstName='yuyu'">
		<p>姓名为：<span ng-bind="firstName"></span></p>
	</div>
	
	
	<div data-ng-app="" data-ng-init="firstName='John'">

<p>姓名为 <span data-ng-bind="firstName"></span></p>

</div> -->


<!-- <div ng-app="" ng-init="quantity=1;cost=5">
	<p>总价：<span ng-bind="quantity * cost"></span></p>
	<p>总价：{{quantity * cost}}</p>
</div> -->

<!-- <div ng-app="" ng-init="first='yuyu';last='tang'">
	<p>名字是：{{last + first}}</p>
</div> -->
<!-- <div ng-app="" ng-init="first='yuyu';last='tang'">
	<p>名字是：<span ng-bind="last+' '+first"></span></p>
</div> -->



 <!-- <div ng-app="" ng-init="names=['wts','ys','ty','yuyu']">
	<p>使用ng-repeat来循环数组</p>
	<ul>
		<li ng-repeat="name in names">
			{{name}}
		</li>
	</ul>
</div>  -->


<!-- <div ng-app="myApp" ng-controller="personCtrl">
名：<input type="text" ng-model="firstName"/>
姓：<input type="text" ng-model="lastName"/>
<br/>
名字是：{{lastName | uppercase}}
</div> -->
<script  src="myjs/personController.js">
/* var app = angular.module('myApp',[]);
app.controller('personCtrl',function($scope){
	$scope.firstName = 'yuyu';
	$scope.lastName = 'tang';
	$scope.fullName = function(){
		return $scope.lastName + " " + $scope.firstName;
	};
}); */
</script>




</body>
</html>