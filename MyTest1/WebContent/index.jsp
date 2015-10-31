<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
*{margin:0;padding:0;}
	
	#pic{width:650px;height:370px;margin:100px;background:black;position:relative;overflow:hidden;}
	#pic ul{list-style:none;position:absolute;left:0;top:0;}
	#pic ul li{float:left;width:650px;height:370px;}
	#pic ul li img{width:650px;height:370px;}
	#text{width:650px;height:20px;color:white;position:absolute;z-index:1;left:100px;top:472px;
	background:black;filter:alpha(opacity:70);opacity:0.7;}
	#length{width:150px;height:20px;color:white;position:absolute;z-index:1;left:500px;top:472px;}
	#point{width:150px;height:20px;line-height:20px;position:absolute;z-index:2;left:600px;top:472px;color:white;font-size:30px;}
	#point ul li{float:left;width:30px;height:20px;}
	.ac{color:red;}
	
	#tbt{width:650px;height:350px;left:100px;top:120px;position:absolute;z-index:2;}
	#prev{position:absolute;left:0;top:0;width:325px;height:350px;}
	#next{position:absolute;left:325px;top:0;width:325px;height:350px;}
	#previmg{display:none;position:absolute;z-index:3;left:110px;top:300px;width:60px;height:60px;
	background:url(images/prev.gif) no-repeat;cursor:pointer;}
	#nextimg{display:none;position:absolute;z-index:3;left:680px;top:300px;width:60px;height:60px;
	background:url(images/next.gif) no-repeat;cursor:pointer;}
	
	.picArray{float:left;width:200px;height:175px;overflow:hidden;}
	.picArrayFilter{filter:alpha(opacity:50);opacity:0.5;}
	
	.wrapper{margin-top:20px;width:400px;height:250px;background:red;}
	
	.column1{margin-left:10px;display:inline-block;zoom:1;*display:inline;float:none;width:100px;vertical-align:top;height:150px;background:blue; }
	
	.column2{ display:inline-block;zoom:1;*display:inline;float:none;width:100px;vertical-align:top;height:100px;background:blue; }
	
	.my-icons-sprite,  
	.my-icons-delete,  
	.my-icons-edit,  
	.my-icons-new,  
	.my-icons-save   { background:url("images/1.jpg") no-repeat; width:50px;height:50px;}  
	.my-icons-delete { background-position: 0 0; }  
	.my-icons-edit   { background-position: 0 -32px; }  
	.my-icons-new    { background-position: 0 -64px; }  
	.my-icons-save   { background-position: 0 -96px; } 

	.img1{max-width:600px;max-height:350px;}
	
	
	
	.a1:after {
	  content: attr(href);
	}	

	.blockDiv{display:block;background:red;height:100px;}
	.inlineDiv{display:inline;height:200px;background:white;}

	.bb{width:200px;height:32px;
	background-color:red;/*所有识别*/
	background-color:orange\9; /*IE6、7、8识别*/ 
	+background-color:yellow;/*IE6、7识别*/ 
	_background-color:green;/*IE6识别*/} 
 @media screen and (-webkit-min-device-pixel-ratio:0){.bb{background-color:red;}}{} /* Safari(Chrome) 有效 */
