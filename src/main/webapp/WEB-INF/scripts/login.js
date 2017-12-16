$(document).ready(function() {
  $('#btnLogin').click(function() {
    var action = '/login';
    var form_data = {
      'userId': $('#user_id').val(),
      'passwd': $('#user_pwd').val()
    };
    
    $.ajax({
      type: "POST"
      , url: action
      , data: JSON.stringify(form_data)
      , contentType : "application/json; charset=UTF-8"
      , success: function(data) {
    	  console.log(data);
    	  if ( data.errMsg != null ){
    		  // TODO : animate the message like github
    		  $('#msg').html(data.errMsg);
    	  } else {
    		  window.location.assign = "/home";
    	  }
    	  
      }
	  , error: function(e) {
		  console.log('err: ',e);
        $('#msg').html(e);
      }
    });
  });
  
});

