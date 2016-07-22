/**
 * Created by TECHNO on 06/05/2016.
 */

$(function () { CalendarInit(); });

$(document).ready(function () {
    $('#tasks-lists').dataTable();
    $('#sent-messages').dataTable();
    $('#received-messages').dataTable();


    dialog = $( "#detailsTaskEmployee" ).dialog({
        autoOpen: false,
        modal: true,
        width: 550,
        close: function() {
        }
    });

});

// Hide the modal dialog when someone clicks outside of it.
$("#detailsTaskEmployee").bind( "clickoutside", function(event){
    $(this).hide();
});

function openDetails(idTask) {
    $.get("/detailsTask", {
        idTask: idTask
    }, function (data) {
      if(data != null) { //returned 'data' is not 'null'
            var obj = $.parseJSON(data);
            if(obj != {}) { //check if 'data' is not an empty 'json' object once transformed
                $('#taskName').val(obj.taskName);
                $('#taskDescrption').val(obj.taskDescrption);
                $("#id-task").text(obj.idtasks);
                $dte = (obj.taskTime).substring(0, (obj.taskTime).indexOf('T'));
                $time = (obj.taskTime).substring((obj.taskTime).indexOf('T') + 1, (obj.taskTime).indexOf(':') + 3);
                $("#timeTaskEditon").val($time);
                $("#taskDateEditon").val($dte);
                $( "#detailsTaskEmployee" ).dialog( "open" );
            } else {
                console.log('No results found.');
            }
        } else {
            console.log('An error occurred, try again.');
        }
    });
}
