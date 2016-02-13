$(document).ready(function () {
    $( "input[type=checkbox]" ).on( "click", filterFields);
});

function filterFields() {
    $('.profesorji > .profesor').hide();
    $( "input:checked" ).each(function() {
        toggleField($(this).val());
    });
}

function toggleField(id) {
    $("."+id).toggle();
}