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
	</div>
</main>

<main class="container question-collapse">
	<div class="row">
		<div class="col-md-8">
			@foreach($questions as $question)
				<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne-{{ $question->id }}">
							<h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#qu-{{ $question->id }}" aria-expanded="false" aria-controls="qu-{{ $question->id }}">{{ $question->title }}</a> </h4>
						</div>
						<div id="qu-{{ $question->id }}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne-{{ $question->id }}">
							<div class="panel-body">{{ $question->text }} </div>
						</div>
					</div>
				</div>
			@endforeach
		</div>
		<div class="col-md-4">
			<a href="{{ setting('site.banner-link') }}">
				<img src="{{ \Storage::disk('public')->url(setting('site.banner')) }}" alt="">
			</a>
		</div>
	</div>
</main>

<main class="ques-form">
	<div class="container">
		<form action="/question" method="post">
			@csrf
			<div class="col-md-8">
				<div class="ques-form-title">Не нашли ответа на свой вопрос? Задайте его нам!</div>
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
					<div style="font-family: 'Bold';">Ваш вопрос</div>
					<textarea name="question" id="" cols="30" rows="10" required></textarea>
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