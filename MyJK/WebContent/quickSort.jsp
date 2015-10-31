<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>快速排序</title>
<script>
//快速排序步骤：1.找一个基准点 2.建立两个数组，分别存左边和右边的数 3.利用递归进行下次比较
function quickSort(arr){
	if(arr.length <= 1){
		return arr;
	}
	var num = Math.floor(arr.length / 2);
	var numValue = arr.splice(num,1);  //splice() 方法删除从num 处开始的1个元素,返回被删除的项目这里就是[2]
	console.log(numValue);  //[2] [0]  [5]  [4]
	var left = [];
	var right = [];
	for (var i=0; i<arr.length; i++){
		if(arr[i] < numValue){
			left.push(arr[i]);
		}else{
			right.push(arr[i]);
		}
	}
	return quickSort(left).concat(numValue,quickSort(right));
	
}

alert(quickSort([3,1,5,2,4,0]));  //传一个数组进去 

</script>
</head>
<body>

</body>
</html>