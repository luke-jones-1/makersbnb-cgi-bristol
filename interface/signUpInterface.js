$(document).ready(function() {

  // $('#submitSignUp').click(function() {
  function validateForm() {
    var params = $('#formSignUp').serializeArray();
    if (params[0]['value'] === "") {
      alert('Please enter your First Name.')
    } else if (params[1]['value'] === "") {
      alert('Please enter your Last Name.')
    } else if (params[2]['value'] === "") {
      alert('Please enter your Email Address.')
    } else {
      location.assign("http://localhost:9292/index.html");
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
