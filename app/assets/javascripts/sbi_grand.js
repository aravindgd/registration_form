$(document).ready(function(){
$("#registration_form_student_category").change(function() {
  console.log($("#registration_form_student_category").val())
  if($("#registration_form_student_category").val()=="SBI Grand Parent")
  {
  	$("#sbi-grand").toggle();
  }
  else
  {
  	if($("#sbi-grand").length)
  	{
  		$("#sbi-grand").hide();
  	}
  }
});
$("#registration_form_student_category").change(function() {
  console.log($("#registration_form_student_category").val())
  if($("#registration_form_student_category").val()=="Alumni")
  {
    $("#alumni").toggle();
  }
  else
  {
    if($("#alumni").length)
    {
      $("#alumni").hide();
    }
  }
});
$("#registration_form_student_category").change(function() {
  console.log($("#registration_form_student_category").val())
  if($("#registration_form_student_category").val()=="Pre-School")
  {
    $("#pre_school").toggle();
  }
  else
  {
    if($("#pre_school").length)
    {
      $("#pre_school").hide();
    }
  }
});
$("#registration_form_student_category").change(function() {
  console.log($("#registration_form_student_category").val())
  if($("#registration_form_student_category").val()=="SBI Officers")
  {
    $("#sbi-officers").toggle();
  }
  else
  {
    if($("#sbi-officers").length)
    {
      $("#sbi-officers").hide();
    }
  }
});

});