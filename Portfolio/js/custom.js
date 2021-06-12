$(document).ready(function()
{
	// Bottom to Top Button JS

	$(window).scroll(function () {
            if ($(this).scrollTop() > 50) {
                $('#back-to-top').fadeIn();
            } else {
                $('#back-to-top').fadeOut();
            }
        });
        // scroll body to 0px on click
        $('#back-to-top').click(function () {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });


    // jQuery code for Back and Front button of services

    $(".back").hide();
    $("#backendBtn").click(function(){
       $(".front").hide("slide");
       $(".back").show("slide");
       $("#frontEndBtn").show();
       $("#backendBtn").hide();
    });

    $("#frontEndBtn").click(function(){
       $(".front").show("slide");
       $(".back").hide("slide");
       $("#frontEndBtn").hide();
       $("#backendBtn").show();
    });


    // About Section JS of Image: Person and Education Cap

    $("#educationcap").hide();

    $("#education-tab-md").click(function(){
      $("#personalinfoman").hide(2000);
      $("#educationcap").show(2000);
    });

    $("#personal-information-tab-md").click(function(){
      $("#educationcap").hide(2000);
      $("#personalinfoman").show(2000);
    });
});