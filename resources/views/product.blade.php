@extends('partials.layout')

@section('title') {{ $product->title }} — {{ setting('site.title') }} @endsection
@section('keywords'){{ $product->keywords }}@endsection
@section('descriptionmeta'){{ $product->description }}@endsection

@section('content')

<div class="container bread">
	<a href="/">Главная</a> <span>></span> {{ $product->title }}
</div>

<main class="container block1-product-main">
	<div class="blue">
        <div class="slider slider-nav">
        	@if(count(json_decode($product->photos)))
				@foreach (json_decode($product->photos) as $photo)
            		<div><img src="{{Voyager::image($photo)}}"></div>
            	@endforeach
			@endif
        </div>
        <div class="slider slider-for">
            @if(count(json_decode($product->photos)))
				@foreach (json_decode($product->photos) as $photo)
            		<div><img src="{{Voyager::image($photo)}}"></div>
            	@endforeach
			@endif
        </div>
        <br><br><br><br>
    </div>
    <div class="block1-product">
        <div class="block1-product-title">Инструменты стоматологические</div>
        <div class="code">Код товара: {{ $product->code }}</div>
        <div class="col">В наличии: {{ $product->availability }}.</div>
        <div class="price-main">
            <div class="product-col">
                <a href="#" class="link-left">-</a>
                <div class="link-middle">1</div>
                <a href="#" class="link-right">+</a>
            </div>
            <div class="price">{{ $product->price }} ₸</div>
        </div>
        <div class="cart-main">
          <a class="button button-small" target="_blank" rel="noopener noreferrer" href="#">
            <svg width="19" height="20" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="svg">
              <path d="M6.06071 15.1343C4.9652 15.1343 4.07715 16.0224 4.07715 17.1178C4.07715 18.2134 4.96524 19.1014 6.06071 19.1014C7.15623 19.1014 8.04428 18.2133 8.04428 17.1178C8.04432 16.0224 7.15623 15.1343 6.06071 15.1343ZM6.06071 18.2199C5.4521 18.2199 4.95874 17.7265 4.95874 17.1179C4.95874 16.5093 5.4521 16.0159 6.06071 16.0159C6.66932 16.0159 7.16268 16.5093 7.16268 17.1179C7.16273 17.7265 6.66932 18.2199 6.06071 18.2199Z" />
              <path d="M14.4367 15.1343C13.3412 15.1343 12.4531 16.0224 12.4531 17.1178C12.4531 18.2134 13.3412 19.1014 14.4367 19.1014C15.5322 19.1014 16.4203 18.2133 16.4203 17.1178C16.4203 16.0224 15.5322 15.1343 14.4367 15.1343ZM14.4367 18.2199C13.8281 18.2199 13.3347 17.7265 13.3347 17.1179C13.3347 16.5093 13.8281 16.0159 14.4367 16.0159C15.0453 16.0159 15.5387 16.5093 15.5387 17.1179C15.5387 17.7265 15.0453 18.2199 14.4367 18.2199Z" />
              <path d="M18.9102 3.56342C18.8184 3.46314 18.6928 3.40037 18.5575 3.38708L4.20962 3.18872L3.8129 1.97652C3.53342 1.16618 2.77459 0.619116 1.91746 0.610046H0.440797C0.197344 0.610046 0 0.80739 0 1.05084C0 1.2943 0.197344 1.49164 0.440797 1.49164H1.91746C2.39673 1.50223 2.81876 1.80997 2.97539 2.26305L5.77445 10.7043L5.55407 11.2112C5.30826 11.8451 5.38208 12.5585 5.75243 13.1287C6.11923 13.6886 6.73632 14.0342 7.40543 14.0543H15.9789C16.2224 14.0543 16.4197 13.857 16.4197 13.6135C16.4197 13.3701 16.2224 13.1727 15.9789 13.1727H7.40539C7.02753 13.1633 6.67971 12.9645 6.47971 12.6438C6.28194 12.327 6.24132 11.9367 6.36952 11.5858L6.54586 11.1891L15.8246 10.2194C16.8438 10.1071 17.6822 9.36583 17.9184 8.36802L18.9764 3.93802C19.024 3.81046 18.9987 3.66698 18.9102 3.56342ZM17.0588 8.1697C16.9158 8.81202 16.3704 9.2858 15.7144 9.33782L6.54586 10.2855L4.49614 4.07032L18.0065 4.26867L17.0588 8.1697Z"/>
            </svg>
            <span class="label-hidden">В корзину</span>
          </a>
        </div>
        <div class="dos">
            <span class="dos-first">Самовывоз:</span>
            <span class="dos-second">Сегодня</span>
            <span class="dos-third">Бесплатно</span>
        </div>
        <div class="dos">
            <span class="dos-first">Доставка:</span>
            <span class="dos-second">Завтра</span>
            <span class="dos-third">Бесплатно</span>
        </div>
    </div>
