$(document).on 'turbolinks:load', ->
	$('.datepicker').datetimepicker
	    format: 'YYYY/MM/DD'
	    showTodayButton: true
	    showClear: true
	    showClose: true