@extends('partials.layout')

@section('title'){{ setting('site.title') }}@endsection
@section('keywords'){{ setting('site.keywords') }}@endsection
@section('descriptionmeta'){{ setting('site.description') }}@endsection

@section('content')

<main class="container block2">
  <div class="block2-left">
    <div class="block2-top">{{ setting('site.slide-text') }}</div>
    <div class="block2-middle">{{ setting('site.slide-text2') }}</div>
    <a href="#" data-toggle="modal" data-target="#exampleModalLong">ЗАКАЗАТЬ ЗВОНОК</a>
  </div>
  <div class="block2-right"><img src="{{ \Storage::disk('public')->url(setting('site.slide-image')) }}" alt=""></div>
</main>

<main class="container block3">
  @foreach($benefits as $benefit)
    <div class="block3-blocks">
      <div class="block3-img"><img src="{{ \Voyager::image($benefit->image) }}" alt=""></div>
      <div class="block3-text">{{ $benefit->title }}</div>
    </div>
  @endforeach
</main>

<main class="block4">
  <div class="container">
    <div class="block4-title">Хиты продаж<img src="/img/star.png" alt=""></div>
  </div>
  <section class="regular slider">
    @foreach($tovars->where('hity' , 1) as $tovar)
      <div>
        <div class="block4-slide">
          <div class="block4-slide-img">
            <a href="/products/{{ $tovar->slug }}">
              <img src="{{ \Voyager::image($tovar->image) }}" alt="">
            </a>
          </div>
          <div class="block4-slide-title"><a href="/products/{{ $tovar->slug }}">{{ $tovar->title }}</a></div>
          <div class="block4-slide-text">В наличии: {{ $tovar->availability }}.</div>
          <div class="block4-slide-price">{{ $tovar->price }} ₸</div>
          <div class="block4-slide-btn" data-name="{{ $tovar->slug }}">
            <a class="button button-small" target="_blank" rel="noopener noreferrer" href="#">
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
  <div class="container">
    <div class="block4-title">Новинки</div>
  </div>
  <section class="regular slider">
    @foreach($tovars->where('novinki' , 1) as $tovar)
      <div>
        <div class="block4-slide">
          <div class="block4-slide-img">
            <a href="/products/{{ $tovar->slug }}">
              <img src="{{ \Voyager::image($tovar->image) }}" alt="">
            </a>
          </div>
          <div class="block4-slide-title"><a href="/products/{{ $tovar->slug }}">{{ $tovar->title }}</a></div>
          <div class="block4-slide-text">В наличии: {{ $tovar->availability }}.</div>
          <div class="block4-slide-price">{{ $tovar->price }} ₸</div>
          <div class="block4-slide-btn" data-name="{{ $tovar->slug }}">
            <a class="button button-small" target="_blank" rel="noopener noreferrer" href="#">
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

<main class="block6">
  <div class="container">
    <div class="block6-left"><img src="img/tooth.png" alt=""></div>
    <div class="block6-right">
      <div class="block6-title">Получить консультацию</div>
      <div class="block6-question">Остались вопросы? Оставьте номер телефона в форме ниже и наш констультант свяжется с вами в течение 10 минут!</div>
      <form action="/application" method="post" class="block6-form">
        @csrf
        <div class="block6-form-input">
          <input type="text" name="phone" placeholder="Номер телефона" required>
          <input type="submit" placeholder="Отправить">
        </div>
        <div class="block6-form-check">
          <input type="checkbox" class="checkbox-round round2" required>
          <label for="scales">
            Я подтверждаю свое согласие с <a href="/politika-konfidencialnosti">политикой конфиденциальности</a>
          </label>
        </div>
      </form>
    </div>
  </div>
</main>

<main class="block7">
  <div class="container">
    <div class="block4-title">Акции недели</div>
  </div>
  <section class="regular slider">
    @foreach($tovars->where('akcii' , 1) as $tovar)
      <div>
        <div class="block4-slide">
          <div class="block4-slide-img">
            <a href="/products/{{ $tovar->slug }}">
              <img src="{{ \Voyager::image($tovar->image) }}" alt="">
            </a>
          </div>
          <div class="block4-slide-title"><a href="/products/{{ $tovar->slug }}">{{ $tovar->title }}</a></div>
          <div class="block4-slide-text">В наличии: {{ $tovar->availability }}.</div>
          <div class="block4-slide-price">{{ $tovar->price }} ₸</div>
          <div class="block4-slide-btn" data-name="{{ $tovar->slug }}">
            <a class="button button-small" target="_blank" rel="noopener noreferrer" href="#">
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

<main class="block8">
  <div class="container block4-title">
    Новости
  </div>
  <div class="block8-slide sliders">
    <section class="variable-width">
      @foreach($news as $new)
        <div>
          <div class="news-a-link-block news-a-link-block2" style="background-image: url({{ \Voyager::image($new->image) }}); background-size:cover;">
            <div class="news2q">
              <div class="news-a-link-date">{{ $new->data }}</div>
              <div class="news-a-link-title">{{ $new->title }}</div>
              <div class="news-a-link-">
                <a href="/novosti/{{ $new->slug }}">Подробнее →</a>
                <a href="#"><img src="/img/share.svg" alt=""></a>
              </div>
            </div>
          </div>
        </div>
      @endforeach
    </section>
  </div>
</main>

<main class="block9">
  <div class="container block4-title">
    Наши партнеры
  </div>
  <div class="block9-slide sliders">
    <section class="partners">
      @foreach($partners as $partner)
        <div>
          <img src="{{ \Voyager::image($partner->image) }}">
        </div>
      @endforeach
    </section>
  </div>
</main>


<script src="/slickjs/slick.min.js"></script>
<script>
  $(document).on('ready', function() {
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
   
    $(".regular").slick({
      dots: false,
      infinite: true,
      slidesToShow: 4,
      slidesToScroll: 4,
      prevArrow:"<img class='a-left control-c prev slick-prev' src='/img/left.png'>",
      nextArrow:"<img class='a-right control-c next slick-next' src='/img/Group 6.png'>",
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
  $('.variable-width').slick({
    dots: true,
    infinite: true,
    centerMode: true,
    slidesToShow: 4,
    slidesToScroll: 3,
    prevArrow: false,
    nextArrow: false,
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
        slidesToShow: 1,
        slidesToScroll: 1
      }
    },
    {
      breakpoint: 480,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]

  });
  $(document).on('ready', function() {
    $(".partners").slick({
      dots: false,
      infinite: true,
      slidesToShow: 6,
      slidesToScroll: 6,
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
  ]
    });
  });
</script>

@endsection