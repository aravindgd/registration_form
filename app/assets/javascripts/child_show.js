$(document).ready(function() {

$('#child_proof').hide();
 // shows the slickbox on clicking the noted link  
  $('#registration_form_child_special_true').click(function() {
    $('#child_proof').show('slow');
  });
 // hides the slickbox on clicking the noted link  
  $('#registration_form_child_special_false').click(function() {
    $('#child_proof').hide('fast');
    });
  });