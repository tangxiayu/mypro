<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>点击显示，点击其他地方消失</title>
<script src="js/jquery-1.11.2.js"></script>
<script>
$(function(){
	var span1 = $('#span1');
	var div1 = $('#div1');
	$('body').on('click','#span1',function(e){
		var ev = e || window.event;
		div1.slideToggle();
		ev.stopPropagation();
	});
	$(document).on('click',document,function(e){
		var target = e.target;
		if(target.id && target.id === 'div1'){  /// ===判断值和类型是否完全相同
			return false;
		}else{
			div1.hide();
		}
	});
});
</script>
</head>
<body>
<span id="span1">点我啦</span>
<div id="div1" style="width:200px;height:200px;background:red;display:none;"></div>
</body>
</html>