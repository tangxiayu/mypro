<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>让文本框内的最后一个文字的后面获得焦点</title>
<script src="js/jquery-1.4.4.min.js"></script>
<script>
$(function(){
	$('#btn1').click(function(){
		var t = $('#input1').val();
		$('#input1').val("").focus().val(t);
	});
});
  //var t=$("#"+id).val(); 
 // $("#"+id).val("").focus().val(t); 
</script>
</head>
<body>
<input type="text" id="input1" value="ssssssssssssss"/>
<input type="button" id="btn1" value="编辑【开启焦点模式】"/>
</body>
</html>