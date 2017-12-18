


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
    $('#back-div').fadeIn();    
});
//END - jquery Back to top snippet 

//START - jquery Back to back snippet 

//END - jquery Back to back snippet 


//START - jquery Enables tooltips 
$(document).on('turbolinks:load', function () {
    $('[data-toggle="tooltip"]').tooltip({container: "body"}); 
});
//END - jquery Enables tooltips 

//START - jfloating div
// $(document).on('turbolinks:load', function() {
//     var $scrollingDiv = $("#footer");

//     $(window).scroll(function(){			
//         $scrollingDiv
//             .stop()
//             .animate({"marginTop": ($(window).scrollTop() - 100) + "px"}, "slow" );			
//     });
// });
//ENd - jfloating div

// Window load event used just in case window height is dependant upon images

//     $(document).on('turbolinks:load', function() { 
    
//     var footerHeight = 0,
//         footerTop = 0,
//         $footer = $("#footer");        
//     positionFooter();    
//     function positionFooter() {   
//              footerHeight = $footer.height();
//              footerTop = ($(window).scrollTop()+$(window).height()-footerHeight)+"px";
    
//             if ( ($(document.body).height()+footerHeight) < $(window).height()) {
//                 $footer.css({
//                      position: "absolute"
//                  })
//                 //  .animate({
//                 //      top: footerTop
//                 // })
//             } else {
//                 $footer.css({
//                      position: "static"
//                 })
//             }           
//     }
//     $(window)
//             .scroll(positionFooter)
//             .resize(positionFooter)          
// });


// $(document).on('turbolinks:load',function($){
//     function stickyFooter(){
//     var footer = $("#footer");
//     var position = footer.position();
//     var height = $(window).height();
//     height = height - position.top;
//     height = height - footer.outerHeight();
//     if (height > 0) {
//     footer.css({'margin-top' : height+'px'});
//     }
//     }
//     stickyFooter();
//     $(window).resize(function(){
//     stickyFooter();
//     });
//     });

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