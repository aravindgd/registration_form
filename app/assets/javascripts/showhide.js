ready = function(){
 // hides the slickbox as soon as the DOM is ready
 $('#showpage').hide();
 // shows the slickbox on clicking the noted link  
  $('#registration_form_sibling_true').click(function() {
    $('#showpage').show('slow');
  });
 // hides the slickbox on clicking the noted link  
  $('#registration_form_sibling_false').click(function() {
    $('#showpage').hide('fast');
    
  });
  
};
$(document).ready(ready);
$(document).on('page:load', ready);