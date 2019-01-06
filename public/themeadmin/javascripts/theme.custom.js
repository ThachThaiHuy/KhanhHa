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


	//jQuery time
var current_fs, next_fs, previous_fs,current_control; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches
var current_step = 1;

$(".form-submit").on("submit",function(e){
	e.preventDefault();
	if(animating) return false;
	
	current_fs = $(this).parent();
	next_fs = $(this).parent().next();
	current_control = $(this).find(".action-button");
	current_control.prop( "disabled", true );
	var form, link;
	if(current_step == 1){
		form = $(this)
		link = "/admin/update-code"
	}
	else if(current_step == 2){
		form = $('#form-step-1, #form-step-2');
		link = "/admin/checkcode"
	}
	else {
		form = $('#form-step-1, #form-step-3');
		link = "/admin/setpass"
	}
	jQuery.ajax({
	        url : link,
	        type : "post",
	        data : form.serialize(),
	        dataType : "json",
	        beforeSend: function(){
	            
	        },
	        success: function(data){
	        	current_control.prop( "disabled", false );
	        	if(data.status == "1"){
	        		current_step ++;
	        		animating = true;
					//activate next step on progressbar using the index of next_fs
					$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
					
					//show the next fieldset
					next_fs.show(); 
					//hide the current fieldset with style
					current_fs.animate({opacity: 0}, {
						step: function(now, mx) {
							//as the opacity of current_fs reduces to 0 - stored in "now"
							//1. scale current_fs down to 80%
							scale = 1 - (1 - now) * 0.2;
							//2. bring next_fs from the right(50%)
							left = (now * 50)+"%";
							//3. increase opacity of next_fs to 1 as it moves in
							opacity = 1 - now;
							current_fs.css({
				        'transform': 'scale('+scale+')',
				        'position': 'absolute'
				      });
							next_fs.css({'left': left, 'opacity': opacity});
						}, 
						duration: 800, 
						complete: function(){
							current_fs.hide();
							animating = false;
						}, 
						//this comes from the custom easing plugin
						easing: 'easeInOutBack'
						
					});
					if(current_step == 3){
						$("#reserForm").modal("hide");
						$('#form-step-1, #form-step-2,#form-step-3').trigger("reset");
						$("#progressbar li").removeClass("active");
						$("#progressbar li").first().addClass("active");
					}
	        	}
	        	else{
	        		alert(data.message);
	        	}
	        },
	        error: function(error){
	        	current_control.prop( "disabled", false );
	        	alert("không thể gửi request");
	        }
	    });


});

$(".previous").click(function(){
	if(animating) return false;
	animating = true;
	
	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
});

// $(".submit").click(function(){
// 	return false;
// })
});