<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
window.onload = function(){
	var aA = document.getElementsByTagName('a');
	var oUl = document.getElementById('ul1');
	var aLi = oUl.getElementsByTagName('li');
	 for(var i=0; i<aA.length; i++){
		aA[i].onclick = function(){
			if(mj(this.innerHTML)){
				var oLi = document.createElement('li');
				oLi.innerHTML = this.innerHTML;
				if(!aLi[0]){
					oUl.appendChild(oLi);
				}else{
					oUl.insertBefore(oLi,aLi[0]);
				}
			}else{
				mj2(this.innerHTML);
			}
		};
	 }
	 function mj(text){
			var result = true;
			for(var i=0; i<aLi.length; i++){
				if(aLi[i].innerHTML == text){
					result = false;
				}
			}
			return result;
	}

	function mj2(text){
		for(var i=0; i<aLi.length; i++){
			if(aLi[i].innerHTML == text){
				oUl.insertBefore(aLi[i],aLi[0]);
			}
		}
	}
};


</script>
</head>
<body>
<a href="#">成都</a>
<a href="#">上海</a>
<a href="#">广州</a>
<a href="#">北京</a>
<a href="#">深圳</a>
<a href="#">重庆</a>

<ul id="ul1"></ul>
</body>
</html>