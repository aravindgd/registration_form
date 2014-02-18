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
$('#mother_qual').show();
 // shows the slickbox on clicking the noted link  
  $('#registration_form_mother_datas_professional_true').click(function() {
    $('#mother_qual').hide('slow');
  });
 // hides the slickbox on clicking the noted link  
  $('#registration_form_mother_datas_professional_false').click(function() {
    $('#mother_qual').show('fast');
    
  });

  
};
$(document).ready(ready);
$(document).on('page:load', ready);