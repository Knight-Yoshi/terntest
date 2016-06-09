!function ($) {
	class Colorize {
		constructor (element, options) {
			this.$element = element;
			this.options = $.extend({}, Colorize.defaults, this.$element.data(), options);
			
			this._init();
			Foundation.registerPlugin(this, 'Colorize');
		}
		
		_init () {
			this.id = this.$element.attr('id');
			this.text = [];
			this.$color = $.xcolor;
			this.$picker = $('[data-colorize-picker="' + this.id + '"]');
			this.$output = $('[data-colorize-output="' + this.id + '"]');
			
			this.$spectrum = this.$picker.spectrum({
		    color: '000',
			});
			
			this._events();
		}
		
		_events () {
			this.$element.on({
				'change.zf.colorize': this._updateOutput.bind(this),
			});
			
			this.$picker.on({
				'dragstop.spectrum' : function (evt, color) {
					$(this).prop('value', color.toHexString());
					$(this).trigger('change.zf.colorize');
				},
				'change.zf.colorize': this._updateOutput.bind(this),
			});
		}
		
		_updateOutput () {
			var text = this.$element.val();
			
			
			var colorStart = this.$picker[0].value;
			var colorEnd = this.$picker[1].value;
			
			console.log(this.$picker[0])
			
			for(var i = 0, len = text.length; i < len; i++) {
				var hex = this.$color.gradientlevel(colorStart, colorEnd, i, len).getHex();
				this.text.push('[color=' + hex + ']' + text[i] + '[/color]');
			}
			
			this.$output.val(this.text.join(''));
		}
	}
	
	Foundation.plugin(Colorize, 'Colorize');
}(jQuery);