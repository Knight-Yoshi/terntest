!function ($) {
	class Sortable {
		constructor (element, options) {
			this.$element = element;
			this.options =  $.extend({}, Sortable.defaults, this.$element.data(), options);
			
			this._init();
			Foundation.registerPlugin(this, 'Sourtable');
		}
		
		_init () {
			this._events();
		}
		
		_events () {
			this.$element.sortable();
		}
	}
	
	Sortable.defaults = {
	  onMove: function (evt) {
	  	console.log(evt);
	  } ,                  
	};
	
	Foundation.plugin(Sortable, 'Sortable');
}(jQuery);