//START - jquery Datepicker
/*HOWTO:
<div class='input-group form-datetime' id='teste'>
    <%= f.text_field :dateRelease, class: 'form-control' %>
    <span class="input-group-addon glyphicon glyphicon-calendar" ></span>
</div>
*/


$(document).on('turbolinks:load', function () {
    var d = new Date();
    var n = d.getDate();
    var m = d.getMonth() + 1;
    var y = d.getFullYear();
    var today = new Date(y + "-" + m + "-" + n);
    $('.form-datetime').datetimepicker({
        defaultDate: today,
        format: 'YYYY-MM-DD',
        maxDate: today,
        ignoreReadonly: true
    });
});
//END - jquery link to top 

;
