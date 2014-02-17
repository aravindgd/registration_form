ready = function(){
$(document).ready(function(){
// $('#dob').datepicker( {
// 	format: 'dd/mm/yyyy'


//   });
$('#dob').datepicker({
    format: 'dd/mm/yyyy',
    startDate: '1/12/2009',
    endDate: '13/11/2010'

})
});
};

$(document).ready(ready);
$(document).on('page:load', ready);