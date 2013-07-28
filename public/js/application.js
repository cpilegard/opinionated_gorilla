$(document).ready(function() {
	// $choiceField = $('.question_choice').clone();
	var choice_list = $('.choices');

  // $('input').iCheck();

  $('#add-choice').on('click', function(e) {
  	e.preventDefault();
  	$("<li class='question_choice'>\
  		 <p>Choice: <input type='text' name='choices[][choice]'></p>\
  		 </li>").appendTo(choice_list);
  	// $choiceField.appendTo(choice_list);
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

//chart stuff
$(document).ready(function() {
  $(".question-chart").each(function() {
    var context = this.getContext("2d");
    var myNewChart = new Chart(context);
    var data = $(this).data("user-choices");
    console.log(data)
    myNewChart.Pie(data);
  });
});
