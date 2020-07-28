<section class="promo">
    <div class="devider"></div>
    <div class="container">
        @include('components.promo_wrapper')
    </div>
    <div class="devider"></div>
        <div class="shadow">
        <div class="container">
            <div class="promo__navigation">
                <div class="promo__list">
                    @php
                    $terms = get_terms([
                        'taxonomy' => 'kitchen',
                        'hide_empty' => false, 
                    ]);
                    @endphp
                    @if($terms)
                        @foreach($terms as $term)
                            <div class='promo__type'>{!! $term->name !!}</div>
                        @endforeach
                    @endif
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