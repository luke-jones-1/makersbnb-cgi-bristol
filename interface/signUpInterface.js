$(document).ready(function() {

  $('#submitSignUp').click(function() {
    var params = $('#formSignUp').serializeArray();
    if (params[0]['value'] === "") {
      alert('Please enter your First Name.')
    } else if (params[1]['value'] === "") {
      alert('Please enter your Last Name.')
    } else if (params[2]['value'] === "") {
      alert('Please enter your Email Address.')
    };
  });

  $('#test').click(function() {
    var params = $('#formSignUp').serializeArray();
    console.log(params);
    if (params[0]['value'] === "") {
      console.log('Oops it is empty')
    };
  });

})
