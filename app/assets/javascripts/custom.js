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


ready = function(){
//$('#dob').datepicker( {
	//format: 'dd/mm/yyyy',
    //startDate: '-3d'
  //});

$("#registration_form_tie_up").change(function() {
  console.log($("#registration_form_tie_up").val())
  if($("#registration_form_tie_up").val()=="true")
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
  if($("#registration_form_tie_up").val()=="false")
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
};
$(document).ready(ready);
$(document).on('page:load', ready);