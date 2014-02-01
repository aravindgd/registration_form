read = function(){
    $('#dob').change(datepicker());
}

$(document).ready(read);
$(document).on('page:load', read);