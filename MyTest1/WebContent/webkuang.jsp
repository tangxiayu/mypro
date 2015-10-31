<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>仿微博发布框</title>
<script src="js/jquery-1.11.2.js"></script>
<script>
	$(function(){
		var maxLength = 200;
		$('textarea').keyup(function(){
			var len = $(this).val().length;
			$('strong').text(maxLength-len);
			if((maxLength-len)<0){
				//alert('dddd');
				$('strong').text('0');
				var val = $(this).val().substring(0,200);
				$(this).val(val);
			}
		});
	});
</script>
</head>
<body>
	<textarea rows="10" cols="60"></textarea>
	<span>你还可以输入<strong style="color:red;">200</strong>个字</span>
</body>
</html>