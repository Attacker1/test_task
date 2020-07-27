<header class="header">
    <a href="<?php echo get_home_url(); ?>" class="header__logo">
        <!-- <img src="@asset('icons/logo.svg')" alt="logo"> -->
        @include('icon::logo')
    </a>
    <form action="#" class="search-box">
        <!-- <img src="@asset('icons/linse.svg')" alt="search"> -->
        @include('icon::linse')
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
        <!-- <img src="@asset('icons/avatar.svg')" alt="avatar"> -->
        @include('icon::avatar')
    </div>
</header>