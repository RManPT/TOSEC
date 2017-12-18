


//START - jquery Back to top snippet 
$(document).on('turbolinks:load', function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 50) {
            $('#back-to-top').fadeIn();   
            if (history.length > 2 || document.referrer.length > 0){
                $('#back-to-back').fadeIn();  
            }    
            var a = $('#invisible1').data('action');
            var c = $('#invisible2').data('controler');
            if (c != "welcome" && a != "start"){
                $('#back-to-home').fadeIn();  
            } else {
                $('#back-to-home').fadeOut(); 
            }
        } else {
            $('#back-to-top').fadeOut();
        }
    });
    // scroll body to 0px on click
    $('#back-to-top').click(function () {
        $('#back-to-top').tooltip('hide');
        $('body,html').animate({
            scrollTop: 0
        }, 800);
        return false;
    });
    $(function() {
        if (history.length > 1 || document.referrer.length > 0){
            $('#back-to-back').fadeIn();  
        } else {
            $('#back-to-back').fadeOut(); 
        }
    });
    $(function() {
        var a = $('#invisible1').data('action');
        var c = $('#invisible2').data('controler');
        if (c != "welcome" && a != "start"){
            $('#back-to-home').fadeIn();  
        } else {
            $('#back-to-home').fadeOut(); 
        }
    });    
});
//END - jquery Back to top snippet 

//START - jquery Back to back snippet 

//END - jquery Back to back snippet 


//START - jquery Enables tooltips 
$(document).on('turbolinks:load', function () {
    $('[data-toggle="tooltip"]').tooltip({container: "body"}); 
});
//END - jquery Enables tooltips 





$(document).on('turbolinks:load', function () {
    $('td[data-toggle="tooltip"]').tooltip({
        container: "body"
    });
})

//START - jquery Enables clickable objects whilst allowing click events on "stop prop" class elements
$(document).on('turbolinks:load', function () {
    $("tr[data-link]").click(function (e) {
        window.location = $(this).data("link");
    });
});

$(document).on('turbolinks:load', function () {
    $("div[data-link]").click(function (e) {
        window.location = $(this).data("link");
    });
});

$(document).on('turbolinks:load', function () {
    $("td[data-link]").click(function (e) {
        window.location = $(this).data("link");
 
    });
});

$(document).on('turbolinks:load', function () {
    $(".stop-prop").each(function () {
        $(this).click(function (e) {
            e.stopPropagation();
        });
    });
});

$(document).on('turbolinks:load', function () {
        $('.delete[data-method="delete"]').click(function (e) {
              e.preventDefault();
            //  e.stopPropagation();
            // confirm("Are you sure you want to delete?"); 
        });
    });

// function show_confirm(url) {
//     if (confirm("Are you sure you want to delete?"){
//         $.ajax({
//             url: url,
//             type: 'DELETE',
//             success: function(data) {
//               //play with data
//             }
//           });
//     }
// }

// $(document).on('turbolinks:load', function () {
//     $(".delete").each(function () {
//         $(this).click(function (e) {
//             e.stopPropagation();
// //            show_confirm($(this).attr("href"));
//         });
//     });
// });

//END - jquery Enables clickable table row