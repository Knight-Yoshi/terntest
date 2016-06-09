/* global CodeMirror: true; */
!function ($) {
	class Codemirror {
		constructor (element, options) {
			this.$element = element;
			this.options = $.extend({}, Codemirror.defaults, this.$element.data(), options);
			
			this._init();
			Foundation.registerPlugin(this, 'Codemirror');
		}
		
		_init () {
			
			this.CM = CodeMirror.fromTextArea(this.$element[0], this.options);
			this.$element.css('height', 0);
			
			this._events();
		}
		
		_events () {
			var self = this;
			this.CM.on('changes', function(editor) {
				editor.save();
				self.$element.trigger('change');
			});
		}
	}
	
	Codemirror.defaults = {
	  mode: 'text/css',
	  tabSize: 2,
	  lineNumbers: true,
	  smartIndent: true,
	  indentAuto: true,
	  autoClearEmptyLines: true,
	  matchBrackets: true,
	  autoCloseBrackets: true,
	};
	
	Foundation.plugin(Codemirror, 'Codemirror');
}(jQuery);