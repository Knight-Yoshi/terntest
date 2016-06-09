/* global screenfull: true;*/
!function ($) {
	'use strict';
	
	/**
	 * Fullscreen module
	 * 
	 * @module foundation.screenfull
	 * @requires foundation.util.triggers
	 */
	// NOTE: this is a quick dirty way of using fullscreen for the Theme Builder,
	// it's only a little reusable
	// TODO: build screenfull right into this module
	class Screenfull {
		constructor (element, options) {
			this.$element = element;
			this.options = $.extend({}, Screenfull.defaults, this.$element.data(), options);
			
			this._init();
			Foundation.registerPlugin(this, 'Screenfull');
		}
		
		_init () {
			this.id = this.$element.attr('id');
			this.screenfull = screenfull;
			this.$button = $('[data-open="' + this.id + '"]').length ? $('[data-open="' + this.id + '"]') : $('[data-toggle="' + this.id + '"]');
			
			if(!screenfull.enabled) {
				return;
			}
			this._events();
		}
		
		// TODO: clean up events when toggle is clicked it should be marked as
		// active some how
		_events () {
			var _this = this;
			
			$(document).on(screenfull.raw.fullscreenchange, function (e) {
				console.log(e)
				if(_this.screenfull.isFullscreen) {
					_this.$element.addClass(_this.options.fsClass);
				}
				else {
					_this.$element.removeClass(_this.options.fsClass);
				}
			});
			
			this.$element.on({
				'open.zf.trigger': this.request.bind(this),
				'close.zf.trigger': (evt, $element) => {
					if(evt.target === _this.$element[0] || $(evt.target).parents('[data-closable]')[0] === $element) {
						return this.exit.apply(this);
					}
				},
				'toggle.zf.trigger': this.toggle.bind(this),
			});
			
			if(this.$button.length) {
				this.$button.on('keydown.zf.screenfull', function (evt) {
					if(evt.which === 13 || evt.which === 32) {
						evt.preventDefault();
						evt.stopPropagation();
						_this.request();
					}
				});
			}
		}
		
		request () {
			console.log(this)
			if(this.screenfull.enabled) {
				this.screenfull.request(this.$element[0])
			}
		}
		
		toggle () {
			console.log(this)
			if(this.screenfull.isFullscreen) {
				this.screenfull.exit();
			}
			else {
				this.request();
			}
			console.log(this)
		}
		
		exit () {
			console.log(this)
			this.screenfull.exit();
		}
		
		destroy () {
			screenfull.exit();
			$(document).off(screenfull.raw.fullscreenchange);
			this.$element.off('.zf');
		}
	}
	
	Screenfull.defaults = {
	                       fsClass: 'fullscreen',
	};
	
	Foundation.plugin(Screenfull, 'Screenfull');
}(jQuery);
