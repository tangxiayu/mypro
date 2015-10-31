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
			var speed = (json[attr]-cur)/1;
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

/**
 * @author 孙宇
 * 
 * @requires jQuery,EasyUI,jQuery cookie plugin
 * 
 * 更换EasyUI主题的方法
 * 
 * @param themeName
 *            主题名称
 */
changeTheme = function(themeName) {
	var $easyuiTheme = $('#easyuiTheme');
	var url = $easyuiTheme.attr('href');
	var href = url.substring(0, url.indexOf('themes')) + 'themes/' + themeName + '/easyui.css';
	$easyuiTheme.attr('href', href);

	var $iframe = $('iframe');
	if ($iframe.length > 0) {
		for ( var i = 0; i < $iframe.length; i++) {
			var ifr = $iframe[i];
			$(ifr).contents().find('#easyuiTheme').attr('href', href);
		}
	}

	$.cookie('easyuiThemeName', themeName, {
		expires : 7
	});
};


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
	},10) 
	} 
	} 
	} 
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
