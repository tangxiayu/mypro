<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>重学jquery基础</title>
<style>
	.sp2{background:blue;}
</style>
<script src="js/jquery-1.11.2.js"></script>
<script>
	
	$(function(){
		//var jq = jQuery.noConflict();
		/*$("input[type=button]").click(function(){
			//表单用val()设置或者获取值
			//alert($("input[type=text]").val());
			alert($("input[type=text]")[0].value);
		});*/

		//可以拿来做简单的搜索
		//$("p:contains('我')").css("color","red");

		//alert($("input:hidden").val());
		
		//表单元素选择器：  :text  :radio  :password  :checkbox...
		//alert($("input:text").val());
		//alert($("input:password").val());

		//DOM筛选、遍历、查找相关方法
		//$("p:eq(0)").css("background","green");
		//$("p").eq(0).css("background","green");
		//$("p:last").css("background","green");
		//("p").last().css("background","green");
		//$("p:not(':first')").css("background","green");
		//$("p").not(":first").css("background","green");
		/*var arr=$("#form1>div").map(function(){
			return $(this).val();
		}).get().join(',');
		alert(typeof arr);
		$("p#p1").html(arr);*/
		//$("#div1>span").slice(1,2).css("background","red");
		//$("#span1").parent().css("background","yellow").end().css("background","blue");

		//关于节点
		//创建节点
		var newElement = $("<div>div标签</div>");
		$("body").append(newElement);
		var newElement1 = "<div>我是用字符串的方法创建的div标签</div>";
		$("body").append(newElement1);
		//插入节点（内部插入）
		var strong = $("<strong>我是被插入到后面的新标签</strong>");//strong成为p的子元素
		$("#p2").append(strong);
		var strong1 = $("<strong>我是被插入到前面的新标签</strong>");
		$("#p2").prepend(strong1);
		var strong2 = $("<em>我是斜体</em>");
		strong2.prependTo("#p2");
		//strong2.appendTo("#p2");
		//插入节点（外部插入）
		strong3 = $("<strong>我是strong3</strong>");
		$("#p2").after(strong3);
		strong4 = $("<strog>我是strong4</strong>");
		//$("#p2").before("#p2");
		$("#p2").before(strong4);
		//单引号双引号的处理，下面四种等效！！！
		//$("#div1").append("<span style=\"background:red;\">111111111111</span>");
		//$("#div1").append('<span style=\'background:red;\'>111111111111</span>');
		//$("#div1").append("<span style='background:red;'>111111111111</span>");
		$("#div1").append('<span style="background:red;">111111111111</span>');
		
		//包裹节点
		$("#div1").wrap("<div style='width:510px;height:300px;border:1px solid blue;'>1111</div>");
		$('p').wrap('<div style="width:800px;height:30px;border:1px solid yellow;"></div>');
		//删除节点
		//$('#div1').remove();
		//$('#div1').empty();

		//复制节点
		/*$(document).on('click','#a1',function(){
			alert('aaaaaaaaaa');
		});*/
		$('#a1').click(function(e){
			alert('bbbbbbbbbbbb');
			var newA = $('#a1').clone(true);
			$('body').append(newA);
			
			e.preventDefault(e);//阻止默认行为
		});
		//替换节点
		//$('#p1').replaceWith(strong3);
		//$('<strog>我是来替换所有p标签的</strong>').replaceAll($('p'));

		//操作dom节点属性 获取添加属性值  删除属性值
		$('p').attr('title','pName');
		$('p').removeAttr('title');

		//样式操作addClass() removeClass()  toggleClass()
		$('#span2').click(function(){
			$('#span2').toggleClass('sp2');
		});
		//alert($('#div1').offset().left);
		//alert($('#div1').offset().top);
		$(document).click(function(e){
			//$('#input1').val(e.pageX+','+e.pageY);
			//$('#input1').val($(window).scrollTop()+','+$(window).scrollLeft());
		});
		//设置和获取节点内的html和文本
		//alert($('#div1').html());
		//alert($('#div1').text());

		//鼠标事件
		//focusin()获得焦点事件，可作用于父级，也可作用于自己【支持冒泡事件】
		/*$('#div2').focusin(function(){
			$(this).find('span').show();
		});*/
		/*$('#div2').find('input').focusin(function(){
			$(this).next('span').show();
		});*/
		//mousemove()
		/*$(document).mousemove(function(e){
			$('#input1').val(e.pageX+','+e.pageY);
		});*/
		//mouseenter() mouseleave()
		$('#div3').mouseenter(function(){
			$(this).css("background","green");
		}).mouseleave(function(){
			$(this).css("background","black");
		});
		$('#div3').find('div').mouseenter(function(){
			$(this).css("background","pink");
		}).mouseleave(function(){
			$(this).css("background","red");
		});

		//表单事件focus()  blur()
		/*$('#div2').find('input').focus(function(){
			alert('表单获得焦点');
		});
		$('#div2').find('input').blur(function(){
			alert('表单失去焦点');
		});*/
		//输入框被点击时自动选择其中的文本
		$('body').on('focus click','#div2>input',function(){
			var input = $(this);
			setTimeout(function(){
				input.select();
			});
		});

		//submit()提交事件
		//表单验证失败，阻止提交
		$('#form2').submit(function(e){
			var userName = $('#userName').val();
			var password = $('#password').val();
			if(userName == '' || password == ''){
				$('#msg').html('<p style="color:red;">用户名或密码不能为空</p>');
				e.preventDefault();
				alert('表单阻止提交了');
			}
		});

		//one()执行一次事件，然后销毁该事件
		$('#p3').one('click',function(){
			alert($(this).text());
		});

		//事件命名空间
		/*$('#div4').bind('click.background',function(){
			$(this).css("background","red");
		});
		$('#div4').bind('click.color',function(){
			$(this).css("background","blue");
		});
		//第三个人只想添加背景红色，不想字体变为蓝色
		$('#div4').unbind('click.color');
		*/

		//hover()事件  是模拟mouseenter() and mouseleave()
		//语法：hover()fn1,fn2)
		/*$('#div4').hover(function(){
			$(this).css("background","red");
		},function(){
			$(this).css("background","");
		});*/
		//自定义动画   "+=  \ -="表示相对值
		$('#div4').click(function(){
			$(this).animate({
				width:'+=200px',
				height:'+=100px'
			},3000,function(){
				$(this).css("background","orange");
			});
		});

		//jquery动画队列
		$('#div5').animate({
			top:'500px'
		},2000).animate({
			left:'700px'
		},2000).animate({
			top:'30px'
		},2000).animate({
			left:'10px'
		},2000);
		$('input[value=stop]').click(function(){
			$('#div5').stop(true,true);
		});
		$('input[value=dequeue]').click(function(){
			$('#div5').dequeue();
		});

		
		//直接装载一个页面进来
		$('#inputAjax').click(function(){
			$.ajax({
				url:'index.jsp',
				type:'get',
				//data:sendData,
				success:function(data){
				//alert(data);
					//$('div').append(data);
					$('#divAjax').html(data);
				}
			});
		});
		
	});
	//:hidden选择器的条件：1.肉眼在网页上看不到 2.这个元素不占有网页上的位置
	function showDiv(){
		$("div:hidden").show();
	}
	//阻止默认行为,兼容老版本的ie
	function preventDefault(e){
		e = e ? e :window.e;
		if(e.preventDefault){
			e.preventDefault();
		}else{
			e.returnValue = false;
		}
	}
