<section class="restaurant">
        <div class="container">
            <h2 class="title restaurant__title">Рестораны</h2>
            <div class="restaurant__wrapper">
                {{-- @php
                  $args = array( 'post_type' => 'restaurant', 'post_per_page' => 10);
                  $loop = new WP_Query($args);
                  while ( $loop ->have_posts() ) : $loop->the_post();
                @endphp
                @component('components.restaurant_item')
                  @slot('image')
                    {!! get_the_post_thumbnail_url(); !!}
                  @endslot
                  @slot('title') 
                    {!! the_title(); !!}
                  @endslot
                  @slot('kitchen')
                    {!! the_terms(get_the_ID(), 'kitchen', '', ' . ', '') !!}
                  @endslot
                @endcomponent
                @php
                  endwhile;
                @endphp --}}
                @php
                  $args = array( 'post_type' => 'restaurant', 'post_per_page' => 10);
                  $latest_posts = get_posts( $args );
                  foreach( $latest_posts as $post) : 
                @endphp
                @component('components.restaurant_item')
                  @slot('image')
                    {!! get_the_post_thumbnail_url($post); !!}
                  @endslot
                  @slot('title') 
                    {!! get_the_title($post); !!}
                  @endslot
                  @slot('kitchen')
                    {!! the_terms($post->ID, 'kitchen', '', ' . ', ''); !!}
                  @endslot
                @endcomponent
                @php
                  endforeach;
                @endphp
            </div>
        </div>
    </section>