$(document).ready(function() {
    $(".allcourses").hide();

    $(".toggle").click(function() {
      $(this).next(".allcourses").toggle();
    });
});