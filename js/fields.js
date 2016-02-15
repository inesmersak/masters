$(document).ready(function () {
    $( "input[type=checkbox]" ).on( "click", filterFields);
});

function filterFields() {
    $('.profesorji > .profesor').hide();
    $( "input:checked" ).each(function() {
        showField($(this).val());
    });
}

function showField(id) {
    $("."+id).show();
}