$(document).ready(function() {
 // hides the slickbox as soon as the DOM is ready
  $('#sibling-column').hide();
 // shows the slickbox on clicking the noted link  
  $('#sibling1').click(function() {
    $('#sibling-column').show('slow');
    return false;
  });
 // hides the slickbox on clicking the noted link  
  $('#sibling2').click(function() {
    $('#sibling-column').hide('fast');
    return false;
  });
  });