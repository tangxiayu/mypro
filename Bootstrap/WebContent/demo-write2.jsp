<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=width-device,initial-scale=1.0"/>
<title>bootstrap网页制作</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/demo-write2.css"/>
<script src="js/jquery-1.11.2.js"></script>
<script src="bootstrap-3.3.5/dist/js/bootstrap.min.js"></script>
</head>
<body>
<!-- 固定导航栏 -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
   <div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
		                    data-target="#bs-example-navbar-collapse-1">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="#">某管理系统</a>
	</div>
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    	<ul class="nav navbar-nav">
	         <li class="active"><a href="#">首页</a></li>
	         <li class="dropdown">
	            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
	               Java <b class="caret"></b>
	            </a>
	            <ul class="dropdown-menu">
	               <li><a href="#">jmeter</a></li>
	               <li><a href="#">EJB</a></li>
	               <li><a href="#">Jasper Report</a></li>
	               <li class="divider"></li>
	               <li><a href="#">分离的链接</a></li>
	               <li class="divider"></li>
	               <li><a href="#">另一个分离的链接</a></li>
	            </ul>
	         </li>
	         <li><a href="#">帮助</a></li>
      </ul>
      <form class="navbar-form navbar-right" role="search">
         <div class="form-group">
            <input type="text" class="form-control" placeholder="用户名">
            <input type="password" class="form-control" placeholder="密码">
         </div>
         <button type="submit" class="btn btn-default">登录</button>
      </form>
   </div>
</nav>
<!-- 下半部分 -->
<div class="container-fluid">
   <div class="row" >
   	  <!-- 左边 -->
      <div class="col-sm-3 col-md-2 sidebar">
	      	<ul class="nav nav-sidebar">
	      		<li class="active"><a href="#">首页</a></li>
	      	</ul>
	      	<ul class="nav nav-sidebar">
	      		<li><a href="#">信息建立</a></li>
	      		<li><a href="#">信息查询</a></li>
	      		<li><a href="#">信息管理</a></li>
	      	</ul>
	      	<ul class="nav nav-sidebar">
	      		<li><a href="#">设置</a></li>
	      		<li><a href="#">帮助</a></li>
	      	</ul>
      </div>
      <!-- 右边 --><!-- 因为左边的fixed了,故这里要向左偏移 -->
      <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2">  
      		<div class="page-header">
			   <h1>管理控制台</h1>
			</div>
			<p>
				<!-- 标准的按钮 -->
				<button type="button" class="btn btn-default">操作1</button>
				
				<!-- 提供额外的视觉效果，标识一组按钮中的原始动作 -->
				<button type="button" class="btn btn-primary">操作2</button>
				
				<!-- 表示一个成功的或积极的动作 -->
				<button type="button" class="btn btn-success">操作3</button>
				
				<!-- 信息警告消息的上下文按钮 -->
				<button type="button" class="btn btn-info">操作4</button>
				
				<!-- 表示应谨慎采取的动作 -->
				<button type="button" class="btn btn-warning">操作5</button>
				
				<!-- 表示一个危险的或潜在的负面动作 -->
				<button type="button" class="btn btn-danger">操作6</button>
			</p>
			<div class="row">
				<div class="col-xs-12 colcol-sm-8 col-md-6">
					<div class="panel panel-primary">
					   <div class="panel-heading">
					      <h3 class="panel-title">最新提醒</h3>
					   </div>
					   <div class="panel-body">
					      	<div class="alert alert-success">成功！很好地完成了提交。</div>
							<div class="alert alert-info">信息！请注意这个信息。</div>
							<div class="alert alert-warning">警告！请不要提交。</div>
					   </div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-8 col-md-6">
					<div class="panel panel-primary">
					   <div class="panel-heading">
					      <h3 class="panel-title">我的任务</h3>
					   </div>
					   <div class="panel-body">
					      	<div class="alert alert-success">成功！很好地完成了提交。<span class="badge">3</span></div>
							<div class="alert alert-info">信息！请注意这个信息。<span class="badge">3</span></div>
							<div class="alert alert-warning">警告！请不要提交。<span class="badge">3</span></div>
					   </div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-8 col-md-6">
					<div class="panel panel-primary">
					   <div class="panel-heading">
					      <h3 class="panel-title">最新订单</h3>
					   </div>
					   <div class="panel-body">
					      	<table class="table table-condensed table-striped">
							   <thead>
							      <tr>
							         <th>#</th>
							         <th>产品</th>
							         <th>数量</th>
							         <th>总金额</th>
							         <th>业务员</th>
							      </tr>
							   </thead>
							   <tbody>
							      <tr>
							         <td>Tanmay</td>
							         <td>Bangalore</td>
							         <td>560001</td>
							         <td>560001</td>
							         <td>560001</td>
							      </tr>
							      <tr>
							         <td>Sachin</td>
							         <td>Mumbai</td>
							         <td>400003</td>
							         <td>560001</td>
							         <td>560001</td>
							      </tr>
							      <tr>
							         <td>Uma</td>
							         <td>Pune</td>
							         <td>411027</td>
							         <td>560001</td>
							         <td>560001</td>
							      </tr>
							   </tbody>
							</table>
					   </div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-8 col-md-6">
					<div class="panel panel-primary">
					   <div class="panel-heading">
					      <h3 class="panel-title">工程进度</h3>
					   </div>
					   <div class="panel-body">
					      	<h3><span class="label label-primary">水井挖掘工程</span></h3>
					      	<div class="progress">
							   <div class="progress-bar" role="progressbar" aria-valuenow="60" 
							      aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
							      <span class="sr-only">40% 完成</span>
							   </div>
							</div>
							
					   </div>
					</div>
				</div>
				<div class="clearfix visible-lg"></div>
				<div class="col-xs-12 col-sm-8 col-md-6">
					<div class="panel panel-primary">
					   <div class="panel-heading">
					      <h3 class="panel-title">工程进度</h3>
					   </div>
					   <div class="panel-body">
					      	<h3><span class="label label-primary">水井挖掘工程</span></h3>
					      	<div class="progress">
							   <div class="progress-bar" role="progressbar" aria-valuenow="60" 
							      aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
							      <span class="sr-only">40% 完成</span>
							   </div>
							</div>
							<h3><span class="label label-danger">基建工程</span></h3>
					      	<div class="progress">
							   <div class="progress-bar progress-danger" role="progressbar" aria-valuenow="60" 
							      aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
							      <span class="sr-only">40% 完成</span>
							   </div>
							</div>
					   </div>
					</div>
				</div>
			</div>
      </div>
   </div>
</div>

</body>
</html>