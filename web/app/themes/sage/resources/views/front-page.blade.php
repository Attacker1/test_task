@extends('layouts.app')


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Paper</title>
    <?php wp_head(); ?>
</head>
<body>
    <section class="promo">
        <div class="container">
            <header class="header">
                <a href="<?php echo get_home_url(); ?>" class="header__logo">
                    <img src="<?php echo bloginfo('template_url');?>/assets/icons/logo.svg" alt="logo">
                </a>
                <form action="#" class="search-box">
                    <img src="<?php echo bloginfo('template_url'); ?>/assets/icons/linse.svg" alt="search">
                    <input type="text" placeholder="Поиск заведений и блюд">
                </form>
                <div class="button header__language">
                    Русский
                    <div class="dav">
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <div class=" button header__city">
                    Казань
                    <div class="dav">
                        <span></span>
                        <span></span>
                    </div>
                </div>
                <div class="header__account">
                    <img src="<?php echo bloginfo('template_url'); ?>/assets/icons/avatar.png" alt="avatar">
                </div>
            </header>
        </div>
        <div class="devider"></div>
        <div class="container">
            <div class="promo__wrapper">
                <div class="promo__presentation">
                    <h1 class="title title__white promo__title">Discover great places to eat
                        around you in Kazan</h1>
                        <form action="#" class="search-box search-white">
                            <img src="<?php echo bloginfo('template_url'); ?>/assets/icons/linse.svg" alt="search">
                            <input type="text" placeholder="Поиск заведений и блюд">
                        </form>
                </div>
            </div>
        </div>
        <div class="devider"></div>
            <div class="shadow">
            <div class="container">
                <div class="promo__navigation">
                    <div class="promo__list">
                        <div class="promo__type">Все</div>
                        <div class="promo__type">Кофейни</div>
                        <div class="promo__type">Кафе</div>
                        <div class="promo__type">Бары</div>
                        <div class="promo__type">Рестораны</div>
                        <div class="promo__type">Русская</div>
                        <div class="promo__type">Татарская</div>
                        <div class="promo__type">Десерты</div>
                        <div class="promo__type">Завтраки</div>
                    </div>
                    <div class="promo__more">Еще
                        <div class="dav">
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                    <div class="promo__additions">
                        <span>Не каши</span>
                        <span>Крекеры</span>
                        <span>К пиву</span>
                        <span>Не каши</span>
                        <span>Крекеры</span>
                        <span>К пиву</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="restaurant">
        <div class="container">
            <h2 class="title">Рестораны</h2>
            <div class="restaurant__wrapper">
                <div class="restaurant__item">
                    <img src="<?php echo bloginfo('template_url'); ?>/assets/images/restauran1.png" alt="">
                    <div class="restaurant__subtitle">Soul in the Bowl</div>
                    <div class="restaurant__descr">Американская . Тайская</div>
                </div>
                <div class="restaurant__item">
                    <img src="<?php echo bloginfo('template_url'); ?>/assets/images/restauran2.png" alt="">
                    <div class="restaurant__subtitle">Falafel Bro</div>
                    <div class="restaurant__descr">Вегетарианская . Шаверма . Сэндвичи</div>
                </div>
                <div class="restaurant__item">
                    <img src="<?php echo bloginfo('template_url'); ?>/assets/images/restauran3.png" alt="">
                    <div class="restaurant__subtitle">Варламов Есть</div>
                    <div class="restaurant__descr">Азиатская . Американская . Европейская</div>
                </div>
                <div class="restaurant__item">
                    <img src="<?php echo bloginfo('template_url'); ?>/assets/images/restauran4.png" alt="">
                    <div class="restaurant__subtitle">Tacodor</div>
                    <div class="restaurant__descr">Американская . Тайская</div>
                </div>
                <div class="restaurant__item">
                    <img src="<?php echo bloginfo('template_url'); ?>/assets/images/restauran5.png" alt="">
                    <div class="restaurant__subtitle">Prime</div>
                    <div class="restaurant__descr">Вегетарианская . Шаверма . Сэндвичи</div>
                </div>
                <div class="restaurant__item">
                    <img src="<?php echo bloginfo('template_url'); ?>/assets/images/restauran6.png" alt="">
                    <div class="restaurant__subtitle">Город-Сад</div>
                    <div class="restaurant__descr">Азиатская . Американская . Европейская</div>
                </div>
                <div class="restaurant__item">
                    <img src="<?php echo bloginfo('template_url'); ?>/assets/images/restauran7.png" alt="">
                    <div class="restaurant__subtitle">Ostrovsky lounge&bar</div>
                    <div class="restaurant__descr">Американская . Тайская</div>
                </div>
            </div>
        </div>
    </section>
    <?php wp_footer(); ?>
</body>
</html>

