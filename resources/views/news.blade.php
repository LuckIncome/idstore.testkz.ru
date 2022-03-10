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

<main class="container news">
	@foreach($news as $new)
		<div class="news-block row align-items-center">
			<div class="col-md-4">
				<img src="{{ \Voyager::image($new->image) }}" alt="">
			</div>
			<div class="col-md-8">
				<div class="news-block-date">{{ $new->data }}</div>
				<div class="news-block-title">{{ $new->title }}</div>
				<div class="news-block-text">{{ $new->anons }}</div>
				<div class="news-block-a">
					<a href="/novosti/{{ $new->slug }}">Подробнее →</a>
					<a href="#"><img src="/img/share.svg" alt=""></a>
				</div>
			</div>
		</div>
	@endforeach
</main>

@endsection