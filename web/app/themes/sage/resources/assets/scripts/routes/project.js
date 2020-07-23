window.addEventListener('DOMContentLoaded', () => {
    const menu = document.querySelector('.navigation__menu'),
    menuItem = document.querySelectorAll('navigation__item'),
    hamburger = document.querySelector('.hamburger');

    hamburger.addEventListener('click', () => {
        hamburger.classList.toggle('hamburger_active');
        menu.classList.toggle('navigation__menu_active');
    });

    menuItem.forEach(item => {
        item.addEventListener('click', () => {
            hamburger.classList.toggle('hamburger_active');
            menu.classList.toggle('navigation__menu_active');
        });
    });
    jQuery(function($){
        $('.feed-form').submit(function(e) {
            e.preventDefault();
            $.ajax({
                type: 'POST',
                url: 'app/themes/sage/mailer/smart.php',
                data: $(this).serialize(),
            }).done(function() {
                $(this).find('input').val('');
                $('form').trigger('reset');
            });
            return false;
        });
    });
});