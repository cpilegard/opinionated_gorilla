$(document).ready(function() {
	// $choiceField = $('.question_choice').clone();
	var choice_list = $('.choices');

  $('#add-choice').on('click', function(e) {
  	e.preventDefault();
  	$("<li class='question_choice'>\
  		 <p>Choice: <input type='text' name='choices[][choice]'></p>\
  		 </li>").appendTo(choice_list);
  	// $choiceField.appendTo(choice_list);
  });
});
