<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>iframe操作</title>
<script>
window.onload = function(){
	var oInput = document.getElementById('input1');
	var oIframe1 = document.getElementById('iframe1');
	oInput.onclick = function(){
		//oIframe1.contentWindow   当前iframe页面的window对象
		//oIframe1.contentWindow.document.getElementById('div1').style.color = 'red';//所有浏览器都支持
		oIframe1.contentDocument.getElementById('div1').style.color = 'red';  //ie6,7不支持
	};
};
</script>
</head>
<body>
<input type="button" id="input1" value="点击改变">
<iframe src="iframe1.jsp" id="iframe1"></iframe>
</body>
</html>