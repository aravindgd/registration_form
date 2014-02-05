ready = function(){
//$('.table table-striped').dataTable();
 //"sDom": 'T<"clear">lfrtip',
   //     "oTableTools": {
     //       "sSwfPath": "/swf/copy_csv_xls_pdf.swf"
       //     }
}

$(document).ready(ready);
$(document).on('page:load', ready);


$(document).ready(function(){
$('#dob').datepicker( {
	format: 'dd/mm/yyyy',
    startDate: '-3d'
  });
$("#registration_form_student_category").change(function() {
  console.log($("#registration_form_student_category").val())
  if($("#registration_form_student_category").val()=="Staff Child")
  {
  	$("#staff_child").toggle();
  }
  else
  {
  	if($("#staff_child").length)
  	{
  		$("#staff_child").hide();
  	}
  }
});


});