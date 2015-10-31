$(function(){
	$(window).on("load",function(){
		imgLocation();
		var dataImg = [{"src":"1.jpg","text":"标签1"},{"src":"2.jpg","text":"标签1"},{"src":"3.jpg","text":"标签1"},{"src":"4.jpg","text":"标签1"},{"src":"5.jpg","text":"标签1"}];
		window.onscroll = function(){
			if(scrollside()){
				$.each(dataImg,function(index,value){
					var box = $("<div>").addClass("box").appendTo($("#container"));
					var content = $("<div>").addClass("content").appendTo(box);
					$("<img>").attr("src","images/"+$(value).attr("src")).appendTo(content);
					$("<div>").addClass("text").text(value.text).appendTo(content);
				});
				imgLocation();
			}
			
		};
	});
	
});

function scrollside(){
	var box = $('.box');
	var lastboxHeight = box.last().get(0).offsetTop+Math.floor(box.last().height()/2);
	var documentHeight = $(document).height();//文档的高度
	var scrollHeight = $(window).scrollTop();
	return (lastboxHeight<scrollHeight+documentHeight)?true:false;
	
}

function imgLocation(){
	var box = $('.box');
	var boxWidth = box.eq(0).width();//一个盒子的宽度
	var num = Math.floor($(window).width()/boxWidth);//一行可放多少个盒子
	var boxArr = [];
	box.each(function(index,value){
		var boxHeight = box.eq(index).height();
		if(index<num){
			boxArr[index] = boxHeight;//第一排的高度
		}else{
			var minboxHeight = Math.min.apply(null, boxArr);//第一排box最小高度
			var minboxIndex = $.inArray(minboxHeight,boxArr);//第一排box最小高度的index
			$(value).css({
				"position":"absolute",
				"top":minboxHeight,
				"left":box.eq(minboxIndex).position().left
			});
			//var boxHeight = box.eq(index).height();
			boxArr[minboxIndex] += box.eq(index).height();//重新记录当前图片的高度，应该是之前的加放在他下面的
			
		}
		
	});
	
	
}