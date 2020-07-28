<header class="header">
    <a href="@php echo get_home_url(); @endphp" class="header__logo">
        @include('icon::logo')
    </a>
    <form action="#" class="search-box">
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
        @include('icon::avatar')
    </div>
    <div class="header__hamburger">
        <span></span>
        <span></span>
        <span></span>
    </div>
</header>