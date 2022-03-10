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

<main class="container feedback">
	@foreach($reviews as $review)
		<div class="feedback-main">
			<div class="feedback-block1">
				<div class="feedback-block1-main">
					<div class="feedback-block1-title">{{ $review->title }}</div>
					<div class="feedback-block1-date">{{ $review->data }}</div>
				</div>
				<div class="feedback-block1-star">
					{!! $review->rating !!}
				</div>
			</div>
			<div class="feedback-block2">{{ $review->text }}</div>
			<div class="feedback-block3">
				<div class="feedback-block3">Этот отзыв был полезен?</div>
				<div class="feedback-block3">
					<a href="#">Да</a>
					<span>1</span>
				</div>
				<div class="feedback-block3">
					<a href="#">Нет</a>
					<span>0</span>
				</div>
			</div>
		</div>
	@endforeach
</main>

<main class="ques-form">
	<div class="container">
		<form action="/review" method="post">
			@csrf
			<div class="col-md-8">
				<div class="ques-form-title">Оставьте свой отзыв!</div>
				<div class="row ques-form-first">
					<div class="col-md-6">
						<div style="font-family: 'Bold';">Как к вам обращаться?</div>
						<input type="text" name="name" placeholder="Ваше имя" required>
						</div>
					<div class="col-md-6 ques-form-second">
						<div style="font-family: 'Bold';">Ваш e-mail</div>
						<input type="text" name="email" placeholder="example@mail.ru" required>
					</div>
				</div>
				<div class="col-md-11 ques-form-third">
					<div style="font-family: 'Bold';">Ваш отзыв</div>
					<textarea name="review" id="" cols="30" rows="10" required></textarea>
				</div>
				<div class="ques-form-check">
					<input type="checkbox" class="checkbox-round round3" required>
					<label for="">Нажимая на кнопку «Отправить», я подтверждаю свое согласие с <a href="/politika-konfidencialnosti"> политикой конфиденциальности</a></label>
				</div>
				<button type="submit" class="btn btn-primary mt-5">Отправить</button>
			</div>
		</form>
	</div>
</main>

@endsection