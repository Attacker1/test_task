<section class="restaurant">
        <div class="container">
            <h2 class="title">Рестораны</h2>
            <div class="restaurant__wrapper">
                <!-- @component('components.restaurant_item')
                  @slot('image')
                    @asset('images/restauran1.png')
                  @endslot
                  @slot('title')
                    Soul in the Bowl
                  @endslot
                  @slot('kitchen')
                    Американская . Тайская
                  @endslot
                @endcomponent -->
                <?php 
                $args = array( 'post_type' => 'restaurant', 'post_per_page' => 10);
                $loop = new WP_Query($args);
                while ( $loop ->have_posts() ) : $loop->the_post();?>
                @component('components.restaurant_item')
                  @slot('image')
                    <?php the_post_thumbnail(); ?>
                  @endslot
                  @slot('title') <?php
                  the_title();
                  ?>
                  @endslot
                  @slot('kitchen')
                    <?php the_terms(get_the_ID(), 'kitchen', '', ' . ', '') ?>
                  @endslot
                @endcomponent
                
                <?php
                endwhile;
                ?>
            </div>
        </div>
    </section>