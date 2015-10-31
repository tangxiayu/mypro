<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
window.onload = function(){
	var oInput = document.getElementById('input1');
	oInput.onclick = function(){
		//window.parent 父级                                   window.top 最顶层
		//window.parent.document.getElementById('div1').style.color = 'red';
		window.top.document.getElementById('div1').style.color = 'blue';
		
	};
};
</script>
</head>
<body>
<input type="button" id="input1" value="子级iframe修改父级元素的内容">
</body>
</html>