<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> <!-- 在IE运行最新的渲染模式 -->
<meta name="viewport" content="width=device-width, initial-scale=1">  <!-- 初始化移动浏览显示 -->
<title>Bootstrap实际案例</title>
<!-- Bootstrap -->
<link href="bootstrap-3.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- 以下两个插件用于在IE8以及以下版本浏览器支持HTML5元素和媒体查询，如果不需要用可以移除 -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>

	<nav class="navbar navbar-inverse">
		<div class="container">
		<div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">Project name</a>
	    </div>
	 
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="#">HOME<span class="sr-only">(current)</span></a></li>
	        <li><a href="#">ABOUT</a></li>
	        <li class="dropdown"><a href="#">contact</a></li>
	      </ul>
	      
	      
	    </div><!-- /.navbar-collapse -->
	    </div>
	</nav>
	
	<div class="container">
		<div class="row">
			<div class="col-sm-9">
				<p class="pull-right visible-xs">
					<button class="btn-xs btn btn-info">toggle</button>
				</p>
				<div class="jumbotron">
					  <h1>Hello, world!</h1>
					  <p>This is a simple hero unit, a simple jumbotron-style component for calling 
					  extra attention to featured content or information.</p>
				</div>
				<div class="row">
					<div class="col-6 col-sm-6 col-lg-4">
						<h3>css</h3>
						<p>This is is a simple hero unit, a simple jumbotron-style component for calling 
					  extra attention to featured content or information.</p>
					  	<a class="btn btn-default" href="#">view detail</a>
					</div>
					<div class="col-6 col-sm-6 col-lg-4">
						<h3>css</h3>
						<p>This is is a simple hero unit, a simple jumbotron-style component for calling 
					  extra attention to featured content or information.</p>
					  	<a class="btn btn-default" href="#">view detail</a>
					</div>
					<div class="col-6 col-sm-6 col-lg-4">
						<h3>css</h3>
						<p>This is is a simple hero unit, a simple jumbotron-style component for calling 
					  extra attention to featured content or information.</p>
					  	<a class="btn btn-default" href="#">view detail</a>
					</div>
					<div class="col-6 col-sm-6 col-lg-4">
						<h3>css</h3>
						<p>This is is a simple hero unit, a simple jumbotron-style component for calling 
					  extra attention to featured content or information.</p>
					  	<a class="btn btn-default" href="#">view detail</a>
					</div>
					<div class="col-6 col-sm-6 col-lg-4">
						<h3>css</h3>
						<p>This is is a simple hero unit, a simple jumbotron-style component for calling 
					  extra attention to featured content or information.</p>
					  	<a class="btn btn-default" href="#">view detail</a>
					</div>
					<div class="col-6 col-sm-6 col-lg-4">
						<h3>css</h3>
						<p>This is is a simple hero unit, a simple jumbotron-style component for calling 
					  extra attention to featured content or information.</p>
					  	<a class="btn btn-default" href="#">view detail</a>
					</div>
					
				</div>
			</div>
			<div class="col-sm-3">
				<ul class="list-group">
				  <li class="list-group-item">Cras justo odio</li>
				  <li class="list-group-item">Dapibus ac facilisis in</li>
				  <li class="list-group-item">Morbi leo risus</li>
				  <li class="list-group-item">Porta ac consectetur ac</li>
				  <li class="list-group-item">Vestibulum at eros</li>
				</ul>
			</div>
		</div>
	</div>
	
</body>
</html>