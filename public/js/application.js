$(document).ready(function() {
	// $question_template = $('#question_template div:first-child');
	// $choice_template = $('#choice_template li:first-child');
	// var q_temp = $.extend({}, $('#question_template div:first-child'));
	// var c_temp = $.extend({}, $('#choice_template li:first-child'));
	var q_temp = $('#question_template').html();
	var c_temp = $('#choice_template').html();

  $('form').on('click', '.add-choice', function(e) {
  	e.preventDefault();
  	$(this).closest('.choices').append(c_temp);
  });

  $('form').on('click', '#add-question', function(e) {
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
  $('#loginModal').modal('show');

  $('#loginModal').modal({ backdrop: 'static', keyboard: true });

  $('#loginBtn').on("click", function() {
    $('#modalCreate').css('display', 'none');
    hideFooterBtn($('#createBtn'));
    showFooterBtn($('#loginBtn'));
    $('#modalLogin').fadeIn(1000);
  });

  $('#createBtn').on("click", function() {
    $('#modalLogin').css('display', 'none');
    hideFooterBtn($('#loginBtn'));
    showFooterBtn($('#createBtn'));
    $('#modalCreate').fadeIn(1000);
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


function hideFooterBtn(btn) {
  btn.fadeTo(1000, 0.3);
}

function showFooterBtn(btn) {
  btn.fadeTo(1000, 1);
}
