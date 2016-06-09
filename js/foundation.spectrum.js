!function ($) {
	class Spectrum {
		constructor (element, options) {
			this.$element = element;
			this._init();
			Foundation.registerPlugin(this, 'Spectrum');
		}
		
		_init () {
			this._events();
		}
		
		_events () {
			
		}
		
	}
	
	Foundation.plugin(Spectrum, 'Spectrum');
}(jQuery);