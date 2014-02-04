ready = function(){
$('.table table-striped').dataTable();
 "sDom": 'T<"clear">lfrtip',
        "oTableTools": {
            "sSwfPath": "/swf/copy_csv_xls_pdf.swf"
            }
}

$(document).ready(ready);
$(document).on('page:load', ready);