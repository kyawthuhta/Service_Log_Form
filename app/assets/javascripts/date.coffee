$(document).on 'turbolinks:load', ->
	$('#cms').on 'cocoon:after-insert', (e,item) ->
		console.log(item) 

		item.find('.datepicker').datetimepicker
		    format: 'YYYY/MM/DD'
		    showTodayButton: true
		    showClear: true
		    showClose: true

	$('#svms').on 'cocoon:after-insert', (e,item) ->
		console.log(item) 

		item.find('.datepicker').datetimepicker
		    format: 'YYYY/MM/DD'
		    showTodayButton: true
		    showClear: true
		    showClose: true 