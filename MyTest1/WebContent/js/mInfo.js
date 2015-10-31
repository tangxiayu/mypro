$(function(){
	//系统消息图标及数字  
	var a1w = $('.img1').siblings('a').width();//a的宽度
	$('.img1').css("left",a1w);//图片left为a的宽度
	var img1w = $('.img1').width()/2;//图片一半宽度
	var n1w = ($('#letterNum').width())/2;//数字一半宽度
	var n1 = (a1w + img1w-n1w)+'px';//数字左边距  注意：width()方法获取的没有px，css()获取的有
	$('#letterNum').css("left",n1);
	//客户退单消息图标及数字
	var a2w = $('.img2').siblings('a').width();//a的宽度
	$('.img2').css("left",a2w);//图片left为a的宽度
	var img2w = $('.img2').width()/2;//图片一半宽度
	var n2w = ($('#refundNum').width())/2;//数字一半宽度
	var n2 = (a2w + img2w-n2w)+'px';//数字左边距
	$('#refundNum').css("left",n2);
	//客户退单消息图标及数字
	var a3w = $('.img3').siblings('a').width();//a的宽度
	$('.img3').css("left",a3w);//图片left为a的宽度
	var img3w = $('.img3').width()/2;//图片一半宽度
	var n3w = ($('#pushOrderNum').width())/2;//数字一半宽度
	var n3 = (a3w + img3w-n3w)+'px';//数字左边距
	$('#pushOrderNum').css("left",n3);
	
	//图片的top
	var liWidth = $('.list').find('li').height();//任何一个li 的高度
	var img1Height = $('.img1').height();//图片高度
	var img2Height = $('.img2').height();
	var img3Height = $('.img3').height();
	var n1Height = $('#letterNum').height();//数字高度
	var n2Height = $('#refundNum').height();
	var n3Height = $('#pushOrderNum').height();
	var img1Top = (liWidth-img1Height)/2+'px';//图片top
	var img2Top = (liWidth-img2Height)/2+'px';
	var img3Top = (liWidth-img3Height)/2+'px';
	var n1Top = (liWidth-n1Height)/2+'px';//数字top
	var n2Top = (liWidth-n2Height)/2+'px';
	var n3Top = (liWidth-n3Height)/2+'px';
	$('.img1').css("top",img1Top);
	$('.img2').css("top",img2Top);
	$('.img3').css("top",img3Top);
	$('#letterNum').css("top",n1Top);
	$('#refundNum').css("top",n2Top);
	$('#pushOrderNum').css("top",n3Top);
	
	
	//点击开启编辑
	$('#showmodifyIntro-BTN').click(function(){
		var value = $('#textIntro').html();
		$('.showEdit').show();
		$('.showEdit').find('textarea').val(value);
		
	});
	//保存编辑
	$('.showEdit').find('input').click(function(){
		var text = $('.showEdit').find('textarea').val();
		$('#textIntro').text(text);
		$('.showEdit').hide();
		
	});
	//编辑中字体个数限制
	var maxLength = 200;
	$('.showEdit').find('textarea').keyup(function(){
		var len = $(this).val().length;
		$('.showEdit').find('strong').text(maxLength-len);
		if((maxLength-len)<0){
			$('.showEdit').find('strong').text('0');
			var val = $(this).val().substring(0,200);
			$(this).val(val);
		}
	});
	
	//点击修改密码
	$('#showModifyPass-BTN').click(function(){
		$('.modifyPassword').show();
	});
	$('#modifyPass-BTN').click(function(){
		$('.modifyPassword').hide();
	});
	
	//点击导航切换颜色
	$('.list a').click(function(){
		$(this).css('color','#fff').parents('li').siblings('li').find('a').css('color','#B22222');
	});

});

//ajax异步加载
/*function centerSet(url){
	$.ajax({
		url:url,
		type:'post',
		success:function(data){
			$('.inner').html(data);
		}
	});
	
}*/
