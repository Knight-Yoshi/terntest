!function ($) {
	'use strict';
	
	class RandomImage {
		constructor (element, options) {
			this.$element = element;
			this.options = $.extend({}, RandomImage.defaults, this.$element.data(), options);
			
			this._init();
			Foundation.registerPlugin(this, 'RandomImage');
		}
		
		_init() {
			this.$docFrag = $(document.createDocumentFragment());
			this.$amount = this.$element.find('[data-rig-amount]');
			this.$urlList = this.$element.find('[data-rig-list]');
			
			$.each(this.$urlList.children(), function (idx, el) {
				var id = 'rig-' + Foundation.GetYoDigits(6);
				var $el = $(el);
				$el.prop('id', id);
				$('[data-rig-remove]', $el).attr('data-rig-remove', id);
			});
			
			this._events();
		}
		
		_events() {
			var self = this;
			var $urlList = self.$urlList;
			
			$urlList.sortable({
				handle: '.drag-handle',
				draggable: '.draggable',
				onMove: function(evt) {
					$(evt.dragged).addClass('dragging');
				},
				onEnd: function(evt) {
					$(evt.item).removeClass('dragging');
				},
			});
			
			this.$element.on('click', '[data-rig-add]', function (e) {
				e.preventDefault();
				var i = 0;
				while (i < Number(self.$amount.val())) {
					if(self.$docFrag.children().length + $urlList.children().length === 500) {
						break;
					}
					
					self._newRow();
					i++;
				}
				$urlList.append(self.$docFrag);
			});
			
			this.$element.on('click', '[data-rig-remove]', function (e) {
				e.preventDefault();
				if(this.dataset.rigRemove === '') {
					var i = 0;
					
					while (i < Number(self.$amount.val())) {
						if(self.$urlList.children().length > 2) {
							$urlList.children(':last-child').remove();
						} else {
							break;
						}
						
						i++;
					}
				}
				else {
					if($urlList.children().length > 2) {
						document.querySelector('#' + e.target.dataset.rigRemove).remove();
					}
				}
			});
			
			this.$amount.on('keydown', function (e) {
				if(e.keyCode === 13) {
					e.preventDefault();
					$('[data-rig-add]').trigger('click');
				}
			});
		}
		
		_newRow() {
			var id = 'rig-' + Foundation.GetYoDigits(6);
			
			$(document.createElement('div'))
			.appendTo(this.$docFrag)
			.attr('id', id)
			.addClass('row draggable')
			.append(
					$(document.createElement('div'))
					.addClass('column shrink')
					.append(
							$(document.createElement('div'))
							.addClass('row')
							.append(
									$(document.createElement('div'))
									.addClass('column drag-handle')
									.append(
											$(document.createElement('span'))
											.addClass('btb bt-bars')
									)
							)
							.append(
									$(document.createElement('div'))
									.addClass('column')
									.append(
											$(document.createElement('label'))
											.addClass('remove')
											.append(
													$(document.createElement('input'))
													.prop('class', 'hidden')
													.prop('type','checkbox')
													.prop('name', 'delete[]')
													.attr('data-rig-remove', id)
											)
											.append(
													$(document.createElement('span'))
													.addClass('btb bt-trash')
											)
									)
							)
					)
			)
			.append(
					$(document.createElement('div'))
					.addClass('column')
					.append(
							$(document.createElement('input'))
							.prop('class', 'no-js')
							.prop('type', 'url')
							.prop('name', 'url[]')
					)
			);
		}
	}
	
	Foundation.plugin(RandomImage, 'RandomImage');
	
	
//	var docFrag = document.createDocumentFragment();
//	var urifields = document.querySelector('.uri-fields');
//	var urirows = urifields.children;
//	var addButtons = document.querySelectorAll('.batch-add');
//	var removeButtons = document.querySelectorAll('.batch-remove');
//	var batchNum = document.querySelectorAll('.batch-num');
//	var batchVal = Number(document.querySelector('.batch-num').value);
//	var deletelabel = document.querySelectorAll('.deletebox');
//
//	Array.prototype.forEach.call(urirows, deleterow);
//	Array.prototype.forEach.call(addButtons, add);
//	Array.prototype.forEach.call(removeButtons, remove);
//	Array.prototype.forEach.call(batchNum, syncBatchNum);
//
//	function add (addButton)
//	{
//		addButton.addEventListener('click', function (evt) {
//			var i = 0;
//			while (i < batchVal) {
//				if(docFrag.children.length + this.$urls.length === 500) {
//					break;
//				}
//				// row
//				var newrow = docFrag.appendChild(document.createElement('div'));
//				newrow.classList.add('row');
//
//				// delete button
//				var deletecol = newrow.appendChild(document.createElement('div'));
//				deletecol.classList.add('column','small-1', 'text-center');
//
//				var deletelabel = deletecol.appendChild(document.createElement('label'));
//				deletelabel.classList.add('deletebox');
//				deletelabel.title = "Delete row";
//
//				var deletebox = deletelabel.appendChild(document.createElement('input'));
//				deletebox.type = 'checkbox';
//				deleterow(newrow);
//				
//				var removeicon = deletelabel.appendChild(document.createElement('span'));
//				removeicon.classList.add('btb', 'bt-times');
//
//				// collapsed row wrapper
//				var collapsedcol = newrow.appendChild(document.createElement('div'));
//				collapsedcol.classList.add('column', 'small-10');
//				
//				// collapsed row
//				var collapsedrow = collapsedcol.appendChild(document.createElement('div'));
//				collapsedrow.classList.add('row', 'collapse');
//				
//				// row number
//				var numcol = collapsedrow.appendChild(document.createElement('div'));
//				numcol.classList.add('column','small-1');
//
//				var numlabel = numcol.appendChild(document.createElement('label'));
//				numlabel.classList.add('row-num','prefix');
//
//				// url input
//				var inputcol = collapsedrow.appendChild(document.createElement('div'));
//				inputcol.classList.add('column','small-11');
//				
//			    var inputURL = inputcol.appendChild(document.createElement('input'));
//			    inputURL.type = "url";
//			    inputURL.name = 'url[]';
//
//				// weight column
//				var weightcol = newrow.appendChild(document.createElement('div'));
//				weightcol.classList.add('column', 'small-1');
//
//				var inputWeight = weightcol.appendChild(document.createElement('input'));
//				inputWeight.type = "number";
//				inputWeight.name = 'weight[]';
//				inputWeight.min = '1';
//				inputWeight.max = '100'
//				inputWeight.value = '1';
//				inputWeight.title = "URL Multiplier from 1 to 100";
//				
//			    i++;
//			}
//
//			urifields.appendChild(docFrag);
//		});
//	}
//	function deleterow(row) {
//		var input = row.querySelector('input');
//		input.addEventListener('change', function (e) {
//			row.remove();
//		})
//	}
//	function remove (removeButton)
//	{
//		removeButton.addEventListener('click', function (evt) {
//			var i = 0;
//			console.log(docFrag.children.length);
//			
//			while (i < (urifields.children.length - batchVal)) {
//				docFrag.appendChild(urifields.children[i].cloneNode(true));
//				i++;
//			}
//			
//			console.log(docFrag.children.length);
//			if(docFrag.children.length < 2) {
//				while(i < 2) {
//					docFrag.appendChild(urifields.children[i].cloneNode(true));
//					i++;
//				}
//			}
//			console.log(docFrag.children.length);
//			
//			urifields.innerHTML = '';
//			urifields.appendChild(docFrag);
//		});
//	};
//	function syncBatchNum (input) {
//		input.addEventListener('change', function(evt) {
//			var syncVal = this.value;
//			batchVal = syncVal;
//			Array.prototype.forEach.call(batchNum, function (input) {
//				input.value = syncVal;
//			});
//		})
//	}
//	function importToDocFrag(child) {
//		docFrag.appendChild(child.cloneNode(true));
//	}
}(jQuery); 