<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>em实现倒三角的提示效果</title> 
</head> 
<style> 
 #menu {width:500px;padding:0;margin:40px auto;list-style-type:none;display:<span href="tag.php?name=tab" onclick="tagshow(event)" class="t_tag">tab</span>le;} 
#menu li {width:100px; float:left; line-height:30px} 
#menu a {position:relative;display:block; text-decoration:none; background:#cccccc;width:100px; } 
#menu a span {display:block; font-weight:bold;color:#000; border-style:solid;border-width:0px 2px 2px 0px; border-color:#fff #fff #06a #fff;text-align:center; }
#menu a em {display:none;} 
#menu a:hover {background:#FF0000;}
#menu a:hover span {color:#fff; } 
#menu a:hover em {
	display:block; 
	overflow:hidden; 
	border:6px solid transparent;
	border-top-color: #06a; 
	/*border-color:#06a #fff; 
	border-width:6px 6px 0 6px; */
	position:absolute; /*相对于定位为relative的a标签来说 */
	left:50%; 
	top:100%;
	margin-left:-6px;
}
</style> 
<body> 
   <ul id="menu"> 
      <li><a href="#"><span>M One</span><em></em></a></li> 
      <li><a href="#"><span>M Two</span><em></em></a></li> 
      <li><a href="#"><span>M Three</span><em></em></a></li> 
      <li><a href="#"><span>M Four</span><em></em></a></li> 
    </ul> 
</body> 
</html>
