@extends('layouts.app')
<style>
	body{
		background-image: url("http://www.settlementcanyonapts.com/wp-content/uploads/layerslider/Carousel-demo/002-blurred-background-texture-vol2.png");
	}
</style>
@section('template_title')
    {{ Auth::user()->name }}'s' Homepage
@endsection

@section('template_fastload_css')
@endsection

@section('content')
{{--
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">

                @include('panels.welcome-panel')

            </div>
        </div>
    </div>
--}}
@endsection

@section('footer_scripts')
@endsection