window.addEventListener('DOMContentLoaded', () => {
    const promoMore = document.querySelector('.promo__more'),
    promoAdditions = document.querySelector('.promo__additions');

    promoMore.addEventListener('click', () => {
        promoAdditions.classList.toggle('promo__additions_active');
    });
});