</main>

<div class="tabs container">
	<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
		<li class="nav-item" role="presentation">
			<button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Характеристики</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Описание</button>
		</li>
		<li class="nav-item" role="presentation">
			<button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Вопросы и ответы</button>
		</li>
	</ul>
	<hr>
	<div class="tab-content" id="pills-tabContent">
		<div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
			<div class="tabs-hg">Характеристики</div>
			<div class="tab-block">
				<div class="tab-block1">
					<span class="tab-block-title">Общие</span>
					<span>Тип_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _{{ $product->type }}</span>
					<span>Бренд_ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _{{ $product->brand }}</span>
					<span>Модель_ _ _ _ _ _ _ _ _ _ _ _ _ _  __{{ $product->model }}</span>
					<span>Страна_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ {{ $product->country }}</span>
				</div>
				<div class="tab-block1">
					<span class="tab-block-title">Габариты и вес</span>
					<span>Ширина, мм_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _ _{{ $product->width }}</span>
					<span>Высота, мм_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _{{ $product->height }}</span>
					<span>Глубина_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ __ _{{ $product->depth }}</span>
					<span>Вес, кг_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _ _{{ $product->weight }}</span>
				</div>
			</div>
		</div>
		<div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
			{!! $product->opisanie !!}
		</div>
		<div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
			{!! $product->questions !!}
		</div>
	</div>
</div>

<main class="block4">
	<div class="container">
		<div class="block4-title">С этим товаром покупают</div>
	</div>
	<section class="regular slider">
		@foreach($tovars as $tovar)
			<div>
				<div class="block4-slide">
					<div class="block4-slide-img">
						<a href="/products/{{ $product->slug }}">
							<img src="{{ \Voyager::image($tovar->image) }}" alt="">
						</a>
					</div>
					<div class="block4-slide-title"><a href="/products/{{ $product->slug }}">{{ $tovar->title }}</a></div>
					<div class="block4-slide-text">В наличии: {{ $tovar->availability }}.</div>
					<div class="block4-slide-price">{{ $tovar->price }} ₸</div>
					<div class="block4-slide-btn" id="cart_btz" data-name="{{ $tovar->slug }}">
						<a class="button button-small" rel="noopener noreferrer" href="#">
							<svg width="19" height="20" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="svg">
								<path d="M6.06071 15.1343C4.9652 15.1343 4.07715 16.0224 4.07715 17.1178C4.07715 18.2134 4.96524 19.1014 6.06071 19.1014C7.15623 19.1014 8.04428 18.2133 8.04428 17.1178C8.04432 16.0224 7.15623 15.1343 6.06071 15.1343ZM6.06071 18.2199C5.4521 18.2199 4.95874 17.7265 4.95874 17.1179C4.95874 16.5093 5.4521 16.0159 6.06071 16.0159C6.66932 16.0159 7.16268 16.5093 7.16268 17.1179C7.16273 17.7265 6.66932 18.2199 6.06071 18.2199Z" />
								<path d="M14.4367 15.1343C13.3412 15.1343 12.4531 16.0224 12.4531 17.1178C12.4531 18.2134 13.3412 19.1014 14.4367 19.1014C15.5322 19.1014 16.4203 18.2133 16.4203 17.1178C16.4203 16.0224 15.5322 15.1343 14.4367 15.1343ZM14.4367 18.2199C13.8281 18.2199 13.3347 17.7265 13.3347 17.1179C13.3347 16.5093 13.8281 16.0159 14.4367 16.0159C15.0453 16.0159 15.5387 16.5093 15.5387 17.1179C15.5387 17.7265 15.0453 18.2199 14.4367 18.2199Z" />
								<path d="M18.9102 3.56342C18.8184 3.46314 18.6928 3.40037 18.5575 3.38708L4.20962 3.18872L3.8129 1.97652C3.53342 1.16618 2.77459 0.619116 1.91746 0.610046H0.440797C0.197344 0.610046 0 0.80739 0 1.05084C0 1.2943 0.197344 1.49164 0.440797 1.49164H1.91746C2.39673 1.50223 2.81876 1.80997 2.97539 2.26305L5.77445 10.7043L5.55407 11.2112C5.30826 11.8451 5.38208 12.5585 5.75243 13.1287C6.11923 13.6886 6.73632 14.0342 7.40543 14.0543H15.9789C16.2224 14.0543 16.4197 13.857 16.4197 13.6135C16.4197 13.3701 16.2224 13.1727 15.9789 13.1727H7.40539C7.02753 13.1633 6.67971 12.9645 6.47971 12.6438C6.28194 12.327 6.24132 11.9367 6.36952 11.5858L6.54586 11.1891L15.8246 10.2194C16.8438 10.1071 17.6822 9.36583 17.9184 8.36802L18.9764 3.93802C19.024 3.81046 18.9987 3.66698 18.9102 3.56342ZM17.0588 8.1697C16.9158 8.81202 16.3704 9.2858 15.7144 9.33782L6.54586 10.2855L4.49614 4.07032L18.0065 4.26867L17.0588 8.1697Z"/>
							</svg>
							<span class="label-hidden">В корзину</span>
						</a>
					</div>
				</div>
			</div>
		@endforeach
	</section>
