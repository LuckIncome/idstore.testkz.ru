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
			<div class="catalog-block1-title-middle">1</div>
			<div class="catalog-block1-title-middle">товаров</div>
		</div>
		<div class="catalog-block1-show">Показано 1 из 1 товаров</div>
		<div class="catalogs">
			@foreach($tovars as $product)
				<div class="block4-slide">
					<div class="block4-slide-img">
						<a href="/products/{{ $product->slug }}">
							<img src="{{ \Voyager::image($product->image) }}" alt="">
						</a>
					</div>
					<div class="block4-slide-title"><a href="/products/{{ $product->slug }}">{{ $product->title }}</a></div>
					<div class="block4-slide-text">В наличии: {{ $product->availability }} шт.</div>
					<div class="block4-slide-price">{{ $product->price }} ₸</div>
					<div class="block4-slide-btn" data-name="{{ $product->slug }}">
						<a><img src="/img/cart2.svg" alt=""></a>
					</div>
				</div>
			@endforeach
		</div>
	</div>
</main>
<script>
	$(document).ready(function () {
		$('.block4-slide-btn[data-name]').click(function(event) {
    		event.preventDefault();
    		let qty = 1;
	    	let asd = parseInt($('#asd').text());
	    	let menus = parseInt($('.menus-coil span').text());
	    	asd += qty;
	    	menus += qty;
	    	$('#asd').text(asd);
	    	$('.menus-coil span').text(menus);
	    	let block = $(this).data('name');
	    	$.ajax({
	    		url: "{{ route('addToCart') }}",
	    		type: "POST",
	    		data: {
	    			id: block,
	    			qty: qty,
	    		},
	    		headers: {
	    			'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	    		},
	    		success: (data) => {
	    			document.location.reload();
	    			//console.log(data);
	    		},
	    		error: (data) => {
	                console.log(data);
	            }
	    	});
    	});
	});
</script>
@endsection