<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>cookie基础</title>

<script>
	//document.cookie = 'user=blue';
	//document.cookie = 'pass=123';
	//alert(document.cookie);
	
	
	//var oDate = new Date();
	//oDate.setDate(oDate.getDate()+14);
	//document.cookie = 'user=blue;expires='+oDate;

	function setCookie(name,value,iDay){
		var date = new Date();
		date.setDate(date.getDate()+iDay);
		document.cookie = name+'='+value+';expires='+date;
	}
	function getCookie(name){
		var arr = document.cookie.split('; ');
		for(var i=0; i<arr.length; i++){
			var arr1 = arr[i].split('=');
			if(arr1[0] == name){
				return arr1[1];
			}
		}
		return '';
	}
	function removeCookie(name){
		setCookie(name,1,-1);
	}
	//setCookie('username','tj',10);
	//setCookie('password1','1dd11',22);
	//setCookie('email','1dd11',2);
	//alert(document.cookie);
	//alert(getCookie('email'));
	//username=tj; password1=1dd11; email=1dd11; JSESSIONID=313C98AB092393DB5DEB7074FFD28E00  中间有空格
	//removeCookie('password1');
	window.onload = function(){
		var oUser = document.getElementsByName('userName')[0];
		var oForm = document.getElementsByTagName('form')[0];
		oForm.onsubmit = function(){
			setCookie('user',oUser.value,14);
		};
		oUser.value = getCookie('user');
	};
	
</script>
</head>
<body>
<form action="http://www.cuit.edu.cn">
用户名：<input type="text" name="userName"><br/>
密码：<input type="password" name="pass"/><br/>
<input type="submit" value="登录">

</form>
</body>
</html>