var app = angular.module('myApp',[]);
app.controller('personCtrl',function($scope){
	$scope.firstName = 'yuyu';
	$scope.lastName = 'tang';
	$scope.fullName = function(){
		return $scope.lastName + " " + $scope.firstName;
	};
});