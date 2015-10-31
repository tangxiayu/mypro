//获取样式
function getStyle(obj,name){
	if(obj.currentStyle){
		return obj.currentStyle[name];
	}
	else{
		return getComputedStyle(obj,false)[name];
	}
}

//获取鼠标的位置
function getPos(ev){
	var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
	var scrollLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
	return{x:ev.clientX+scrollLeft,y:ev.clientY+scrollTop}  //以一个json的形式返回
	
}

//通过className选择元素
function getByClass(oParent,sClass){
	var aResult = [];
	var aEle = oParent.getElementsByTagName('*');
	for(var i=0; i<aEle.length; i++){
		if(aEle[i].className == sClass){
			aResult.push(aEle[i]);
		}
		
	}
	return aResult;   //返回一个数组
	
}

//完美运动框架
function startMove(obj,json,fnEnd){
			
	clearInterval(obj.timer);
	obj.timer=setInterval(function(){
	var bStop=true;  //这一次运动就结束了---所有值都已经到了
	for(var attr in json){///
					
		//1.取当前的值			
		var cur = 0;
			if(attr == 'opacity'){
					cur = Math.round((parseFloat(getStyle(obj,attr)))*100);
			}
			else{
				cur = parseInt(getStyle(obj,attr));
				}
					
			//2.算速度
			var speed = (json[attr]-cur)/6;
			speed = speed>0?Math.ceil(speed):Math.floor(speed);
					
			//3.检测停止
			if(cur != json[attr]){
				bStop = false;
			}
			if(attr == 'opacity'){
				obj.style.filter = 'alpha(opacity:'+(cur+speed)+')';
				obj.style.opacity = (cur+speed)/100;
			}else{
				obj.style[attr] = cur + speed + 'px';
			}
		}///
				
			if(bStop){
				clearInterval(obj.timer);
				if(fnEnd) fnEnd;
			}
		},30);
	}

//事件绑定函数
function myAddEvent(obj,ev,fn){
	if(obj.attachEvent){
		obj.attachEvent('on'+ev,fn);
	}
	else{
		obj.addEventListener(ev,fn,false);	
	}
}

//ajax函数
function ajax(url,fnSucc,fnFaild){
	//1.创建Ajax对象
	if(window.XMLHttpRequest){
		var oAjax = new XMLHttpRequest();
	}
	else{
		var oAjax = new ActiveXObject("Microsoft.XMLHttp");
		
	}
	//2.连接服务器
	oAjax.open('GET',url,true);
	//3.发送请求
	oAjax.send();
	//4.接受返回值
	oAjax.onreadystatechange = function(){
		if(oAjax.readyState == 4){  //读取完成
			if(oAjax.status == 200){  //成功
				fnSucc(oAjax.responseText);
			}
			else{
				if(fnFaild){     //传进来了才会用
					fnFaild(oAjax.status);
				}
			}
		}
	};
}

//悬浮框滚动(兼容兼容ie6 7 8 ff3.5 3.6 chrome 4.1.2 safari )

function scroll(p){ 
	var d = document,dd = d.documentElement,db = d.body,w = window,o = d.getElementById(p.id),ie = /msie/i.test(navigator.userAgent),style,timer; 
	if(o){ 
	//ie8下position:fixed下top left失效 
	o.style.cssText +=";position:"+(p.f&&!ie?'fixed':'absolute')+";"+(p.l==undefined?'right:0;':'left:'+p.l+'px;')+(p.t!=undefined?'top:'+p.t+'px':'bottom:0'); 
	if(p.f&&ie){ 
	o.style.cssText +=';left:expression(body.scrollLeft + '+(p.l==undefined?db.clientWidth-o.offsetWidth:p.l)+' + "px");top:expression(body.scrollTop +'+(p.t==undefined?db.clientHeight-o.offsetHeight:p.t)+'+ "px" );' 
	db.style.cssText +=";background-image:url(about:blank);background-attachment:fixed;" 
	}else{ 
	if(!p.f){ 
	w.onresize = w.onscroll = function(){ 
	clearInterval(timer); 
	timer = setInterval(function(){ 
	var st = db.scrollTop,c; 
	c = st - o.offsetTop + (p.t!=undefined?p.t:(w.innerHeight||db.clientHeight)-o.offsetHeight); 
	if(c!=0){ 
	o.style.top = o.offsetTop + Math.ceil(Math.abs(c)/10)*(c<0?-1:1) + 'px'; 
	}else{ 
	clearInterval(timer); 
	} 
	},10); 
	}; 
	} 
	} 
	} 
	} 

