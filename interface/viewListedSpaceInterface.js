$(document).ready(function() {
  var space = new Space();

  $('#bookSpace').click(function() {
    var space = Space.id;
    $.post('hire_space.html', space);
  })

})