</script>
</head>
<body>
	<p>心太小我的心扉</p>
	<p>心太小的心扉</p>
	<p>心太小的心扉</p>
	<input type="password" value="密码"/>
	<input type="text" value="aaaaaaaaaa"/>
	<input/ type="button" value="确定">
	
	<a href="#" ONClick="showDiv();return false;">关于:hidden</a>
	<input type="hidden" value="我可以被:hidden选到">
	<div style="width:200px;height:200px;background:red;display:none;">我可以被:hidden选到</div>
	<div style="width:200px;height:200px;background:red;filter:alpha(opacity:0);opacity:0;">我不可以被:hidden选到</div>
	<div style="width:200px;height:200px;background:red;visibility:hidden;">我不可以被:hidden选到</div>
	
	<form id="form1">
		<input type="text" name="111" value="111"/>
		<input type="text" name="222" value="222"/>
		<input type="text" name="333" value="333"/>
	</form>
	<p id="p1"></p>
	
	<div id="div1" style="width:500px;height:200px;border:1px solid black;">
		<span id="span1">aaaaa</span>
		<span>bbbbbbb</span>
		<span>ccccccc</span>
	</div>
	
	<p id="p2">我是p2</p>
	<br/>
	<a id="a1" href="#">点击复制节点</a>
	<span id="span2">点击我换颜色</span>
	<input type="text" id="input1" style="position:fixed;left:10px;top:30px;">
	
	
	<div id="div2" style="width:500px;height:100px;border:1px solid green;">
		<input type="text" value="abcdefg"/>
		<span style="display:none;">已获得焦点事件</span>
	</div>
	<div id="div3" style="width:100px;height:100px;background:black;padding:10px;">
		<div style="width:50px;height:50px;background:red;"></div>
	</div>
	
	<form id="form2">
		<label for="userName">用户名</label><input type="text" id="userName"/><br/>
		<label for="password">密码</label><input type="text" id="password"/><br/>
		<input type="submit" value="提交"/>
	</form>
	<div id="msg"></div>
	
	<p id="p3">one()事件</p>
	<div id="div4" style="width:200px;height:100px;border:1px solid black;">命名空间</div>
	
	<div style="position:absolute;left:0;top:0;z-index:4;">
		<input type="button" value="stop"/>
		<input type="button" value="dequeue"/>
		<input type="button" value="finish"/>
	</div>
	<div id="div5" style="width:70px;height:70px;background:orange;position:absolute;left:10px;top:30px;">
		jQuery动画队列
	</div>
	
	
	<input id="inputAjax" type="button" value="加载index.jsp"/>
	<div id="divAjax"></div>
</body>
</html>