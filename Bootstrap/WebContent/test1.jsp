<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> <!-- 在IE运行最新的渲染模式 -->
<meta name="viewport" content="width=device-width, initial-scale=1">  <!-- 初始化移动浏览显示 -->
<title>bootstrap测试</title>
<link rel="stylesheet" type="text/css" href="bootstrap-3.3.5/dist/css/bootstrap.min.css"/>
</head>
<body>
	<h1>我是一级标题<small>（我是副标题）</small></h1>
	<p>我是段落</p>
	<p class="lead">我是强调，我突出显示</p>  <!-- 增大文本字号，加粗文本，而且对行高和margin也做相应的处理 -->
	<p>我是正常文本<small>我是突出样式文本</small></p>
	<p>我是正常文本<em>我是突出样式文本</em></p>
	<p>我是正常文本<cite>我是突出样式文本</cite></p>
	<p>hello,<i>how are you now</i>?</p>
	<p class="text-danger">我是一段危险信息，请用Bootstrap框架中的危险风格显示</p>
	<p class="text-muted">我是一段提示，使用浅灰色（#999）</p>
	<p class="text-primary">我是一段主要，使用蓝色（#428bca）</p>
	<p class="text-success">我是一段成功，使用浅绿色(#3c763d)</p>
	<p class="text-info">我是一段通知信息，使用浅蓝色（#31708f）</p>
	<p class="text-warning">我是一段警告，使用黄色（#8a6d3b）</p>
	<p class="text-right">给我加个类，我就向右对齐。</p>
	<p class="text-center">给我加个类，我就居中对齐。</p>
	<p class="text-justify">hhhhh</p>  <!-- 目前两端对齐在各浏览器下解析各有不同，特别是应用于中文文本的时候。所以项目中慎用。 -->
	<ul class="list-inline">
		<li>java</li>
		<li>c++</li>
		<li>php</li>
		<li>bootstrap</li>
		<li>html</li>
	</ul>
	<dl>
		<dt>java</dt>
		<dd>java是一门及其简单的语言</dd>
		<dt>html</dt>
		<dd>html是基础</dd>
	</dl>
	<dl class="dl-horizontal">
		<dt>java</dt>
		<dd>java是一门及其简单的语言</dd>
		<dt>html</dt>
		<dd>html是基础</dd>
	</dl>
	<div>
		<pre>
			&lt;ul&gt;
			&lt;li&gt;...&lt;li&gt;
		</pre>
	</div>
	<pre class="pre-scrollable">
		<ol>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		    <li>....</li>
		</ol>
	</pre>
	<!--   ☑  .table：基础表格

	  ☑  .table-striped：斑马线表格
	
	  ☑  .table-bordered：带边框的表格
	
	  ☑  .table-hover：鼠标悬停高亮的表格
	
	  ☑  .table-condensed：紧凑型表格
	
	  ☑  .table-responsive：响应式表格 -->
	<div class="table-responsive"><!-- 并且此容器设置类名“.table-responsive”,此容器就具有响应式效果，然后将<table class="table">置于这个容器当中，这样表格也就具有响应式效果。 -->
		<table class="table table-bordered">  <!-- 所以大家在使用Bootstrap表格时，千万注意，你的<table>元素中一定不能缺少类名“table” -->
		<thead>
			<tr>
				<th>11111111</th>
				<th>11111111</th>
				<th>11111111</th>
			</tr>
		</thead>
		<tbody>
			<tr class="active">
				<td>111111</td>
				<td>111111</td>
				<td>111111</td>
			</tr>
			<tr class="success">
				<td>111111</td>
				<td>111111</td>
				<td>111111</td>
			</tr>
			<tr class="info">
				<td>111111</td>
				<td>111111</td>
				<td>111111</td>
			</tr>
		</tbody>
	</table>
	</div>
	<div class="table-responsive">
   <table class="table table-bordered">
   <thead>
     <tr>
       <th>表格标题</th>
       <th>表格标题</th>
       <th>表格标题</th>
        <th>表格标题</th>
         <th>表格标题</th>
     </tr>
   </thead>
   <tbody>
     <tr>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
     </tr>
     <tr>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
     </tr>
     <tr>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
     </tr>
     <tr>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
       <td>表格单元格</td>
     </tr>
   </tbody>
 </table>
</div>


<h4>列向右移动四列的间距</h4>
  <div class="row">
    <div class="col-md-4">.col-md-4</div>
    <div class="col-md-2 col-md-offset-4">列向右移动四列的间距</div>
    <div class="col-md-2">.col-md-3</div>
  </div>
  <div class="row">
    <div class="col-md-4">.col-md-4</div>
    <div class="col-md-4 col-md-offset-4">列向右移动四列的间距</div>
  </div>
</div>


<ul class="nav nav-tabs">
    <li class="active"><a href="#">商品介绍</a></li>
    <li><a href="#">规格参数</a></li>
    <li><a href="#">商品评价</a><span class="badge">25</span></li>
    <li><a href="#">售后保证</a></li>
</ul>


<h1>简单的缩略图</h1>
<div class="container">
    <div class="row">
		<div class="col-xs-6 col-md-3">
			<a href="#" class="thumbnail">
				<img alt="100%x180" src="http://img.mukewang.com/5434eba100014fe906000338.png" style="height: 180px; width: 100%; display: block;" >
			</a>
		</div>
		<div class="col-xs-6 col-md-3">
			<a href="#" class="thumbnail">
				<img alt="100%x180" src="http://img.mukewang.com/5434eba100014fe906000338.png" style="height: 180px; width: 100%; display: block;">
			</a>
		</div>
		<div class="col-xs-6 col-md-3">
			<a href="#" class="thumbnail">
				<img alt="100%x180" src="http://img.mukewang.com/5434eba100014fe906000338.png" style="height: 180px; width: 100%; display: block;">
			</a>
		</div>
		<div class="col-xs-6 col-md-3">
			<a href="#" class="thumbnail">
				<img alt="100%x180" src="http://img.mukewang.com/5434eba100014fe906000338.png" style="height: 180px; width: 100%; display: block;">
			</a>
		</div>
	</div>
</div>
</body>
</html>