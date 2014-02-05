$(document).ready(function() {

$('#child_proof').hide();
 // shows the slickbox on clicking the noted link  
  $('#show_child').click(function() {
    $('#child_proof').show('slow');
  });
 // hides the slickbox on clicking the noted link  
  $('#hide_child').click(function() {
    $('#child_proof').hide('fast');
    });
  });