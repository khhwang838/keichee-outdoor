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
      , success: function(response) {
	        if(response.trim() == "success") {
	          /*sessionStorage.setItem("user_id", form_data.user_id);*/
	        	window.location.href = '/home';
	        } else {
	        }
      }
	  , error: function(err) {
        $('#msg').html("Incorrect username or password.");
      }
    });
  });
});