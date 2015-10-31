<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-easyui-1.4.2/jquery.min.js"></script>
</head>
<body>



     <div id="id1"></div>
     <div id="id2"></div>
     <div id="id3"></div>
     <div id="id4"></div>
     <div id="id5"></div>
     <div id="id6"></div>
   
  <%--同时加载多个ajax的请求  start --%>
    
    <script type="text/javascript">
      $(document).ready(function () {
       $.when($.ajax("SelectAllArticle?type=sk"), 
    	       $.ajax("SelectAllArticle?type=fe"), 
    	       $.ajax("SelectAllArticle?type=re"), 
    	       $.ajax("SelectAllArticle?type=na"), 
    	       $.ajax("SelectAllArticle?type=fc"), 
    	       $.ajax("SelectAllArticle?type=fb")).done(function(a1,a2,a3,a4,a5,a6){
         $('#id1').html(a1[0]);
         $('#id2').html(a2[0]);
         $('#id3').html(a3[0]);
         $('#id4').html(a4[0]);
         $('#id5').html(a5[0]);
         $('#id6').html(a6[0]);
       });
      });
    </script>
  <%--同时加载多个ajax的请求  end --%>
 

</body>
</html>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link id="easyuiTheme" rel="stylesheet" href="js/jquery-easyui-1.4.2/themes/<c:out value="${cookie.easyuiThemeName.value}" default="default"/>/easyui.css" type="text/css"></link>