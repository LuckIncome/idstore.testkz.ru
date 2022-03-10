@extends('partials.layout')

@section('title') {{ $page->title }} — {{ setting('site.title') }} @endsection
@section('keywords'){{ $page->keywords }}@endsection
@section('descriptionmeta'){{ $page->description }}@endsection

@section('content')

<div class="container bread">
	<a href="/">Главная</a> <span>></span> {{ $page->title }}
</div>

<main class="about-block1">
	<div class="container">
		<div class="about-block1-title">
			<div class="about-block1-title-top">{{ $page->title }}</div>
		</div>
		<div class="about-block1-text">
			{!! $page->text !!}
		</div>
	</div>
</main>

<main class="container block3 about-block3">
	@foreach($benefits as $benefit)
		<div class="block3-blocks">
			<div class="block3-img"><img src="{{ \Voyager::image($benefit->image) }}" alt=""></div>
			<div class="block3-text">{{ $benefit->title }}</div>
		</div>
	@endforeach
</main>

<main class="about-video">
	<div class="container-mini">
		<div class="about-video-youtube">
			{!! setting('site.about1') !!}
		</div>
		<div class="about-video-text">{{ setting('site.about2') }}</div>
	</div>
</main>

<main class="block8 about-block8">
	<div class="container block4-title">
		Фотогалерея
	</div>
	<div class="block8-slide sliders">
		<section class="variable-width">
			@foreach($photos as $photo)
				<div>
					<img src="{{ \Voyager::image($photo->image) }}">
				</div>
			@endforeach
		</section>
	<div>
</main>

<script src="/slickjs/slick.min.js"></script>
<script>
    $('.variable-width').slick({
    dots: true,
    infinite: true,
    centerMode: true,
    slidesToShow: 2,
    slidesToScroll: 2,
    prevArrow: false,
    nextArrow: false,
      responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
        infinite: true,
        dots: true
      }
    },
    {
      breakpoint: 600,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
    // You can unslick at a given breakpoint now by adding:
    // settings: "unslick"
    // instead of a settings object
  ]

  });
</script>

@endsection