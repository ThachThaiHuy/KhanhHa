/* Add here all your JS customizations */
$(document).ready(function() {

	$("#change_pass").on("submit",function(e){
		e.preventDefault();
		$form = $("#change_pass");
		var pass = $("#new-pass").val();
		var re_pass = $("#re-new-pass").val();
		if(pass != re_pass){
			alert("Vui Lòng nhập lại xác nhân mật khẩu");
			return false;
		}
		jQuery.ajax({
	        url : "/admin/changePass",
	        type : "post",
	        data : $form.serialize(),
	        dataType : "json",
	        beforeSend: function(){
	            
	        },
	        success: function(data){
	        	alert(data.message)
	        	if(data.status == "1"){
	        		$("#exampleModal").modal('hide')
	        	}
	        },
	        error: function(error){
	        }
	    });
	})
});