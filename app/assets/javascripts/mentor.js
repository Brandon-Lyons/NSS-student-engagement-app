$(document).ready(function() {
	$(".dropdown-menu li a").click(function(){
      $(".btn:first-child").text($(this).text());
      $(".btn:first-child").val($(this).text());
   	});

	$('#myTab a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})	

	$('#myTab b').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})	

	$('#myTab c').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})

});