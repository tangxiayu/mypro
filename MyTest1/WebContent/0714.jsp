<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>一些小练习</title>
<style>
*{margin:0;padding:0;}
#imgShow{position:relative;margin:100px;width:550px;height:400px;overflow:hidden;}
#imgUl{position:absolute;list-style:none;left:0;top:0;}
#imgUl li{float:left;}
#imgUl li img{width:550px;height:400px;cursor:pointer;border:0;}

#point{width:120px;height:30px;position:absolute;z-index:2;left:450px;top:370px;font-size:30px;color:#eee;}
#point ul li{float:left;width:20px;height:20px;line-height:30px;cursor:pointer;}
.act{color:red;}
.div1{width:550px;height:30px;background:black;position:absolute;z-index:1;left:0;top:370px;}

.length{width:150px;height:30px;line-height:30px;position:absolute;z-index:2;left:250px;top:370px;background:red;}
.text{width:250px;height:30px;line-height:30px;position:absolute;z-index:2;left:0;top:370px;background:yellow;}

#but{width:200px;height:50px;margin:10px auto;}
</style>
<script src="js/jquery-1.11.2.js"></script>
<script>
//以后写都可以用这个模板：把最外面的div设成relative，其他的都放到这个div里面，
//并且设置为absolute， 则改变最外层div的位置,不会影响到里面的位置！！！这点要牢记哟！
$(function(){
	var i=0;
	var imgInfo = ["图片1","图片2","图片3","图片4","图片5","图片6"];
	var imgWidth = $('#imgUl').find('li').eq(0).find('img').width();
	//alert(imgWidth);
	var len = $('#imgUl').find('li').length;
	$('.length').text("("+1+"/"+len+")");
	$('.text').text(imgInfo[0]);
	$('#point').find('li').each(function(index){
		$(this).click(function(){
			i = index;
			next();
		});

		
	});

	//上一张
	
	$('#but').find('input').eq(0).click(function(){
		//alert(index);
		prev();
	
	});
	//下一张
	$('#but').find('input').eq(1).click(function(){
		//alert(index);
		next();
	
	});

	
	function tab(){
		$('#point').find('li').eq(i).addClass('act').siblings().removeClass('act');
		$('#imgUl').animate({
			left:-imgWidth*i+'px'
		},'fast');
		$('.length').text("("+(i+1)+"/"+len+")");
		$('.text').text(imgInfo[i]);
	}
	function prev(){
		if(i == 0){
			i = len;
		}
		$('#point').find('li').eq(i-1).addClass('act').siblings().removeClass('act');
		$('#imgUl').animate({
			left:-imgWidth*(i-1)+'px'
		},'fast');
		$('.length').text("("+i+"/"+len+")");
		$('.text').text(imgInfo[i-1]);
		i--;
	}
	function next(){
		if(i == len){
			i = 0;
		}
		tab();
		i++;
	}
	var timer = setInterval(next,5000);
	$('#imgUl').mouseover(function(){
		clearInterval(timer);
	}).mouseout(function(){
		timer = setInterval(next,5000);;
	});




	//on
	var a = 0;
	$(document).on('click','#btn1',function(){
		$('.divOn').append('<input type="button" name="test'+a+'" value="按钮'+a+'"/>');
		a++;
	});
	//
	$('.divOn').on('click','input[name^=test]:even',function(){
		alert( '我是有效的on ');
	});
	//
	/*$('input[name^=test]:odd').on('click',function(){
		alert('我是无效on');
	});*/
	//bind只能针对已存在的元素进行事件的设置，故这里无效
	/*$('.divOn').delegate('input[name^=test]:odd','click',function(){
		alert('我是有效delegate'+this.value);
	});*/
	//
	$('input[name^=test]:odd').bind('click',function(){
		alert('aaaaaaaaaaaa');
	});

	//
	$('body').on('focus','#btnText',function(){
		var input = $(this);
		setTimeout(function(){
			input.select();
		});
	});

	var sp = $('#span1');
	var sdiv = $('#spanDiv');
	$(document).on('click','#span1',function(){
		//alert('aaa');
		sdiv.toggle();
		return false;
	});
	$(document).click(function(e){
		var target = e.target;
		if(target.id && target.id === 'spanDiv'){
			return false;
		}else{
			sdiv.hide();
		}
	});
	
	
	
});
function showMsg(obj,e){

	alert(obj.className);
	stopBubble(e);
}
function stopBubble(e){
	if(e && e.stopPropagation){
		e.stopPropagation();
	}else{
		window.event.cancelBubble = true;
	}
}
</script>
</head>
<body>
<div id="imgShow">
	<ul id="imgUl">
		<li><a href="#"><img src="images/1.jpg"></a></li>
		<li><a href="#"><img src="images/2.jpg"></a></li>
		<li><a href="#"><img src="images/3.jpg"></a></li>
		<li><a href="#"><img src="images/4.jpg"></a></li>
		<li><a href="#"><img src="images/5.jpg"></a></li>
		<li><a href="#"><img src="images/6.jpg"></a></li>
		
	</ul>
	
	<div id="point">
		<ul>
			<li class="act"></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<div class="div1"></div>
	<div class="length"></div>
	<div class="text"></div>
</div>
<div id="but">
	<input type="button" value="上一张">
	<input type="button" value="下一张">
</div>

<div class="outSide" onclick="showMsg(this,event);" style="background:red;width:200px;height:100px;">
	<div class="inSide" onclick="showMsg(this,event);"style="background:blue;width:100px;height:50px;"></div>
	<input type="button" value="11111"/>
</div>

<input type="button" id="btn1" value="按钮">
<div class="divOn" style="width:300px;height:250px;background:blue;"></div>

<input type="text" id="btnText">


<span id="span1">点击我显示下面的div</span>
<div id="spanDiv" style="width:200px;height:150px;background:yellow;display:none;"></div>


</body>
</html>