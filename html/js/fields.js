$(document).ready(function () {
    $( "input[type=checkbox]" ).on( "click", filterFields);
    $( "input[type=checkbox]" ).prop("checked", true)
});

function filterFields() {
    $('.profesorji > .profesor').hide();
    $( "input:checked" ).each(function() {
        showField($(this).val());
    });
}

function checkAllFields(check) {
  $("input[type=checkbox]").prop("checked", check);
  $( "input[type=checkbox]" ).attr("checked", check);
  filterFields();
}

function showField(id) {
    $("."+id).show();
}