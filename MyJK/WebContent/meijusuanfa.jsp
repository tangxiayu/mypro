<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>枚举算法</title>
<script>
window.onload = function(){
	var aP = document.getElementsByTagName('p');
	var aSpan1 = aP[0].getElementsByTagName('span');
	var aSpan2 = aP[1].getElementsByTagName('span');
	var aSpan3 = aP[2].getElementsByTagName('span');

	for(var i=0; i<=9; i++){
		for(var j=0; i<=9; j++){
			for(var k=0; k<=9; k++){
				for(var m=0; m<=9; m++){
					for(var n=0; n<=9; n++){
						var a = 10000*i + 1000*j + 100*k + 10*m + 1*n;  //得到这个五位数
						var b = i;
						var c = n*111111;

						if(a*b == c){
							aSpan1[0].innerHTML = i;
							aSpan1[1].innerHTML = j;
							aSpan1[2].innerHTML = k;
							aSpan1[3].innerHTML = m;
							aSpan1[4].innerHTML = n;

							aSpan2[0].innerHTML = i;
							 for(var x=0; x<aSpan3.length; x++){
								aSpan3[x].innerHTML = n;
							 }
						
					}
				}
			}
		}
	}
  }
};
</script>
</head>
<body>
<div>
	<p><span style="margin-left:20px;">枚</span> <span>举</span> <span>算</span> <span>法</span> <span>题</span></p>
	<p>*  <span style="position:absolute;left:110px;">枚</span></p>
	<hr/>
	<p><span>题</span> <span>题</span> <span>题</span> <span>题</span> <span>题</span> <span>题</span></p>
</div>
</body>
</html>