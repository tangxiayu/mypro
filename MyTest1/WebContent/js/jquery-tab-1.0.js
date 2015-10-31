;(function($){
	$.fn.tab = function(options){
		var defaults = {
			currentClass:'current',
			tabNav:'.tabNav>li',
			tabContent:'.tabContent>div',
			eventType:'click'
			
		};
		var options = $.extend(defaults,options);
		this.each(function(){
			var _this = $(this);
			_this.on(options.eventType,options.tabNav,function(){
				$(this).addClass(options.currentClass).siblings().removeClass(options.currentClass);
				var index = $(this).index();
				_this.find(options.tabContent).eq(index).show().siblings().hide();
			});
		});
		return this;
	};
	
})(jQuery);