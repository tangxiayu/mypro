<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>圣杯布局</title>
<style>
.main {
    background:red;
}

.left {
    background:blue;
}

.right {
    background:green;
}

/* core layout css */
/*#bd{ overflow:hidden;height:400px;}*/
#bd{ min-width:800px;}/*为了保证窗口不能缩太小无法展示左右*/
.main {
    float:left;
    width:100%;  /*值得注意 */
    /* margin-bottom:-9999px;
    padding-bottom:9999px;*/
   
   
}

.left {
    float:left;
    width:190px;
    margin-left:-100%;
   /* margin-bottom:-9999px;
    padding-bottom:9999px;*/
    min-height:130px;
}

.right {
    float:left;
    width:230px;
    margin-left:-230px;
   /* margin-bottom:-9999px;
    padding-bottom:9999px;*/
    min-height:130px;

}
.in{margin:0 230px 0 190px; min-height:130px;}

</style>
</head>

<div id="bd">
              <div class="main">
	              <div class="in">
	              
	              test11111111111
	             <p>sssssss</p>
	             <p>sssssss</p>
	             <p>sssssss</p>
	             <p>sssssss</p>
	             <p>sssssss</p>
	             <p>sssssss</p>
	              </div>
              </div>
              <div class="left">test11111111111</div>
              <div class="right">test11111111111</div>
         </div>
</body>

</html>