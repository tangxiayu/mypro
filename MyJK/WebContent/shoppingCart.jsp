<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>html5拖拽购物车</title>
<style>
*{
	margin:0;
	padding:0;
}
img{border:0;}
ul{list-style:none;}
ul li{
	float:left;
	width:200px;
	border:1px solid black;
	margin-left:20px;
}
ul li img{width:200px;}
#div1{
	clear:both;
	margin-left:20px;
	margin-top:10px;
	width:600px;
	height:400px;
	border:1px solid black;
}
#div1 p{
	height:30px;
	border-bottom:1px dotted red;
}
.box1{
	display:block;
	float:left;
	width:200px;
}
.box2{
	display:block;
	float:left;
	width:200px;
}
.box3{
	display:block;
	float:left;
	width:200px;
}
.allMoney{
	float:right;
}
</style>
<script>
var iNum = 0;
var allMoney = null;
window.onload = function(){
	var aLi = document.getElementsByTagName('li');
	var oDiv1 = document.getElementById('div1');
	var obj={};
	
	for(var i=0; i<aLi.length; i++){
		aLi[i].ondragstart = function(e){
			var aP = this.getElementsByTagName('p');
			e.dataTransfer.setData("title",aP[0].innerHTML);
			e.dataTransfer.setData("money",aP[1].innerHTML);
			e.dataTransfer.effectAllowed = 'copy';
			e.dataTransfer.setDragImage(this,0,0);
			
		};
	}
	oDiv1.ondragover = function(e){
		e.preventDefault();
	};
	oDiv1.ondrop = function(e){
		e.preventDefault();
		var sTitle = e.dataTransfer.getData("title");
		var sMoney = e.dataTransfer.getData("money");
		//alert(sMoney);
		if(!obj[sTitle]){
			var oP = document.createElement('p');
			var oSpan = document.createElement('span');
			oSpan.className = 'box1';
			oSpan.innerHTML = '1';
			oP.appendChild(oSpan);
			
			var oSpan = document.createElement('span');
			oSpan.className = 'box2';
			oSpan.innerHTML = sTitle;
			oP.appendChild(oSpan);

			var oSpan = document.createElement('span');
			oSpan.className = 'box3';
			oSpan.innerHTML = sMoney;
			oP.appendChild(oSpan);
			
			this.appendChild(oP);
			obj[sTitle] = 1;
		}else{
			var box1 = document.getElementsByClassName('box1');
			var box2 = document.getElementsByClassName('box2');
			for(var i=0; i<box2.length; i++){
				if(box2[i].innerHTML == sTitle){
					box1[i].innerHTML = parseInt(box1[i].innerHTML)+1;
				}
			}
		}
		if(!allMoney){
			allMoney = document.createElement('div');
			allMoney.className = 'allMoney'; 
		}
		iNum += parseInt(sMoney);
		allMoney.innerHTML = '￥'+iNum;
		oDiv1.appendChild(allMoney);
		
		
	};
	
};
</script>
</head>
<body>
<ul>
	<li draggable="true">
		<img src="images/1.jpg">
		<p>东西一</p>
		<p>25</p>
	</li>
	<li draggable="true">
		<img src="images/2.jpg">
		<p>东西二</p>
		<p>90</p>
	</li>
	<li draggable="true">
		<img src="images/3.jpg">
		<p>东西三</p>
		<p>27</p>
	</li>
	<li draggable="true">
		<img src="images/4.jpg">
		<p>东西四</p>
		<p>55</p>
	</li>
</ul>

<div id="div1">
	<!--<p>
		<span class="box1">1</span>
		<span class="box2">东西一</span>
		<span class="box3">￥25</span>
	</p>
	<p>
		<span class="box1">2</span>
		<span class="box2">东西二</span>
		<span class="box3">￥90</span>
	</p>
	--><!--<div class="allMoney">合计：￥<span class="money">200</span></div>
--></div>
</body>
</html>