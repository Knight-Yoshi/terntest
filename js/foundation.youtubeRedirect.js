!function ($) {
  'use strict';
	class YoutubeRedirect {
		/**
		 * Creates a new instance of YouTubeRedirect
		 * 
		 * @class
		 * @fires YoutubeRedirect#init
		 * @param {Object}
		 *          element - jQuery object to add the trigger to
		 * @param {Object}
		 *          options - Overrides to the default plugin settings
		 */
		
		constructor(element, options) {
			this.$element = element;
			this.options = $.extend({}, YoutubeRedirect.defaults, this.$element.data(), options);
			this.url = location.href.replace(/\/$/, '') + '/';
			this.inputs = [];
			this.vid = '';
			this.preview = $('#youtube_embed');
      
			this._init();
			Foundation.registerPlugin(this, 'YoutubeRedirect');
		}
		
		_init() {
			this.$inputs = this.$element.find('[data-youtube-input]');
			this.$output = this.$element.find('[data-youtube-output]');
			
			this._events();
		}
		
		_events () {
			var self = this;
      var $list = $('[name="list"]');
      var $playlist = $('[name="playlist"]');
      
      $('[name="url"]').on('change.zf.youtuberedirect', function (e) {
      	self.vid = '';
      	var vid = self._getVideoId(this.value);
      	var queryStringStart = this.value.indexOf('?');
      	
      	if(vid !== null) {
      		self.vid = vid[1];
      	}
        
        if(queryStringStart > -1) {
          var queries = this.value.substring(queryStringStart + 1).split('&');
          self._setParams(queries);
        }
        
        self._output();
      });
      
			this.$inputs.on('change.zf.youtuberedirect', function (e) {
        var param = this.name + '=' + this.value;
        
        for(var idx = 0, len = self.inputs.length; idx < len; idx++) {
          if(RegExp(this.name + '=.*').test(self.inputs[idx])) {
            self.inputs.splice(idx, 1);
          }
        }
        
        if(this.name === 'loop') {
        	if(this.checked && self.vid && $list.val() === '') {
            $playlist.val(self.vid);
        	}
        	else if(!this.checked && $playlist.val() === self.vid) {
        		$playlist.val('');
        	}
          $playlist.trigger('change.zf.youtuberedirect');
        }
        
        if((this.checked || this.type !== 'checkbox' && this.value.length > 0) && param.length > 0) {
          self.inputs.push(param);
        }
        
        self._output();
			});
		}
		
		_reflow() {
			this._init();
		}
		
		_setParams (queries) {
			for(var idx = 0, len = queries.length; idx < len; idx++) {
        var query = queries[idx];
        var eq = query.indexOf('=');
        var name = query.substr(0, eq);
        var value = query.substr(eq + 1);
        var $param = $('[name="' + name + '"]');

        if($param.is(':checkbox') && $param.val() === value) {
        	$param.prop('checked', true);
        }
        else if(!$param.is(':checkbox')){
        	$param.val(value);
        }
        
        $param.trigger('change.zf.youtuberedirect');
      }
		}
		
		_output () {
			var output_url = this.url;
			
      if(this.vid !== '') {
      	output_url += this.vid;
      }
      else {
      	output_url += 'playlist';
      }
			
      if(this.inputs.length > 0) {
      	output_url += '?' + this.inputs.join('&');
      }
      
      this.preview.attr('src', output_url);
      this.$output.val(output_url);
		}
    
    _getVideoId (url) {
      return url.match(/^.*(?:youtu.be\/|v\/|e\/|u\/\w+\/|embed\/|v=)([^#\&\?]*).*/);
    }
    
    _getPlaylistId(str) {
      return str.match(/list=(.*?)(?:&|$)/);
    }
    
    destroy () {
    	this.$element.off();
    	this.$inputs.off();
    }
	}
	
	Foundation.plugin(YoutubeRedirect, 'YoutubeRedirect');
}(jQuery);