var elm = document.forms['form'].elements['search'];
elm.focus();
elm.setSelectionRange(elm.value.length,elm.value.length);
$('#search').bind('keyup', function() {
    if ($(this).val().length >= 1) {
        $('#form').submit();
    }
});
function foo(event,data) {
    console.log(data);
}
// $(".card_image").click(function(){
//     alert("Value: " + $(".naruto").text());
// });
// $(".card_image").click(function() {
//     Swal.fire({
//         title: '<strong>HTML <u>example</u></strong>',
//         icon: 'info',
//         html:
//             'You can use <b>bold text</b>, ' +
//             '<a href="//sweetalert2.github.io">links</a> ' +
//             'and other HTML tags',
//         showCloseButton: true,
//         showCancelButton: true,
//         focusConfirm: false,
//         confirmButtonText:
//             '<i class="fa fa-thumbs-up"></i> Great!',
//         confirmButtonAriaLabel: 'Thumbs up, great!',
//         cancelButtonText:
//             '<i class="fa fa-thumbs-down"></i>',
//         cancelButtonAriaLabel: 'Thumbs down'
//     })
// });


