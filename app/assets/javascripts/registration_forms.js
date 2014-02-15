ready = function(){
$(document).ready(function(){
// $('#dob').datepicker( {
// 	format: 'dd/mm/yyyy'


//   });
$('#dob').datepicker({
    format: 'dd/mm/yyyy',
    startDate: '30/11/2010',
    endDate: '30/11/2011'

})
});
};

$(document).ready(ready);
$(document).on('page:load', ready);