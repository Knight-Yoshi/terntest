// TODO: rename this to Toolbox
// TODO: apply to toolbox options tab
!function($) {
	class Toolbox {
		constructor (element, options) {
			this.$element = element;
			this.options = $.extend({}, this.$element.data(), options);
			
			this._init();
			Foundation.registerPlugin(this, 'Toolbox');
		}
		
		_init () {
			this.isMinimized = false;
			this.frame = $('[data-frame]')[0];
			this.$codebox = $('[data-codemirror]');
			this.$arrow = $('[data-toolbox-toggle]');
			this.$template = $('[data-toolbox-template]');
			this.$basetheme = $('[data-toolbox-basetheme]');
			this.$panelState = $('[data-toolbox-panelstate]');
			this.$side = $('[data-side]');
			
			this._events();
		}
		
		_events() {
			var _this = this;
			
			this.$element.on('click', '[data-toolbox-panel]', function (evt) {
				var $target= $(evt.target);
				
				$target.addClass('active').siblings().removeClass('active');
				$('#' + $target.attr('data-toolbox-panel')).addClass('active').siblings().removeClass('active');
			});
			
			this.$codebox.on({
				'change' : function (evt) {
					_this._emitMessage('cssupdate', $(this).val());
				}
			});
			
			this.$arrow.on('click', function (evt) {
				$('#builder').toggleClass('toolbox-minimized');
				var $arrow = $(this.querySelector('span'));
				$arrow.toggleClass('bt-angles-up').toggleClass('bt-angles-down');
				
				if(!_this.isMinimized) {
					_this.isMinimized = true;
				}
				else {
					_this.isMinimized = false;
				}
			});
			
			this.$template.on('change', function (evt) {
				_this.frame.setAttribute('src', '/builder/template/' + this.value);
			});
			
			this.$basetheme.on('change', function (evt) {
				var template = _this.$template.val();
				
				if(template === 'current') {
					return;
				}
				
				_this._emitMessage('basetheme', $(this).val());
			});
			
			this.$panelState.on('change', function (evt) {
				_this._emitMessage('panelstate', {'panel': this.name, 'state': this.value});
			});
			
			this.$side.on('click', function (evt) {
				$('#builder').toggleClass('toolbox-attach-right');
				var $side = $('[data-direction]').toggleClass('bt-angle-right').toggleClass('bt-angle-down');
				
				if(_this.isMinimized) _this.$arrow.trigger('click');
			});
		}
		
		_emitMessage (evt, msg) {
			this.frame.contentWindow.postMessage(JSON.stringify({event: evt, message: msg}), location.origin);
		}
	}
	
	Foundation.plugin(Toolbox, 'Toolbox');
}(jQuery);