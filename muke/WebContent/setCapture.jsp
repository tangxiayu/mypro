<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
window.onload = function(){
	var oDiv = document.getElementById('div1');
	//drag(oDiv);
	var disX = 0;
	var disY = 0;
	oDiv.onmousedown = function(e){
		var e = e || window.event;
		disX = e.clientX - oDiv.offsetLeft;
		disY = e.clientY - oDiv.offsetTop;
		if(oDiv.setCapture){   /*!!!*/  
			oDiv.setCapture();
		}
		document.onmousemove = function(e){
			var e = e || window.event;
			tx = e.clientX - disX;
			ty = e.clientY - disY;
			
			 /* if(!e.pageX)e.pageX=e.clientX;
	         if(!e.pageY)e.pageY=e.clientY;
	         var tx=e.pageX-disX;
	         var ty=e.pageY-disY; */
	          
	         oDiv.style.left=tx+'px';
	         oDiv.style.top=ty+'px';
		};
		document.onmouseup = function(){
			if(oDiv.releaseCapture){  /*!!!*/
				oDiv.releaseCapture();
			}
			document.onmousemove = null;
			document.onmouseup = null;
		};
		return false;
	};
	
};
 /* function drag(dv){
	  dv.onmousedown=function(e){
		  //alert('cc');
	      var d=document;
	      e = e || window.event;
	     
	      var x= e.clientX - dv.offsetLeft;
	      var y= e.clientY - dv.offsetTop;
	     
	      //设置捕获范围
	      if(dv.setCapture){
	          dv.setCapture();
	      }else if(window.captureEvents){
	          window.captureEvents(Event.MOUSEMOVE | Event.MOUSEUP);
	      }
	     

	      dv.onmousemove=function(e){
	    	 //
	    	// alert('vv');
	           e= e || window.event;
	           //if(!e.pageX)e.pageX=e.clientX;
	          // if(!e.pageY)e.pageY=e.clientY;
	          // var tx=e.pageX-x;
	           //var ty=e.pageY-y;
	           var tx = e.clientX - x;
	           var ty = e.clientY - y;
	          
	           dv.style.left=tx;
	           dv.style.top=ty;
	      };

	      dv.onmouseup=function(){
	           //取消捕获范围
	           if(dv.releaseCapture){
	              dv.releaseCapture();
	           }else if(window.captureEvents){
	              window.captureEvents(Event.MOUSEMOVE|Event.MOUSEUP);
	           }
	          
	          //清除事件
	          dv.onmousemove=null;
	          dv.onmouseup=null;
	      };
	      return false;
	   };
	}  */
</script>
</head>
<body style="width:100%;height:1000px;background:green;">
<img id="div1" src="lightboxImages/1-1.jpg"style="width:100px;height:100px;background-color:red;position:absolute;left:0;top:0;"/>
</body>
</html>