//START - jquery link to top 
/*HOWTO:
<div class='input-group date form_datetime'>
    <%= f.text_field :dateRelease, class: 'form-control', readonly:'readonly' %>
    <span class="input-group-addon">
       <span class="glyphicon glyphicon-calendar"></span>
    </span>
</div>
*/


var readyDate;
readyDate = function() {
    var d = new Date();
    var n = d.getDate();
    var m = d.getMonth() + 1;
    var y = d.getFullYear();
    $('.form-datetime').datetimepicker({
        format: 'YYYY-MM-DD',
        maxDate: new Date(y + "-" + m + "-" + n),
        ignoreReadonly: true
    }

$(document).ready(readyDate);
$(document).on('page:load', readyDate);

//END - jquery link to top 

;