@media all and (min-width: 0px){ .bb{background-color:red;/*opera and Safari(Chrome) and firefox*/ background-color:blue\0;}/* 仅 Opera 有效 */  }{} 

 .bb, x:-moz-any-link, x:default{background-color:blue;/*IE7、Firefox3.5及以下 识别 */} 
 @-moz-document url-prefix(){.bb{background-color:blue;/*仅 Firefox 识别 */}} 
 * +html .bb{background-color:yellow;}/* 仅IE7 识别 */
  
  
  
	.tips{
		  position: relative;
		  background: #eaeaea;
		  cursor: help;
		  display: inline-block;
		  text-decoration: none;
		  color: #222;
		  outline: none;
		  left:200px;
		  top:100px;
		}

		.tips span	{
		  visibility: hidden;
		  position: absolute;
		  bottom: 30px;
		  left: 50%;
		  z-index: 999;
		  width: 230px;
		  margin-left: -127px;
		  padding: 10px;
		  border: 2px solid #ccc;
		  opacity: 0.9;
		  background-color: red;
		  background-image: -webkit-linear-gradient(rgba(139,0,0,.5), rgba(139,0,0,0));/*safari*/
		  background-image: -moz-linear-gradient(rgba(255,255,255,.5), rgba(255,255,255,0));/*ff3.6 and ff3.6+*/
		  background-image: -ms-linear-gradient(rgba(255,255,255,.5), rgba(255,255,255,0));/*ie9 and ie10*/
		  background-image: -o-linear-gradient(rgba(255,255,255,.5), rgba(255,255,255,0));/*opara11.1-12.0*/
		  background-image: linear-gradient(rgba(255,255,255,.5), rgba(255,255,255,0));/*颜色节点线性渐变 */
		  -moz-border-radius: 20px;
		  border-radius: 20px;/*css3圆角  */
		  -moz-box-shadow: 0 1px 2px rgba(0,0,0,.4), 0 1px 0 rgba(255,255,255,.5) inset;/*css3盒阴影 ff3.6 and ff3.6+*/
		  -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.4), 0 1px 0 rgba(255,255,255,.5) inset;/*css3盒阴影 safari*/
		  box-shadow: 0 1px 2px rgba(0,0,0,.4), 0 1px 0 rgba(255,255,255,.5) inset;/*css3盒阴影*/
		  text-shadow: 0 5px 0 rgba(255,255,255,0.5);/*css3文本阴影，ie9及以下版本不支持 */
		}

		.tips:hover{
		  border:0; /* IE6 fix */
		}

		.tips:hover span{
		  visibility: visible;
		}

		.tips span:before,
		.tips span:after	{
		  content: "";
		  position: absolute;
		  z-index: 1000;
		  bottom: -7px;
		  left: 50%;
		  margin-left: -8px;
		  border-top: 8px solid blue;
		  border-left: 8px solid transparent;
		  border-right: 8px solid transparent;
		  border-bottom: 0;
		}

		.tips span:before{
		  border-top-color: green;
		  bottom: -9px;
		}
	
	
