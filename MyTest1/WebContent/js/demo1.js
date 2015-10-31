//jquery类级插件开发

//1.直接给jquery添加全局函数
jQuery.myAlert = function(str){
	alert(str);
};

//2.用$.extend()方法
jQuery.extend({
	myAlert1:function(str){
		alert(str);
	},
	myAlert2:function(){
		
		alert('22222');
	}
	
});

//3.使用命名空间
jQuery.tj = {
	myAlert:function(str){
	alert(str);
}	
	
};