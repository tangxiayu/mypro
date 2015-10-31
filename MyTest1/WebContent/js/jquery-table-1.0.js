;(function($){
	$.fn.table = function(options){
		var defaults = {
			evenRowClass:'evenRow',
			oddRowClass:'oddRow',
			currentRowClass:'currentRow',
			eventType1:'mouseover',
			eventType2:'mouseout'
		};
		var options = $.extend(defaults,options);
		this.each(function(){
			var _this = $(this);
			_this.find('tr:even').addClass(options.evenRowClass);
			_this.find('tr:odd').addClass(options.oddRowClass);
			_this.find('tr').bind(options.eventType1,function(){
				$(this).addClass(options.currentRowClass);
			});
			_this.find('tr').bind(options.eventType2,function(){
				$(this).removeClass(options.currentRowClass);
			});
		});
		return this;
	};
})(jQuery);