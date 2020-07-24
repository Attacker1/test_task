<!doctype html>
<html {!! get_language_attributes() !!}>
  @include('components.head')
  <body @php body_class() @endphp>
    @include('components.promo')
    @include('components.restaurant')
    <!-- @php do_action('get_header') @endphp
    @include('components.header')
    <div class="wrap container" role="document">
      <div class="content">
        <main class="main">
          @yield('content')
        </main>
        @if (App\display_sidebar())
          <aside class="sidebar">
            @include('components.sidebar')
          </aside>
        @endif
      </div>
    </div>
    @php do_action('get_footer') @endphp
    @include('components.footer') -->
    @php wp_footer() @endphp
  </body>
</html>
