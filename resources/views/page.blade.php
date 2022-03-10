@extends('partials.layout')

@section('title') {{ $page->title }} — {{ setting('site.title') }} @endsection
@section('keywords'){{ $page->keywords }}@endsection
@section('descriptionmeta'){{ $page->description }}@endsection

@section('content')

<div class="container bread">
	<a href="/">Главная</a> <span>></span> {{ $page->title }}
</div>

<main class="catalog-block1">
	<div class="container">
		<div class="catalog-block1-title">
			<div class="catalog-block1-title-top">{{ $page->title }}</div>
		</div>
	</div>
</main>

<main class="container main-pay">
    <div class="main-pay-text">{!! $page->text !!}</div>
</main>

@endsection