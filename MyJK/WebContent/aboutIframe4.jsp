<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>改变iframe的大小</title>
<script>
window.onload = function(){
	var aInput = document.getElementsByTagName('input');
	var oIframe = document.getElementById('iframe');
	function changeHeight(){
		setTimeout(function(){  //进行一下延时处理
			oIframe.height = oIframe.contentWindow.document.body.offsetHeight;  
		},100);
	}
	changeHeight();
	aInput[0].onclick = function(){
		oIframe.src = 'iframe4.jsp';
		changeHeight();
	};
	aInput[1].onclick = function(){
		oIframe.src = 'iframe5.jsp';
		changeHeight();
	};
};
</script>
</head>
<body>
<input type="button" value="切换一">
<input type="button" value="切换二">
<iframe src="iframe4.jsp" id="iframe" scrolling="no"></iframe>
</body>
</html>