</style>
<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script>
	$(function(){

		//$("p:first").css("background","red");
		//$("p:not('.aa')").css("background","red");
		//alert($("p:hidden()"));
		
		//图片切换
		var imagesInfo = ["第一张","第二章","第三章","第四章"];
		var len = $("div#point").find("li").length;
		//alert(len);
		
		//初始化
		$("div#length").html("("+1+"/"+len+")");
		$("div #text").html(imagesInfo[0]);
		var i = 0;
		$("div#point").find("li").each(function(index){
			$(this).click(function(){
				i = index;
				tab();
			});
		});
		
		function tab(){
			$("div #text").html(imagesInfo[i]); //每张图片的相关文字
			$("div#length").html("("+(1+i)+"/"+len+")"); 
			//alert(index);
			$("div#point").find("li:eq("+i+")").addClass("ac").siblings("li").removeClass("ac");
			$("div#pic ul").animate({
				left:-650*i
			},"fast");
		}
		function next(){
			i++;
			if(i == len){
				i = 0;
			}
			tab();
		}
		var timer = setInterval(next,5000);
		$("div#tbt").mouseover(function(){
			clearInterval(timer);
		}).mouseout(function(){
			timer = setInterval(next,5000);
		});
		
		$("div#prev").mouseover(function(){
			$("div#previmg").show();
		
			$("div#previmg").mouseover(function(){
				$(this).show();
			});
		}).mouseout(function(){
			$("div#previmg").hide();
		});
		$("div#next").mouseover(function(){
			$("div#nextimg").show();
			$("div#nextimg").mouseover(function(){
				$(this).show();
			});
		}).mouseout(function(){
			$("div#nextimg").hide();
		});

		
		var now = 0;
		
		$("div#previmg").click(function(){
			
			if(now == 0){
				now = len;
			}
			
			$("div#pic ul").animate({
				left:-(now-1)*650
			},"fast");
			now--;
			//alert(now);
			$("div #text").html(imagesInfo[now]); //每张图片的相关文字
			$("div#length").html("("+(1+now)+"/"+len+")"); 
			//alert(index);
			$("div#point").find("li:eq("+now+")").addClass("ac").siblings("li").removeClass("ac");
			
		});
		

		$("div#nextimg").click(function(){
			
			if(now == len){
				now = 0;
			}
			$("div#pic ul").animate({
				left:-now*650
			},"fast");
			now++;
			$("div #text").html(imagesInfo[now-1]); //每张图片的相关文字
			$("div#length").html("("+now+"/"+len+")"); 
			//alert(index);
			$("div#point").find("li:eq("+(now-1)+")").addClass("ac").siblings("li").removeClass("ac");
			
		});








		//图片集
		$("div.picArray img").each(function(index){
			//console.info($(this));
			$(this).mouseover(function(){
				//alert("aaaaaaaaaa");
				$(this).addClass("picArrayFilter");
			}).mouseout(function(){
				$(this).removeClass("picArrayFilter");
			});
		});
//jQuery鼠标悬停图片由中心点逐渐放大效果
//原理：当鼠标悬停后图片的高度、宽度各自增加20像素大小，然后用相对定位绝对定位，相当于将图片控制向外扩散10px大小
//然后使用jQuery的animate属性实现动画效果即可
//鼠标悬停后图片变大，离开后图片恢复至原来像素大小

		//鼠标放上去，图片拉近
		$("div#change img").mouseover(function(){
			$(this).animate({
				width:'360px',
				height:'310px',
				left:'-15px',
				top:'-15px'
				
			});
		}).mouseout(function(){
			$(this).animate({
				width:'330px',
				height:'280px',
				left:'0px',
				top:'0px'
			});
		});


		//点击显示隐藏框,点击其他地方隐藏div
		$d = $("#divR");
        $("#sp").on({
            "click": function(){
                $d.toggle();
                return false;
            }
        });
        $(document).on({
            "click": function(e){
                var src = e.target;
                if(src.id && src.id === "divR"){
                    return false;
                }else{
                    $d.hide();
                }
            }
        });


		//!!!如果项目中引用jquery版本为低版本，推荐用delegate(),高版本jquery可以使用on()来代替
		//bind()函数只能针对已经存在的元素进行事件的设置；但是live(),on(),delegate()均支持未来新添加元素的事件设置
        var a = 0,
        $_div = $('#test');
        $(document).on('click','input[name=addbtn]', function () {
            $_div.append('<input type="button" name="test' + a + '" value="按钮' + a + '"/>');
            a++;
        });

        //偶数项点击事件$(selector).on(event,childselector,data,function)
        $_div.on('click', 'input[name^=test]:even', function () {   
            alert('我是有效的on方法,你能看见我吗：' + this.value);
        });

        //用on绑定动态生成的元素时，不能直接对该对象进行操作
       	/*$('input[name^=test]:even').on('click', function () {   
            alert('我是无效的on方法,你不能看见我');
        });*/
        
        //奇数项绑定的点击事件  发现点击无效，而是用live方法却能够支持【这里jQuery版本是1.11而live要1.9之前的】
       /* $('input[name^=test]:odd').live('click', function () {
            alert('我是live方法,你能看见我吗：' + this.value);
        });*/
        
        //bind()函数只能针对已经存在的元素进行事件的设置；故这里无效
        /* $('input[name^=test]:odd').bind('click', function () {
        alert('我是live方法,你能看见我吗：' + this.value);
  	    });*/
        
        //$(selector).delegate(childSelector,event,data,function)
        $_div.delegate('input[name^=test]:odd','click', function () {
            alert('我是delegate方法,你能看见我吗：' + this.value);
        });
        //
       
		//输入框被点击时自动选择其中的文本
        $("body").on('focus', "input#inp", function () {
            var input = $(this);
            setTimeout(function () {
                input.select();
            });
        });


       // <!-- 测试bind绑定事件方法 -->
        $("#bindbtn").bind('click',function(){
			alert('i can use bind');
        });
			
        
		//load()
        $('#bt1').click(function(){
			//$('div').load('text1.txt?data='+Math.random());
			//$('div').load('tableCZ.jsp?data='+Math.random());
			//$('div').load('tabs.jsp?data='+Math.random());
			//$('div').load('demo4.jsp?data='+Math.random()+' .tabContent');
			$('#divLoad').load('Myjq.jsp?data='+Math.random());
		});
		
	});

	 function outSideWork()
	 {
	     alert('My name is outSide,I was working...');
	 }

	function inSideWork()
	 {
	     alert('My name is inSide,I was working...');
	 }
