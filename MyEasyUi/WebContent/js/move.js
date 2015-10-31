//��ȡ��ʽ
function getStyle(obj,name){
	if(obj.currentStyle){
		return obj.currentStyle[name];
	}
	else{
		return getComputedStyle(obj,false)[name];
	}
}

//��ȡ����λ��
function getPos(ev){
	var scrollTop = document.documentElement.scrollTop || document.body.scrollTop;
	var scrollLeft = document.documentElement.scrollLeft || document.body.scrollLeft;
	return{x:ev.clientX+scrollLeft,y:ev.clientY+scrollTop}  //��һ��json����ʽ����
	
}

//ͨ��classNameѡ��Ԫ��
function getByClass(oParent,sClass){
	var aResult = [];
	var aEle = oParent.getElementsByTagName('*');
	for(var i=0; i<aEle.length; i++){
		if(aEle[i].className == sClass){
			aResult.push(aEle[i]);
		}
		
	}
	return aResult;   //����һ������
	
}

//�����˶����
function startMove(obj,json,fnEnd){
			
	clearInterval(obj.timer);
	obj.timer=setInterval(function(){
	var bStop=true;  //��һ���˶��ͽ�����---����ֵ���Ѿ�����
	for(var attr in json){///
					
		//1.ȡ��ǰ��ֵ			
		var cur = 0;
			if(attr == 'opacity'){
					cur = Math.round((parseFloat(getStyle(obj,attr)))*100);
			}
			else{
				cur = parseInt(getStyle(obj,attr));
				}
					
			//2.���ٶ�
			var speed = (json[attr]-cur)/1;
			speed = speed>0?Math.ceil(speed):Math.floor(speed);
					
			//3.���ֹͣ
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

//�¼��󶨺���
function myAddEvent(obj,ev,fn){
	if(obj.attachEvent){
		obj.attachEvent('on'+ev,fn);
	}
	else{
		obj.addEventListener(ev,fn,false);	
	}
}

//ajax����
function ajax(url,fnSucc,fnFaild){
	//1.����Ajax����
	if(window.XMLHttpRequest){
		var oAjax = new XMLHttpRequest();
	}
	else{
		var oAjax = new ActiveXObject("Microsoft.XMLHttp");
		
	}
	//2.���ӷ�����
	oAjax.open('GET',url,true);
	//3.��������
	oAjax.send();
	//4.���ܷ���ֵ
	oAjax.onreadystatechange = function(){
		if(oAjax.readyState == 4){  //��ȡ���
			if(oAjax.status == 200){  //�ɹ�
				fnSucc(oAjax.responseText);
			}
			else{
				if(fnFaild){     //�������˲Ż���
					fnFaild(oAjax.status);
				}
			}
		}
	};
}

/**
 * @author ����
 * 
 * @requires jQuery,EasyUI,jQuery cookie plugin
 * 
 * ����EasyUI����ķ���
 * 
 * @param themeName
 *            ��������
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


//���������(���ݼ���ie6 7 8 ff3.5 3.6 chrome 4.1.2 safari )
function scroll(p){ 
	var d = document,dd = d.documentElement,db = d.body,w = window,o = d.getElementById(p.id),ie = /msie/i.test(navigator.userAgent),style,timer; 
	if(o){ 
	//ie8��position:fixed��top leftʧЧ 
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

//����javascript�Զ���������ʾͼƬ��������ѹ��ͼƬ��ʾ
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
