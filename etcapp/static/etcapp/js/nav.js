const hambttn = document.querySelector('.navbar__hambttn');
const menu = document.querySelector('.navbar__menu');

hambttn.addEventListener('click',() => {
    menu.classList.toggle('active');
});


// $(function () {
//     $(".navbar__menu ul.small__menu").hide();
//     $(".navbar__menu ul.big__menu").click(function () {
//         $("ul", this).slideToggle(300);
//     });
// });

