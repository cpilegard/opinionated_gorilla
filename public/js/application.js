$(document).ready(function() {
	// $question_template = $('#question_template div:first-child');
	// $choice_template = $('#choice_template li:first-child');
	// var q_temp = $.extend({}, $('#question_template div:first-child'));
	// var c_temp = $.extend({}, $('#choice_template li:first-child'));
	var q_temp = $('#question_template').html();
	var c_temp = $('#choice_template').html();

  $('.container').on('click', '.add-choice', function(e) {
  	e.preventDefault();
  	$(this).closest('.choices').append(c_temp);
  });

  $('.container').on('click', '#add-question', function(e) {
  	e.preventDefault();
  	// $('.questions').append($question_template);
  	$('.questions').append(q_temp);
  });

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  $('.nav li').mouseover(function () {
    $(this).addClass('active');
  });

  $('.nav li').mouseleave(function() {
    $('li').removeClass('active');
  });

  $('.dropdown-toggle').dropdown();
  $('.dropdown-menu input, .dropdown-menu label').click(function(e) {
        e.stopPropagation();
    });

});
