$("#btn").click(function () {login()})

$("#pass").keydown(function(event) {
    if (event.keyCode == 13) {
        login()
    }
})
$(document).ready(function () { $('html').css({'height':$(window).height()})});