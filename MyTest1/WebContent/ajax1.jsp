<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>$.ajax()</title>
<script src="js/jquery-1.11.2.js"></script>
<script type="text/javascript">
	$(function(){
		$('input[type=button]').click(function(){
			/*var url = 'process.php';
			var sendData = {'username':$('#username').val()};
			alert(sendData.username);
			$.ajax({
				url:url,
				type:'post',
				data:sendData,
				success:function(data){
				//alert(data);
					if(data == 'true'){
						$('div').html('用户名可以使用');
					}else{
						$('div').html('用户名不可以是admin');
					}
				}
			});*/

			
			//直接装载一个页面进来
			$.ajax({
				url:'index.jsp',
				type:'get',
				//data:sendData,
				success:function(data){
				//alert(data);
					//$('div').append(data);
					$('div').html(data);
				}
			});
			
		});
	});
</script>
</head>
<body>
	<input type="text" name="username" id="username"/>
	<input type="button" value="检验"/>
	<div style="color:red;"></div>
</body>
</html>