ready = function(){
 // hides the slickbox as soon as the DOM is ready
 $('#showpage').hide();
 // shows the slickbox on clicking the noted link  
  $('#show').click(function() {
    $('#showpage').show('slow');
  });
 // hides the slickbox on clicking the noted link  
  $('#hide').click(function() {
    $('#showpage').hide('fast');
    
  });
  
};
$(document).ready(ready);
$(document).on('page:load', ready);