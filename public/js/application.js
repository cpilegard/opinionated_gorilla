$(document).ready(function() {
	$question_template = $('#question_template div:first-child').clone();
	$choice_template = $('#choice_template li:first-child').clone();

  $('.container').on('click', '.add-choice', function(e) {
  	e.preventDefault();
  	$(this).closest('.choices').append($choice_template.clone());
  });

  $('.container').on('click', '#add-question', function(e) {
  	e.preventDefault();
  	$('.questions').append($question_template.clone());
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
