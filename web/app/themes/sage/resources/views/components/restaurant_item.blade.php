<div class="restaurant__item">
    @if (isset($image))
        <img src="{!! $image or '' !!}" alt="restaurant_img">
    @endif
    <div class="restaurant__subtitle">{!! $title or ''!!}</div>
    <div class="restaurant__descr">{!! $kitchen or ''!!}</div>
</div>