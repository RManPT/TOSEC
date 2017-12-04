$(document).on('turbolinks:load', function() {
    var systems;
    $('#datfile_system_id').parent().hide();
    systems = $('#datfile_system_id').html();
    console.log(systems);
    return $('#datfile_company_id').change(function() {
      var company, escaped_company, options;
      company = $('#datfile_company_id :selected').text();
      escaped_company = company.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1');
      options = $(systems).filter("optgroup[label=" + escaped_company + "]").html();

      if (options) {
        $('#datfile_system_id').html(options);
        return $('#datfile_system_id').parent().show();
      } else {
        $('#datfile_system_id').empty();
        return $('#datfile_system_id').parent().hide();
      }
    });
  });
