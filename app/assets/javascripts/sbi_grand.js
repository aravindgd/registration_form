ready = function(){

$("#registration_form_student_category").change(function() {
  console.log($("#registration_form_student_category").val())
  if($("#registration_form_student_category").val()=="2")
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
  if($("#registration_form_student_category").val()=="5")
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
  if($("#registration_form_student_category").val()=="4")
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
  if($("#registration_form_student_category").val()=="3")
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

$("#registration_form_student_category").change(function() {
  console.log($("#registration_form_student_category").val())
  if($("#registration_form_student_category").val()=="6")
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
};
$(document).ready(ready);
$(document).on('page:load', ready);