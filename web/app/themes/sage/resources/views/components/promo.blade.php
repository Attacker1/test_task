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
                    <?php 
                    $terms = get_terms( array(
                        'taxonomy' => 'kitchen',
                        'hide_empty' => false, 
                    ));
                    $output = '';
                    foreach($terms as $term){
                        $item = $term->name;
                        echo "<div class='promo__type'>{$item}</div>";
                    }
                    ?>
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