</main>

<main class="block5">
	<div class="container"><div class="block4-title">Вы недавно смотрели</div></div>
	<div class="container see see2">
		@foreach($tovars as $tovar)
			<div class="block4-slide">
				<div class="block4-slide-img">
					<a href="/products/{{ $product->slug }}">
						<img src="{{ \Voyager::image($tovar->image) }}" alt="">
					</a>
				</div>
				<div class="block4-slide-title"><a href="/products/{{ $product->slug }}">{{ $tovar->title }}</a></div>
				<div class="block4-slide-text">В наличии: {{ $tovar->availability }}.</div>
				<div class="block4-slide-price">{{ $tovar->price }} ₸</div>
				<div class="block4-slide-btn" id="cart_btz" data-name="{{ $tovar->slug }}">
					<a class="button button-small" rel="noopener noreferrer" href="#">
						<svg width="19" height="20" viewBox="0 0 19 20" fill="none" xmlns="http://www.w3.org/2000/svg" class="svg">
							<path d="M6.06071 15.1343C4.9652 15.1343 4.07715 16.0224 4.07715 17.1178C4.07715 18.2134 4.96524 19.1014 6.06071 19.1014C7.15623 19.1014 8.04428 18.2133 8.04428 17.1178C8.04432 16.0224 7.15623 15.1343 6.06071 15.1343ZM6.06071 18.2199C5.4521 18.2199 4.95874 17.7265 4.95874 17.1179C4.95874 16.5093 5.4521 16.0159 6.06071 16.0159C6.66932 16.0159 7.16268 16.5093 7.16268 17.1179C7.16273 17.7265 6.66932 18.2199 6.06071 18.2199Z" />
							<path d="M14.4367 15.1343C13.3412 15.1343 12.4531 16.0224 12.4531 17.1178C12.4531 18.2134 13.3412 19.1014 14.4367 19.1014C15.5322 19.1014 16.4203 18.2133 16.4203 17.1178C16.4203 16.0224 15.5322 15.1343 14.4367 15.1343ZM14.4367 18.2199C13.8281 18.2199 13.3347 17.7265 13.3347 17.1179C13.3347 16.5093 13.8281 16.0159 14.4367 16.0159C15.0453 16.0159 15.5387 16.5093 15.5387 17.1179C15.5387 17.7265 15.0453 18.2199 14.4367 18.2199Z" />
							<path d="M18.9102 3.56342C18.8184 3.46314 18.6928 3.40037 18.5575 3.38708L4.20962 3.18872L3.8129 1.97652C3.53342 1.16618 2.77459 0.619116 1.91746 0.610046H0.440797C0.197344 0.610046 0 0.80739 0 1.05084C0 1.2943 0.197344 1.49164 0.440797 1.49164H1.91746C2.39673 1.50223 2.81876 1.80997 2.97539 2.26305L5.77445 10.7043L5.55407 11.2112C5.30826 11.8451 5.38208 12.5585 5.75243 13.1287C6.11923 13.6886 6.73632 14.0342 7.40543 14.0543H15.9789C16.2224 14.0543 16.4197 13.857 16.4197 13.6135C16.4197 13.3701 16.2224 13.1727 15.9789 13.1727H7.40539C7.02753 13.1633 6.67971 12.9645 6.47971 12.6438C6.28194 12.327 6.24132 11.9367 6.36952 11.5858L6.54586 11.1891L15.8246 10.2194C16.8438 10.1071 17.6822 9.36583 17.9184 8.36802L18.9764 3.93802C19.024 3.81046 18.9987 3.66698 18.9102 3.56342ZM17.0588 8.1697C16.9158 8.81202 16.3704 9.2858 15.7144 9.33782L6.54586 10.2855L4.49614 4.07032L18.0065 4.26867L17.0588 8.1697Z"/>
						</svg>
						<span class="label-hidden">В корзину</span>
					</a>
				</div>
			</div>
		@endforeach
	</div>
