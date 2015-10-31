<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="js/jquery-1.4.4.min.js"></script>
<script src="js/jquery.HooRay.js"></script>
<script>
$(function(){
	//$('.search').HRinputtip({tipId:'searchtip'});
	$(function(){
		var input = $('.search');
		var div = $('#searchtip');

			input.focusin(function(){
				div.hide();
			}).focusout(function(){
				if(input.val() == ""){
					div.show();
				}
			});
			div.click(function(){
				$(this).hide();
				input.focus();
			});
		
	});
});
</script>
</head>
<body>
<input class="search" type="text" name="search">

<div id="searchtip" style="position:relative;color:#ccc;">
   <div style="position:absolute;top:-18px;left:4px;font-size:12px;">请输入信息</div>
</div>
<br><br/><br/>



<!--  <input type="text" name="textfield" value="这里是提示内容" 
	onclick="if(value==defaultValue){value='';this.style.color='#000'}" 
	onBlur="if(!value){value=defaultValue;this.style.color='#999'}" 
	style="color:#999"/> -->

</body>
</html>