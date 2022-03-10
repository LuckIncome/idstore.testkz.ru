@extends('partials.layout')

@section('title') {{ $page->title }} — {{ setting('site.title') }} @endsection
@section('keywords'){{ $page->keywords }}@endsection
@section('descriptionmeta'){{ $page->description }}@endsection

@section('content')

<div class="container bread">
	<a href="#">Главная</a> <span>></span> {{ $page->title }}
</div>
<main class="catalog-block1">
    <div class="container">
      <div class="catalog-block1-title">
        <div class="catalog-block1-title-top">{{ $page->title }}</div>
        <div class="catalog-block1-title-middle">{{ $carts->count() }}</div>
        <div class="catalog-block1-title-middle">товара</div>
      </div>
      {{-- <div class="row"><div class="remove col-md-8"><a href="#"> Удалить все</a></div></div> --}}
    </div>
</main>

<main class="container">
	<div class="row">
		<div class="col-md-8">
			@if($carts->count() != 0)
			<table class="table">
			  <thead class="thead-dark">
			    <tr>
			      <th scope="col">Изображения</th>
			      <th scope="col">Названия</th>
			      <th scope="col">Количество</th>
			      <th scope="col">Цена</th>
			    </tr>
			  </thead>
			  <tbody>
			  	@foreach($carts as $cart)
			    <tr>
			      <th scope="row">
			      	<img src="{{ Voyager::image($cart->attributes->img) }}" alt="{{ $cart->name }}">
			      </th>
			      <td>{{ $cart->name }}</td>
			      <td>{{ $cart->quantity }} шт</td>
			      <td>{{ $cart->price * $cart->quantity }} ₸</td>
			    </tr>
			    @endforeach
			  </tbody>
			</table>

			<form id="formCart" class="mb-5" action="{{ route('formCart') }}" method="POST" enctype="multipart/form-data">
				@csrf
				<div class="form-group">
			    <label for="exampleInputPhone">Телефон</label>
			    <input type="text" name="phone" class="form-control" id="exampleInputPhone" placeholder="Введите ваш телефон" required>
			  </div>
			  <div class="form-group">
			    <label for="exampleInputEmail1">Email адресс</label>
			    <input type="text" name="email" class="form-control" id="exampleInputEmail1" placeholder="Введите ваш email" required>
			  </div>
			  <div class="form-group">
			    <label for="exampleInputName">Имя</label>
			    <input type="text" name="name" class="form-control" id="exampleInputName" placeholder="Введите ваше имя" required>
			  </div>
			  <div class="form-check"></div>
			  <button type="submit" class="btn btn-primary">Отправить</button>
			</form>

			@else
				<p>Ваша корзина пуста</p>
				<a href="/katalog" class="btn btn-primary">Перейти в каталог</a>
			@endif

		</div>
		<div class="col-md-4">
			<div class="basket-col-md-4-block2">
				<div>Мы принимаем к оплате:</div>
				<img src="/img/master.png" alt="">
				<img src="/img/visa.png" alt="">
				<img src="/img/apple.png" alt="">
				<img src="/img/google.png" alt="">
			</div>
			<div class="basket-col-md-4-block3">
				<div class="doss">Доставка</div>
				<div class="basket-col-md-4-block3-middle">
					<img src="/img/map.svg" alt="">
					<div>
						<div class="sam">Cамовывоз в день заказа</div>
						<div class="free">Бесплатно</div>
					</div>
				</div>
				<div class="basket-col-md-4-block3-middle">
					<img src="/img/shipped.svg" alt="">
					<div>
						<div class="sam">Доставка, завтра</div>
						<div class="free">Бесплатно при заказе от 10 000 ₸</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
</main>

<script>
  $(document).ready(function () {
    $('#formCart').on('submit', function(event) {
      event.preventDefault();
     	var form = $(this);
      var action = form.attr('action');
      var method = form.attr("method");
      var name = form.find('input[name=name]').val();
      var email = form.find('input[name=email]').val();
      var phone = form.find('input[name=phone]').val();
      var token = form.find('meta[name="csrf-token"]').attr('content');   
      var inputs = form.find("input, select, button, textarea");
      $.ajax({
	        url:action,
          method:method,
	        data: {
	          name: name, 
            email: email,
            phone: phone,
            _token: token
	        },
	        headers: {
	          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
	        },
	        dataType:'json',
	        success: (data) => {
	        	if(data.success === true) {
	        		$('#m-thanks').modal('show');
	        		inputs.val("");
	        		//console.log('asd');
	        	} else {
	        		console.log('error');
	        	}	          
	        },
	        error: (data) => {
	          console.log(data);
	        }
	      });
	    });
  });
</script>

<!-- modal thanks start -->
<div class="modal fade" id="m-thanks" tabindex="-1" role="dialog" aria-labelledby="contactLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="text-center">
                  Спасибо!
                </div>
                <div class="text-center">
                    Ваш заказ успешно отправлен!
                    Мы Вам ответим в ближайшее время!
                </div>               
            </div>
            <div class="modal-footer d-flex justify-content-center">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
            </div>
        </div>
    </div>
</div>
<!-- modal thanks end -->

@endsection