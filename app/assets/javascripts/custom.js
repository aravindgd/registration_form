ready = function(){
$('.table-striped').dataTable({
 "sDom": 'T<"clear">lfrtip',
        "oTableTools": {
            "sSwfPath": "/swf/copy_csv_xls_pdf.swf"
            }
});
}

$(document).ready(ready);
$(document).on('page:load', ready);


$(document).ready(function(){
//$('#dob').datepicker( {
	//format: 'dd/mm/yyyy',
    //startDate: '-3d'
  //});
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
$("#registration_form_tie_up").change(function() {
  console.log($("#registration_form_tie_up").val())
  if($("#registration_form_tie_up").val()=="RBI")
  {
    $("#rbi_proof").toggle();
  }
  else
  {
    if($("#rbi_proof").length)
    {
      $("#rbi_proof").hide();
    }
  }
});
$("#registration_form_tie_up").change(function() {
  console.log($("#registration_form_tie_up").val())
  if($("#registration_form_tie_up").val()=="SAIL")
  {
    $("#sail_proof").toggle();
  }
  else
  {
    if($("#sail_proof").length)
    {
      $("#sail_proof").hide();
    }
  }
});


});
