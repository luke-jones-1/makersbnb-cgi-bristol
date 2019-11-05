$(document).ready(function() {

  $('#submitSignUp').click(function() {
    var params = $('#formSignUp').serializeArray();
    console.log(params);
    if (params['emailAddress'] ) {

    };
  });

})
