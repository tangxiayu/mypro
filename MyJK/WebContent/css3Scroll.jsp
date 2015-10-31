<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>css3 3d 轮播</title>
<style id="css">
*{margin:0;padding:0;}
img{width:400px;height:360px;}
.box{width:800px;margin:50px auto;}
.picList{height:360px;perspective:800px;-webkit-perspective:800px;list-style:none;}
.picList li{width:25px;height:360px;position:relative;float:left;transform-style:preserve-3d;
-webkit-transform-style:preserve-3d;transform:translateZ(-180px) rotateX(0deg);
-webkit-transform:translateZ(-180px) rotateX(0deg);}
.picList li a{position:absolute;left:0;top:0;width:100%;height:100%;}
.picList li a:nth-of-type(1){background:url(images/1.jpg) no-repeat;transform:translateZ(180px);
-webkit-transform:translateZ(180px);}
.picList li a:nth-of-type(2){background:url(images/2.jpg) no-repeat;
transform-origin:top;-webkit-transform-origin:top;transform:translateZ(-180px) rotateX(90deg);
-webkit-transform:translateZ(-180px) rotateX(90deg);}
.picList li a:nth-of-type(3){background:url(images/3.jpg) no-repeat;transform:translateZ(-180px) rotateX(90deg);
-webkit-transform:translateZ(-180px) rotateX(180deg);}
.picList li a:nth-of-type(4){background:url(images/4.jpg) no-repeat;
transform-origin:bottom;-webkit-transform-origin:bottom;transform:translateZ(-180px) rotateX(90deg);
-webkit-transform:translateZ(-180px) rotateX(-90deg);}
.picList span{width:360px;height:360px;position:absolute;top:0;background:#333;}
.picList span:nth-of-type(1){left:0;transform-origin:left;-webkit-transform-origin:left;
transform:translateZ(180px) rotateY(90deg);}
.picList span:nth-of-type(2){right:0;transform-origin:right;-webkit-transform-origin:right;
transform:translateZ(180px) rotateY(-90deg);}
#btns{padding:50px;}
#btns li{list-style:none;width:30px;height:30px;background:#000;color:#fff;font-size:16px;line-height:30px;text-align:center;margin:0 10px;float:left;border-radius:100%;}
#btns .active{}
</style>
<script>
window.onload = function(){
	var oPicList = document.getElementsByClassName('picList')[0];
	var oCss = document.getElementById('css');
	var iLiW = 25;
	var sHtml = "";
	var sStyle="";
	var iZindex = 0;
	var iLength = oPicList.clientWidth / iLiW;
	for(var i=0; i<iLength; i++){
		i>iLength/2?iZindex--:iZindex++;
		sStyle += ".picList li:nth-of-type("+(i+1)+"){z-index:"+iZindex+"}";
		sStyle += ".picList li:nth-of-type("+(i+1)+") a{background-position:-"+i*iLiW+"px 0px}";
		sHtml += '<li><a href="#"></a><a href="#"></a><a href="#"></a><a href="#"></a><span></span><span></span></li>';
	}
	oPicList.innerHTML = sHtml;
	oCss.innerHTML += sStyle;
};
</script>
</head>

<body>
<div class="box">
	<ul class="picList">
		
	</ul>
	<ol id="btns">
		<li>1</li>
		<li>2</li>
		<li>3</li>
		<li>4</li>
	</ol>
</div>
</body>
</html>