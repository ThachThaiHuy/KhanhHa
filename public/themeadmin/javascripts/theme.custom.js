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
	});

	$('#adminManager').on('shown.bs.modal', function() {
    	jQuery.ajax({
	        url : "/admin/getlist",
	        type : "post",
	        dataType : "json",
	        beforeSend: function(){
	            
	        },
	        success: function(data){
	        	$("#table-content").html(data.data);
	        },
	        error: function(error){
	        }
	    });
	})

	$('#adminManager').on('hidden.bs.modal', function (e) {
  		$("#table-content").html("");
	});

	$("#add_admin").on("submit",function(e){
		e.preventDefault();
		$form = $("#add_admin");
		$form.prop( "disabled", true );
		jQuery.ajax({
	        url : "/admin/add",
	        type : "post",
	        data : $form.serialize(),
	        dataType : "json",
	        beforeSend: function(){
	            
	        },
	        success: function(data){
	        	alert(data.message);
	        	if(data.status == "1"){
	        		$("#table-content .not-item").addClass("hidden");
	        		$("#table-content tbody").append(data.data);
	        		$form.trigger("reset");
	        	}
	        	$form.prop( "disabled", false );
	        },
	        error: function(error){
	        	alert("không thể gửi request");
	        	$form.prop( "disabled", false );
	        }
	    });
	});
});