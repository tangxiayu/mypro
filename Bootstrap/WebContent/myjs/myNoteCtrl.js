app.controller('myNoteCtrl',function($scope){
	$scope.message="";
	$scope.left = function(){
		if(100 - $scope.message.length < 0){
			$scope.message = $scope.message.substring(0,100);
			return 0;
			
		}else{
			return 100 - $scope.message.length;
		}
		
	};
	$scope.save = function(){
		alert("Note saved!");
	};
	$scope.clear = function(){
		$scope.message = "";
	};
});