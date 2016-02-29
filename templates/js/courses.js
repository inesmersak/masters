$(document).ready(function() {
    $(".allcourses").hide();
    $(".toggle").css("border-bottom", "1px dotted #000000");

    $(".toggle").click(function() {
      $(this).next(".allcourses").toggle();
      bord = $(this).css("border-bottom-width");
      var newBorder;
      if (bord == "0px") newBorder = "1px dotted #000000";
      else newBorder = "none";
      $(this).css("border-bottom", newBorder);
    });
});