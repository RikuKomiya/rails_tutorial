// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage

//= require jquery
//= require jquery_ujs
//= require_tree


$(document).ready(function () {
   $('.field input').on('focus',function () {
       $(this).addClass('focus');
   });
    $('.field input').on('blur',function () {
        if ($(this).val() == "")
        $(this).removeClass('focus');
    });
    
    $('#sidebarCollapse').click(function () {
        $('#sidebar').toggleClass('active');
        $('.over-lay').toggle();
    });

    $('.content-form-w textarea').on('focus',function () {
        $(this).addClass('focus');
    });
    $('.content-form-w textarea').on('blur',function () {
        if ($(this).val() == "")
            $(this).removeClass('focus');
    });



    $('#current-sem-button').click(function () {
        $('.current-sem').show();
        $('.pre-sem').hide();
        $(this).removeClass('active')
        $('#pre-sem-button').removeClass('active')
    });
    $('#pre-sem-button').click(function () {
        $('.current-sem').hide();
        $('.pre-sem').show();
        $(this).addClass('active')
        $('#current-sem-button').addClass('active')
    });


    $('#common').click(function () {
        $(this).addClass('active');
        $(this).siblings().removeClass('active');
        $('.current_courses_common').addClass('active');
        $('.current_courses_common').siblings().removeClass('active');
    });
    $('#management').click(function () {
        $(this).addClass('active');
        $(this).siblings().removeClass('active');
        $('.current_courses_management').addClass('active');
        $('.current_courses_management').siblings().removeClass('active');
    });
    $('#literature').click(function () {
        $(this).addClass('active')
        $(this).siblings().removeClass('active')
        $('.current_courses_literature').addClass('active');
        $('.current_courses_literature').siblings().removeClass('active');
    });
    $('#economics').click(function () {
        $(this).addClass('active')
        $(this).siblings().removeClass('active')
        $('.current_courses_economics').addClass('active');
        $('.current_courses_economics').siblings().removeClass('active');
    });
    $('#sociology').click(function () {
        $(this).addClass('active')
        $(this).siblings().removeClass('active')
        $('.current_courses_sociology').addClass('active');
        $('.current_courses_sociology').siblings().removeClass('active');
    });
    $('#low').click(function () {
        $(this).addClass('active')
        $(this).siblings().removeClass('active')
        $('.current_courses_low').addClass('active');
        $('.current_courses_low').siblings().removeClass('active');
    });
    $('#search-reset').click(function () {
        $('.course-search-body').find('.form-control').val('');
    });

    if ($(".content-form-w textarea").val().length == 0) {
        $(".content-btn").prop("disabled", true);
    }
    $(".content-form-w textarea").on("keydown keyup keypress change", function() {
        if ($(this).val().length < 1) {
            $(".content-btn").prop("disabled", true);
        } else {
            $(".content-btn").prop("disabled", false);
        }
    });
});