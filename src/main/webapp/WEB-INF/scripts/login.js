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
    	  if ( data.errMsg != null ){
    		  // TODO : animate the message like github
    		  if ( data.errCode == 'E0000') {
    			  $('#msg').html('Server Error. Contact system administrator.');
    		  } else {
    			  $('#msg').html(data.errMsg);
    		  }
    	  } else {
    		  console.log('assigning to /home');
    		  window.location.assign("/home");
    	  }
    	  
      }
	  , error: function(e) {
        $('#msg').html('Server Error. Please contact the system administrator.');
      }
    });
  });
  
});

