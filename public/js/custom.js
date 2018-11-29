$(document).ready(function() {
	if (typeof viewlayout !== 'undefined') {
		if (viewlayout == 'list') {
			$(".list_view").click();
		} else {
			$(".grid_view").click();
		}
	}

	$(".list_view").on('click', function() {
		jQuery.ajax({
	        url : "/newproducts/ajaxChangeView",
	        type : "POST",
	        data : {'view' : 'list'},
	        //async: false,
	        dataType : "json",
	        beforeSend: function(){
	            //showPopupMessage("notification", '<img src="/images/loading.gif"/>   Sending...');
	        },
	        success: function(data){
	        	console.log("change view oke");
	        },
	        error: function(error){
	            console.log("loi ajax");
	        }
	    });
	});

	$(".grid_view").on('click', function() {
		jQuery.ajax({
	        url : "/newproducts/ajaxChangeView",
	        type : "POST",
	        data : {'view' : 'grid'},
	        //async: false,
	        dataType : "json",
	        beforeSend: function(){
	            //showPopupMessage("notification", '<img src="/images/loading.gif"/>   Sending...');
	        },
	        success: function(data){
	        	console.log("change view oke");
	        },
	        error: function(error){
	            console.log("loi ajax");
	        }
	    });
	});

	$(".custom_select").on('click', '.sort_item', function () {
		//alert('sdfsdf');
		var sortby = $(this).data("id");
		jQuery.ajax({
	        url : "/newproducts/ajaxChangeSort",
	        type : "POST",
	        data : {'sortby' : sortby},
	        //async: false,
	        dataType : "json",
	        beforeSend: function(){
	            //showPopupMessage("notification", '<img src="/images/loading.gif"/>   Sending...');
	        },
	        success: function(data){
	        	location.reload();
	        	console.log("chang sort oke");
	        },
	        error: function(error){
	            console.log("loi ajax");
	        }
	    });
	});
});

function check(input,length,name) {  
	var message = "",style ="0px solid red";
    if(input.validity.patternMismatch || input.validity.typeMismatch){
    	message   = "'"+input.value + "' không đúng định dạng. Vui lòng nhập lại";
        style ="1px solid red";
    } 
    else if(input.validity.valueMissing){
    	message = "Vui lòng nhập giá trị cho "+name ;
    	style ="1px solid red";  
    } 
    else if(input.validity.rangeOverflow){
    	message = "Không được nhập quá "+length+" kí tự" ;  
    	style ="1px solid red";
    }     
    input.setCustomValidity(message); 
    input.title = message; 
    //input.style.border = style;    
}  