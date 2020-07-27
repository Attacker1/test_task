{{-- 
  Template Name: Главная страница ресторанов
--}}


@extends('layouts.app')

@section('content')
  @include('components.promo')
  @include('components.restaurant')
@endsection