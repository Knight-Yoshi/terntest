!function ($) {
	class BuilderPreview {
		constructor (element, options) {
			this.$element = element;
			this.options = $.extend({}, this.$element.data(), options);
			
			this._init();
			Foundation.registerPlugin(this, 'BuilderPreview');
		}
		
		_init () {
			this.parent = window.parent;
			this.parentDoc = this.parent.document;
			this.$basetheme = $(document.querySelectorAll('link')[2]);
			this.$body = $('body');
			this.$style = $('style');
			
			if(this.$body.attr('id') === 'extendedProfileBody') {
				this.$basetheme.prop('href', '/assets/css/builder/' + $('[data-toolbox-basetheme]', this.parentDoc).val() + '_theme.css');
			}
			
			this.$style.html(this.parentDoc.querySelector('[data-codemirror]').value);
			
			this._events();
		}
		
		_events () {
			var self = this;
			
			// have to use vanilla JS for this as jQuery overwrites the 'data' event property
			window.addEventListener('message', function (evt) {
				var data = JSON.parse(evt.data);
//				if(evt.origin !== 'http://gaiatools.com' || evt.orgin !== 'http://localhost') return;
				
				var event = {
         type: data.event,
         message: data.message,
				};
				
				self.$element.trigger(event);
			});
			
			
			// FIXME: panel state change is broken
			this.$element.on({
				'cssupdate': function (evt) {
					var css = evt.message;
					self.$style.html(css);
				},
				'basetheme': function (evt) {
					var theme = evt.message;
					var regex = /(.*\/builder\/).*(\.css)/;
					var curhref = self.$basetheme.attr('href');
					var newhref = '$1' + theme + '_theme$2';
					self.$basetheme.attr('href', curhref.replace(regex, newhref));
				},
				'panelstate': function (evt) {
					var panel = evt.message.panel;
					var state = evt.message.state;
					$.ajax({
						type: 'GET',
						url: location.origin + '/builder/partial/' + panel,
						data: 'type=' + state,
						dataType: 'html',
						success: function(data) {
							if(data['panelstate']['panel'] === 'friendstyle') {
								document.querySelector('#id_friends').outerHTML = data;
							}
							else if(data['panelstate']['panel'] === 'commentstyle') {
								document.querySelector('#id_comments').outerHTML = data;
							}
						},
						error: function (data) {
							console.log('Error: ', data);
						},
					});
				}
			});
		}
	}
	
	Foundation.plugin(BuilderPreview, 'BuilderPreview');
}(jQuery);