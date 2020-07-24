<!doctype html>
<html {!! get_language_attributes() !!}>
  @include('components.head')
  <body @php body_class() @endphp>
    @include('components.promo')
    @include('components.restaurant')
    @php wp_footer() @endphp
  </body>
</html>
