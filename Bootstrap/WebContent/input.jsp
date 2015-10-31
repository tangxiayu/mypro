<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge"> <!-- 在IE运行最新的渲染模式 -->
        <meta name="viewport" content="width=device-width, initial-scale=1">  <!-- 初始化移动浏览显示 -->
        <title>Bootstrap的HTML标准模板</title>   
        <!-- Bootstrap -->
        <link href="bootstrap-3.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- 如果要使用Bootstrap的js插件，必须先调入jQuery -->
        <script src="http://libs.baidu.com/jquery/1.9.0/jquery.min.js"></script>
        <!-- 包括所有bootstrap的js插件或者可以根据需要使用的js插件调用　-->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body style="padding-bottom:100px;">
	<form class="form-horizontal" role="form">
   <div class="form-group">
      <label for="firstname" class="col-sm-2 control-label">名字</label>
      <div class="col-sm-2">
         <input type="text" class="form-control" id="firstname" 
            placeholder="请输入名字">
      </div>
   </div>
   <div class="form-group">
      <label for="lastname" class="col-sm-2 control-label">姓</label>
      <div class="col-sm-10">
         <input type="text" class="form-control" id="lastname" 
            placeholder="请输入姓">
      </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <div class="checkbox">
            <label>
               <input type="checkbox"> 请记住我
            </label>
         </div>
      </div>
   </div>
   <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
         <button type="submit" class="btn btn-default">登录</button>
      </div>
   </div>
</form>

<img class="img-circle" src="images/1-1.jpg"/><br/>

<div class="btn-group" role="group" aria-label="...">
	<button type="button" class="btn btn-default">按钮一</button>
	<button type="button" class="btn btn-default">按钮2</button>
	<div class="btn-group" role="group">
		<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">按钮3<span class="caret"></span></button>
		<ul class="dropdown-menu">
			<li><a href="#">1111</a></li>
			<li><a href="#">2222</a></li>
			<li><a href="#">3333</a></li>
		</ul>
	</div>
</div>




</body>
</html>