<!doctype html>
<html {!! get_language_attributes() !!}>
  @include('components.head')
  <body @php body_class() @endphp>
    <div class="container">
      @include('components.header')
    </div>
    @yield('content')
    @php wp_footer() @endphp
  </body>
</html>
