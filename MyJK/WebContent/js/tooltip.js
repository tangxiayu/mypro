
function getDocId(id){
	return document.getElementById(id);
}
var className = "tooltipClass";
function showToolTip(obj,id,html,width,height){
	if(getDocId(id) == null){
		var tooltipBox;
		tooltipBox = document.createElement("div");
		tooltipBox.className = className;
		tooltipBox.id = id;
		tooltipBox.innerHTML = html;
		obj.appendChild(tooltipBox);
		tooltipBox.style.width = width?width+"px":"auto";
		tooltipBox.style.height = height?height+"px":"auto";
		tooltipBox.style.position = "absolute";
		tooltipBox.style.display = "block";
		var left = obj.offsetLeft;
		var top = obj.offsetTop+20;
		tooltipBox.style.left = left+"px";
		tooltipBox.style.top = top+"px";
		/*obj.onmouseout = function(){
			setTimeout(function(){
				getDocId(id).style.display = "none";
			},300);
			
		};*/
		//move.js里自己写的
		//为什么用 addEventListener
		//•可以对同一物件的同一事件绑定多个事件处理程序。
		//•可以通过事件流三个阶段更好地控制何时触发事件处理程序。
		//•工作于 DOM 元素，而不仅是 HTML 元素。

		myAddEvent(obj,"mouseout",function(){
			setTimeout(function(){
				getDocId(id).style.display = "none";
			},300);
		});
		
	}else{
		getDocId(id).style.display = 'block';
	}
	
}