</main>

<script src="/slickjs/slick.min.js"></script>
<script>
    $(document).ready(function () {
    	$('.cart-main').click(function(event) {
    		event.preventDefault();
    		addToCart();
    	});	

    	$('#cart_btz[data-name]').click(function(event) {
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

    	$('.link-right').click(function(event) { 
    		event.preventDefault();
    		let qty = Number($('.link-middle').text());
    		let res =  qty + 1;
    		return $('.link-middle').text(res);
    	});

    	$('.link-left').click(function(event) { 
    		event.preventDefault();
    		let qty = Number($('.link-middle').text());
    		if(qty > 1) {
    			let res = qty - 1;
    			return $('.link-middle').text(res);
    		} 		
    	});

        $('.slider-for').slick({
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            fade: true,
            asNavFor: '.slider-nav'
        });
        $('.slider-nav').slick({
            slidesToShow: 2, // 3,
            slidesToScroll: 1,
            asNavFor: '.slider-for',
            vertical: true,
            dots: false,
            centerMode: false,
            prevArrow:"<img class='test' src='/img/left.png'>",
            nextArrow:"<img class='test' src='/img/Group 6.png'>",
            focusOnSelect: true
        });
        $(".regular").slick({
            dots: false,
            infinite: true,
            slidesToShow: 4,
            slidesToScroll: 4,
            responsive: [
            {
            breakpoint: 1024,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
                infinite: true,
                dots: true
            }
            },
            {
            breakpoint: 600,
            settings: {
                slidesToShow: 2,
                slidesToScroll: 2,
                prevArrow: false,
                nextArrow: false,
            }
            },
            {
            breakpoint: 480,
            settings: {
                slidesToShow: 1,
                slidesToScroll: 1,
                prevArrow: false,
                nextArrow: false,
                }   
            }
        ]

    	});
    });
    function addToCart() {
    	let qty = parseInt($('.link-middle').text());
    	let asd = parseInt($('#asd').text());
    	let menus = parseInt($('.menus-coil span').text());
    	let path = window.location.pathname;
    	asd += qty;
    	menus += qty;
    	$('#asd').text(asd);
    	$('.menus-coil span').text(menus);

		let last = path.split('/').pop();
    	$.ajax({
    		url: "{{ route('addToCart') }}",
    		type: "POST",
    		data: {
    			id: last,
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
    }
</script>

@endsection