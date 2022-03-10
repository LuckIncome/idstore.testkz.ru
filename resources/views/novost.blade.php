@extends('partials.layout')

@section('title') {{ $novost->title }} — {{ setting('site.title') }} @endsection
@section('keywords'){{ $novost->keywords }}@endsection
@section('descriptionmeta'){{ $novost->description }}@endsection

@section('content')

<div class="container bread">
	<a href="/">Главная</a> <span>></span> <a href="/novosti">Новости</a> <span>></span> {{ $novost->title }}
</div>

<main class="container news">
	<div class="row">
		<div class="col-md-8">
			<div class="news2-title">Новости</div>
			<div class="news-date">{{ $novost->data }}</div>
			<div class="news-title">
				<div>{{ $novost->title }}</div>
				<a href="#"><img src="/img/share.svg" alt=""></a>
			</div>
			<div class="news-text">{{ $novost->anons }}</div>
			<div class="news-img"><img src="{{ \Voyager::image($novost->image) }}" alt=""></div>
			<div class="news-text">{!! $novost->text !!}</div>
		</div>
		<div class="col-md-4">
			<div class="news3-title">Другие новости</div>
			@foreach($news as $new)
				<div class="news-a-link-block" style="background-image:url({{ \Voyager::image($novost->image) }}); background-size:cover;">
					<div class="news2q">
						<div class="news-a-link-date">{{ $new->data }}</div>
						<div class="news-a-link-title">{{ $new->title }}</div>
	                    <div class="news-a-link-">
	                        <a href="/novosti/{{ $new->slug }}">Подробнее →</a>
	                        <a href="#"><img src="/img/share.svg" alt=""></a>
	                    </div>
					</div>
	            </div>
            @endforeach
        </div>
	</div>
</main>

@endsection