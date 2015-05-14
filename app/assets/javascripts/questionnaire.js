$(document).ready(function(){
  console.log('checkbox ready');
  var currentURL = window.location.pathname
  var ajaxURL = currentURL.substring(0, currentURL.length - 13)
 
  $('input').iCheck({
    checkboxClass: 'icheckbox_flat-green',
    radioClass: 'iradio_flat-green',
    hoverClass: 'hover-green',
    increaseArea: '30%',
    cursor: true
    });

  $('.qn').click(function(){
    console.log('checked')
  })

  $('#qn-submit').click(function(){
    console.log('clicked');
    var checked_fields = $("#questionnaire .qn:checked");
    if (checked_fields.length > 0) {
      console.log('something checked');
      var preferences = [];
      checked_fields.each(function(index,value){
        preferences.push(value.value);
      })
      console.log(preferences);
      $.ajax({
        url: 'update_preferences',
        method: 'PUT',
        dataType: 'json',
        data: {user:preferences}
      });
      window.location.pathname = ajaxURL
    }
    else {
      console.log('nothing checked');
    }
  })
})

