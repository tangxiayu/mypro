<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>妙味课堂上讲的闭包</title>

<script>
//什么是闭包：函数嵌套函数；内部函数可以引用外部函数的变量和参数；参数和变量不会被垃圾回收机制所收回

/*
function aaa(){
	var a = 5;
}
alert(aaa());    //undefined  垃圾回收机制，函数执行完毕以后，变量a会被垃圾回收机制收回，就不存在了
*/



/*
function aaa(){
	var a = 5;
	function bbb(){
		alert(a);
	}
	return bbb;
}
var c = aaa();  //aaa函数被执行完以后，变量a没有被收回 
c();
*/






//闭包有什么好处：希望一个变量长期驻扎在内存中；避免全局变量的污染；私有成员的存在

//希望一个变量长期驻扎在内存中
/*
var aaa = (function(){
	var a = 1;
	return function(){
		a++;
		alert(a);
	};
})();
aaa();    //2
aaa();   //3
aaa();   //4
*/






//闭包的用处：模块化代码；在循环中直接找到元素的索引

/*
var aaa = (function(){
	var a = 1;
	function bbb(){
		a++;
		alert(a);
	}
	function ccc(){
		a++;
		alert(a);
	}
	return {
		b:bbb,
		c:ccc
	};
})();
aaa.b();  //2
aaa.b();   //3
aaa.c();   //4
//alert(a);  //a is not defined
///alert(bbb);   //bbb is not defined
//alert(ccc);   //ccc is not defined
*/


window.onload = function(){
	var  oUl = document.getElementById('ul1');
	var aLi = oUl.getElementsByTagName('li');

	
	/*for(var i=0; i<aLi.length; i++){
		aLi[i].onclick = function(){
			alert(i);
		};
	}*/    //不论点击哪个li，弹出的都是3，因为在for执行完毕后，click事件还未执行，只有当我们点击li时才执行



	/*for(var i=0; i<aLi.length; i++){
		(function(i){
			aLi[i].onclick = function(){
				alert(i);
			};
		})(i);
	}*/    //点击会依次弹出 0 1 2



	for(var i=0; i<aLi.length; i++){
		aLi[i].onclick = (function(i){
			return function(){
				alert(i);
			};
		})(i);   //和上面的写法四是 等价的
	}





	//闭包需要注意的地方：ie下会引发内存泄露
	var oDiv = document.getElementById('div1');
	var id = oDiv.id;
	oDiv.onclick = function(){
		alert(id);
	};
	oDiv = null;
		
};


</script>
</head>
<body>
<div id="div1" style="width:200px;height:200px;background-color:red;"></div>
	<ul id="ul1">
		<li>111111111111</li>
		<li>222222222222</li>
		<li>333333333333333</li>
	</ul>
</body>
</html>