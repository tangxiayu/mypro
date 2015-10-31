<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.11.2.js"></script>
<script>
	
	$(function(){
		/*
		var json = [
		    		{"id":"1","tagName":"apple"},
		    		{"id":"2","tagName":"orange"},
		    		{"id":"3","tagName":"banana"},
		    		{"id":"4","tagName":"watermelon"},
		    		{"id":"5","tagName":"pineapple"}
		    	];
		
		$.each(JSON.parse(json), function(idx, obj) {
		    alert(obj.tagName);
		});
		//上面这个each输出的结果分别为：one,two,three,four    
		*/


		
		/*var arr1 = [[1, 4, 3], [4, 6, 6], [7, 20, 9]];     
		 $.each(arr1, function(i, item){     
		    alert(item[0]);     
		 }); 
		//其实arr1为一个二维数组，item相当于取每一个一维数组，   
		 //item[0]相对于取每一个一维数组里的第一个值   
		 //所以上面这个each输出分别为：1   4   7     
		 */



		  
		 var obj = { one:10, two:20, three:30, four:40};     
		 $.each(obj, function(key, val) {     
		     alert(obj[key]);           
		 }); 
		//这个each就有更厉害了，能循环每一个属性     
		 //输出结果为：1   2  3  4     
		//var a = undefined;
		//console.log(typeof(a));
		//console.log(!a);

		
	});
</script>
</head>
<body>
<!-- <input type="text" name="textfield" value="这里是提示内容" 
	onclick="if(value==defaultValue){value='';this.style.color='red';console.log(typeof(value));}" ;
	onBlur="if(value){console.log(value);value=defaultValue;this.style.color='blue';alert(value);}" ;
	style="color:blue;"/> -->
	
	<input type="text" value="用户名" 
	onclick="if(this.value==defaultValue){this.value='';this.style.color='black';}" 
	onblur="if(this.value=='') {this.value=defaultValue;this.style.color='gray';}" 
	
	style="color:gray;"/>

	
</body>
</html>