</script>
</head>
<body>
	<div style="width:100%;height:6000px;">ff
		
	<a name="top"></a>
	
		<!-- 图片轮换 -->
		
		<div id="pic">
			<ul>
				<li><a href="#"><img src="images/news1.JPG"/></a></li>
				<li><a href="#"><img src="images/news2.JPG"/></a></li>
				<li><a href="#"><img src="images/news3.JPG"/></a></li>
				<li><a href="#"><img src="images/news4.png"/></a></li>
			</ul>
		</div>
		<!-- 图片上的文字 -->
		<div id="text">fff</div>
		<div id="length"></div>
		<!-- 图片上的点点 -->
		<div id="point">
			<ul>
				<li class="ac"></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
		<!-- 左右按钮 -->
		<div id="tbt">
			<div id="prev"></div>
			<div id="next"></div>
		</div>
		<div id="previmg"></div>
		<div id="nextimg"></div>
		
		
		<!-- 图片集 -->
		<div style="width:600px;height:350px;background:pink;margin-left:100px;">
			<div class="picArray"><img src="images/1.jpg" width="200px" height="175px"/></div>
			<div class="picArray" style="width:150px;"><img src="images/2.jpg" width="150px" height="175px"/></div>
			<div class="picArray" style="width:250px;"><img src="images/3.jpg" width="250px" height="175px"/></div>
			<div class="picArray" style="width:250px;"><img src="images/4.jpg" width="250px" height="175px"/></div>
			<div class="picArray" style="width:150px;"><img src="images/5.jpg" width="150px" height="175px"/></div>
			<div class="picArray"><img src="images/6.jpg" width="200px" height="175px"/></div>
		</div>
		
		<!-- 图片由中心变大 -->
		<div id="change" style="width:320px;height:280px;margin:50px;background:red;overflow:hidden;position:relative;">
			<img style="position:absolute;left:0;top:0;" src="images/2.jpg" width="320px" height="280px"/>
		</div>
		
		
		<!-- 点击显示，点击其他地方隐藏 -->
		<div style="margin-left:200px;">
			<span id="sp" style="cursor:pointer;">点我</span><br/><br/>
			<div id="divR" style="display:none;width:100px;height:50px;background:red;"></div>
		</div>
		
		<!-- jquery使用on绑定动态生成的元素时，不能直接用该对象操作，而是选择其非动态生成的父节点后再找到本身，把本身作为一个参数传进去 -->
		<input type="button" name="addbtn" value="按钮添加" />
		<div id="test" style="width:300px;height:200px;background:pink;"></div>
		
		
		<!-- 冒泡事件 -->
		<div onClick="outSideWork()" id="outSide" style="width:100px; height:100px; background:#000; padding:50px">
			<div onClick="inSideWork()" id="inSide" style="width:100px; height:100px; background:#CCC"></div>
		</div>
		
		
		<!-- 输入框被点击时自动选择其中的文本 -->
		<input id="inp" type="text" title="请输入文字"/>
		
		
		<div style="width:200px;height:500px;margin-top:100px;background:blue;">
			<!-- 锚属性 -->
			<a href="#top">back to top</a><br/>
			<!-- 图像与文本的位置关系 -->
			图像<img src="images/prev.gif" align="middle"/>在文本中<br/>
			图像<img src="images/prev.gif" align="bottom"/>在文本中<br/>
			图像<img src="images/prev.gif" align="top"/>在文本中<br/>
			图像<img src="images/prev.gif" align="left"/>在文本中<br/>
			图像<img src="images/prev.gif" align="right"/>在文本中<br/>
		</div>
		<a href="http://localhost:8080/MyTest1.index.jsp" class="a1">我是伪元素的用法</a>
		
		
		
		<!-- float或inline-block  -->
		<!-- 让ie,ff,chromeopera,safari都支持inline-block 的兼容写法：详情见css-->
		<div class="wrapper">  
	   		 <div class="column1">
	   		 test</div><div class="column2">
	   		 test</div><div class="column1">test</div> 	 
		</div>  
		
		
		<!--  只要点选 Name 或 Email 会发现浏览器光标自然会移动到 text input 字段上，设置方式很简单，
		只要将 label 的 for attribute 设置为 input id 即可： -->
		<label for="username">Name:</label><input type="text" id="username" />  
		<label for="email">Email:</label><input type="text" id="email" />  
		
		<!-- css sprite技术  background：position抠图 -->
		<div class="my-icons-save"></div>
		
		
		<!-- max\min-width/height  -->
		<img src="images/1.jpg" class="img1"/>
		
		
		
		
		
		
		<!-- block \inline -->
		<div style="width:300px;height:200px;background:blue;;">
			<div class="blockDiv"></div>
		</div>
		<div style="width:300px;height:200px;background:pink;;">
			<div class="inlineDiv"><strong>MBA</strong></div>
		</div>
		
		
		<!-- 一个用于展示的class为bb的div标签*/<div class ="bb"></div> -->
		 
		 
		 <!-- hack -->
		<div class="bb">hack</div> 
		
		
		
		<!-- tip提示 首先我们需要把需要把一段描述性的内容放在一个<span>，这部分描述性内
		容就是我们所说的tips的内容，最主要的是在tips父元素中定义“relative”而其自身使用
		“absolute”定位。在下面你会看到一个简单而且适当的tips结构，此文我们就要使用是的
		CSS3的属性来制作一个cool的tips。比如说tips下面的三角形，我们就是使用":before"
		和":after"来制作的-->
		<a href="#" class="tips">
			放上来有提示哟！
			<span>这就是使用css3制作tips</span>
		</a>
		
		<p>1111111111111111</p>
		<p style="display:none;">1222222</p>
		<p class="aa">1111111111111111</p>
		<p>1111111111111111</p>
		
		
		<!-- 测试bind绑定事件方法 -->
		<input id="bindbtn" type="button" value="点击我试试">
		
		<input id="bt1" type="button" value="load加载"/>
		<div id="divLoad"></div>
	</div>
</body>
</html>