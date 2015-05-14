$(document).ready(function(){
  var currentURL = window.location.pathname
  var userMatchId = currentURL.substring(14)
  var create_msg = $('#create-msg'); 
  create_msg.click(function(){
    console.log('sent');
    var message_data = [];
    var author = $('.uid').text();
    var receiver_id = $('#create-msg').val();
    var content = author + ': ' + $('#inputbox').val();
    console.log('name' + author);
    console.log(content);
    console.log(receiver_id);
    message_data.push(receiver_id, userMatchId, content);
    $.ajax({
      url: '/messages',
      method: 'POST',
      dataType: 'json',
      data: {message: message_data}
    })
    .done(function(data){
      $('<li>' + content + '</li>').prependTo('.message-screen');
      $('#inputbox').val("");
    })
  })
})

// function appendMessage(msg){
//   $('<li class="message">'+msg+'</li>').prependTo('#messages');
// }

// $(document).ready(function(){

//   $('.send').on('click', pushMessage);
//   $('#chatarea').on('keypress', function(e){
//     if (e.keycode == '13'){
//       pushMessage();
//     }
//   });
// });
