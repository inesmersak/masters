$(document).ready(function() {
    $(".allcourses").hide();

    $(".toggle").click(function() {
      $(this).next(".allcourses").toggle();
      var dec = $(this).css("text-decoration");
      var newDec;
      if (dec == "underline") newDec = "none";
      else newDec = "underline";
      $(this).css("text-decoration",newDec)
    });
});