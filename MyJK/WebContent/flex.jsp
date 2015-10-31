<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>FlexBox弹性盒模型</title>
<style>
* {
  margin: 0;
  padding: 0;
}

.menu {
  list-style: none;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-flow: row wrap;
      -ms-flex-flow: row wrap;
          flex-flow: row wrap;
}

.menu li {
  height: 40px;
  line-height: 40px;
  text-align: center;
  -webkit-box-flex: 1;
  -webkit-flex: 1 1 100%;
      -ms-flex: 1 1 100%;
          flex: 1 1 100%;
}

.menu li:nth-child(1) {
  background: red;
}

.menu li:nth-child(2) {
  background: orange;
}

.menu li:nth-child(3) {
  background: yellow;
}

.menu li:nth-child(4) {
  background: green;
}

.menu li:nth-child(5) {
  background: blue;
}

.menu li:nth-child(6) {
  background: pink;
}

.menu li a {
  color: #fff;
  text-decoration: none;
}

@media (min-width:480px) {
  .menu li {
    -webkit-box-flex: 1;
    -webkit-flex: 1 1 50%;
        -ms-flex: 1 1 50%;
            flex: 1 1 50%;
  }
}

@media (min-width:768px) {
  .menu {
    -webkit-flex-flow: row nowrap;
        -ms-flex-flow: row nowrap;
            flex-flow: row nowrap;
  }
}
</style>
</head>
<body>
	<ul class="menu">
		<li><a href="#">HTML</a></li>
		<li><a href="#">CSS</a></li>
		<li><a href="#">JAVASCRIPT</a></li>
		<li><a href="#">BOOTSTRAP</a></li>
		<li><a href="#">NODEJS</a></li>
		<li><a href="#">ANGULARJS</a></li>
	</ul>
</body>
</html>