//分页，opt是一个json格式的对象
function page(opt){
	if(!opt.id){return false;}
	var obj = document.getElementById(opt.id);
	var nowNum = opt.nowNum || 1;
	var allNum = opt.allNum || 5;
	var callBack = opt.callBack || function(){};

	if(nowNum >= 4 && allNum >= 6){  //首页出现条件
		var oA = document.createElement('a');
		oA.href='#'+1;
		oA.innerHTML = '首页';
		obj.appendChild(oA);
	}

	if(nowNum >= 2){  //上一页出现条件
		var oA = document.createElement('a');
		oA.href='#'+(nowNum-1);
		oA.innerHTML = '上一页 ';
		obj.appendChild(oA);
	}
	if(allNum <=  5){  //当总页数小于5页时
		for(var i=1; i<=allNum; i++){
			var oA = document.createElement('a');
			
			oA.href = '#'+i;
			if(nowNum == i){
				oA.innerHTML = i;
			}else{
				oA.innerHTML = '['+i+']';
			}
			
			obj.appendChild(oA);
		}
	}else{  //总页数大于5
		for(var i=1; i<=5; i++){
			var oA = document.createElement('a');
			if(nowNum == 1 || nowNum == 2){//当前页数是1或者2
				oA.href = '#'+i;
				if(nowNum == i){
					oA.innerHTML = i;
				}else{
					oA.innerHTML = '['+i+']';
				}
			}else if((allNum-nowNum)==1 || (allNum-nowNum)==0){//针对最后两个页码
				oA.href = '#'+(allNum-5+i);
				if((allNum-nowNum)==0 && i==5){//倒数第一项
					oA.innerHTML = (allNum-5+i);
				}else if((allNum-nowNum)==1 && i==4){//倒数第二项
					oA.innerHTML = (allNum-5+i);
				}else{
					oA.innerHTML = '['+(allNum-5+i)+']';
				}
			}else{
				oA.href = '#'+(nowNum-3+i);
				if(i == 3){
					oA.innerHTML = (nowNum-3+i);
				}
				else{
					oA.innerHTML = '['+(nowNum-3+i)+']';
				}
			}
			
			obj.appendChild(oA);
		}
	}
	if((allNum-nowNum) >= 1){ //出现下一页
		var oA = document.createElement('a');
		oA.href = '#'+(nowNum + 1);
		oA.innerHTML = '下一页 ';
		obj.appendChild(oA);
	}
	if((allNum-nowNum) >= 3 && allNum >= 6){//出现尾页    5 6 7 8 9
		var oA = document.createElement('a');
		oA.href='#'+allNum;
		oA.innerHTML = '尾页 ';
		obj.appendChild(oA);
	}

	callBack(nowNum,allNum);
	var aA = document.getElementsByTagName('a');
	for(var i=0; i<aA.length; i++){
		aA[i].onclick = function(){
			var nowNum = parseInt(this.getAttribute('href').substring(1));
			obj.innerHTML = '';
			page({
				id:opt.id,
				nowNum:nowNum,
				allNum:allNum,
				callBack:callBack
			});
			return false;//阻止默认事件[标题上面没有#8等等了]
		};
	}
	
}
//最新javascript自动按比例显示图片，按比例压缩图片显示
function AutoResizeImage(maxWidth,maxHeight,objImg){
	var img = new Image();
	img.src = objImg.src;
	var hRatio;
	var wRatio;
	var Ratio = 1;
	var w = img.width;
	var h = img.height;
	wRatio = maxWidth / w;
	hRatio = maxHeight / h;
	if (maxWidth ==0 && maxHeight==0){
	Ratio = 1;
	}else if (maxWidth==0){//
	if (hRatio<1) Ratio = hRatio;
	}else if (maxHeight==0){
	if (wRatio<1) Ratio = wRatio;
	}else if (wRatio<1 || hRatio<1){
	Ratio = (wRatio<=hRatio?wRatio:hRatio);
	}
	if (Ratio<1){
	w = w * Ratio;
	h = h * Ratio;
	}
	objImg.height = h;
	objImg.width = w;
	}
