/* global ZeroClipboard: true;*/
!function ( $ ) {
	class ZeroClip {
		constructor (element, options) {
			this.$element = element;
			this.options = $.extend({}, ZeroClip.defaults, this.$element.data(), options);
			
			this._init();
			Foundation.registerPlugin(this, 'ZeroClip');
		}
		
		_init () {
			this.$element.addClass(this.options.copyClass);
			this.text = this.$element.val();
			this.clipboard = new ZeroClipboard(this.$element);
			
			this._events();
		}
		
		_events () {
			var _this = this;
			
			this.clipboard.on({
				'copy': function (evt) {
					evt.target.value = _this.options.copiedText;
					evt.target.classList.add(_this.options.copiedClass);
				},
				'aftercopy': function (evt) {
					evt.target.blur();
					
					setTimeout(function() {
						evt.target.classList.remove(_this.options.copiedClass);
						evt.target.value = _this.text;
					}, _this.options.revertDelay);
					
				},
				'error': function (evt) {
					if(_this.options.showError) {
						$('#content')
						.prepend(
								$(document.createElement('div'))
								.addClass(_this.options.errorClass)
								.attr('data-closable','')
								.text(_this.options.errorText)
								.append($(_this.options.closeButton))
						);
						
						_this.$element.hide();
					}
				},
			});
			
			
		}
		
		destroy () {
			this.clipboard.destroy();
			this.$element.off('.zf');
		}
	}
	
	ZeroClip.defaults = {
   altText: 'Copy: <kbd>Ctrl</kbd>/<kbd>cmd</kbd> + <kbd>C</kbd>',
   copiedText: 'Copied!',
   copyClass: 'copyable',
   copiedClass: 'copied',
   revertDelay: 1000,
   showError: true,
   errorClass: 'callout alert text-center',
   errorText: 'Flash is disabled or not installed.',
   closeButton: '<button class="close-button" aria-label="Dismiss alert" type="button" data-close><span aria-hidden="true">&times;</span></button>',
	};
	
	Foundation.plugin(ZeroClip, 'ZeroClip');
}( jQuery );
