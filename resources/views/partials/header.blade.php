<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog  modal-lg" role="document">
    <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
      <div class="modal-content-title">Заказать звонок</div>
      <div class="modal-content-body">Оставьте заявку и наш менеджер перезвонит вам в течение 10 минут!</div>
      <form action="/application" class="modal-content-form" method="post">
        @csrf
        <input type="text" name="name" placeholder="Ваше имя *" required>
        <input type="text" name="phone" placeholder="Номер телефона *" required>
        <input type="submit" placeholder="Отправить">
        <div><input type="checkbox" class="checkbox-round" required> <label for="">Нажимая на кнопку «Отправить», я подтверждаю свое согласие с <a href="/politika-konfidencialnosti">политикой конфиденциальности</a></label> </div>
      </form>
    </div>
  </div>
</div>

<header>

  <div class="container containers">
    <div class="logo"><a href="/"><img src="{{ \Storage::disk('public')->url(setting('site.logo')) }}" alt=""></a></div>
    <div class="menu">
      {!! menu('menu' , 'partials.menus.menu1') !!}
    </div>
    <div class="search-phone">
      <div class="search"><a href="#"><img src="/img/search.svg" alt=""></a></div>
      <div class="phone">
        <div class="phone-main">
          <div class="phone-main-left">
            <div class="phone-logo"><a href="#"><img src="/img/Vector.svg" alt=""></a></div>
            <div class="phone-number"><a href="tel:{{ setting('site.phone1') }}">{{ setting('site.phone1') }}</a></div>
          </div>
          <div class="phone-button">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">Связаться</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="container mobile">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <div class="logo"><a href="/"><img src="{{ \Storage::disk('public')->url(setting('site.logo')) }}" alt=""></a></div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            {!! menu('menu' , 'partials.menus.menu2') !!}
          </ul>
          <form class="d-flex">
            <input class="form-control me-2" type="search" placeholder="Поиск" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Поиск</button>
          </form>
        </div>
      </div>
    </nav>
  </div>

</header>

<main class="container block1">

  <div class="header-min-left">
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle catalog" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
          <div><img src="/img/menu.svg" alt=""></div> 
          <div><span>Каталог</span></div>
        </a>
        <ul class="dropdown-menu vin" aria-labelledby="navbarDropdown">
          @foreach($categorylists as $categorylist)
            <li><a class="dropdown-item" href="/katalog/{{ $categorylist->slug }}">{{ $categorylist->title }}</a>
          @endforeach
        </ul>
      </li>
    </ul>
    <div class="header-min-middle">
      <a href="/novinki">Новинки</a>
      <a href="/hity-prodazh">Хиты продаж <img src="/img/star.png" alt=""></a>
      <a href="/akcii">Акции</a>
    </div>
  </div>

  <div class="header-min-right">
    <a href="#" class="cif" id="navbarDropdown2" role="button" data-bs-toggle="dropdown" aria-expanded="false">
      {{-- <div>3</div> --}}
 
      <div id="asd"> {{isset($_COOKIE['cart_id']) ? \Cart::session($_COOKIE['cart_id'])->getTotalQuantity() : '0'}}</div>

      <img src="/img/cart2.svg" alt="">
    </a>
    <ul class="dropdown-menu ulp" aria-labelledby="navbarDropdown2">
      <li class="li-cart">
        <div class="my"><h5>Моя корзина</h5></div>
        <a href="#">X</a>
      </li>
      
      @if(isset($_COOKIE['cart_id']))
      @php
        $items = \Cart::getContent();
      @endphp
      @foreach($items as $row)
      <li>
        <img src="{{ Voyager::image($row->attributes->img) }}" alt="{{ $row->name }}">
        <div class="li-men">
          <div class="menus-title">{{ $row->price }} ₸</div>
          <div class="menus-mid">{{ $row->name }}</div>
          <div class="menus-coil">Количество: <span>{{ $row->quantity }}</span></div>
          <div class="menus-bottom">Удалить</div>
        </div>
      </li>
      @endforeach
      @else
        <li><p>Корзина пуста</p></li>
      @endif

      {{-- <li>
        <img src="img/slide1.png" alt="">
        <div class="li-men">
          <div class="menus-title">3 000 ₸</div>
          <div class="menus-mid">Ирригатор</div>
          <div class="menus-coil">Количество: 2</div>
          <div class="menus-bottom">Удалить</div>
        </div>
      </li>
      <li><hr class="dropdown-divider"></li>
      <li>
        <img src="img/slide1.png" alt="">
        <div class="li-men">
          <div class="menus-title">3 000 ₸</div>
          <div class="menus-mid">Ирригатор</div>
          <div class="menus-coil">Количество: 2</div>
          <div class="menus-bottom">Удалить</div>
        </div>
      </li> --}}
      <li><a class="dropdown-item dropdown-item2" href="/cart">Перейти в корзину</a></li>
    </ul>
  </div>
</main>

<script>
  $(document).ready(function () {
    $('.menus-bottom').click(function(event) {
      event.preventDefault();
      deleteFromCart();
    });
  });
  function deleteFromCart() {
      $.ajax({
        url: "{{ route('deleteFromoCart') }}",
        type: "POST",
        data: {
          delete: true,
        },
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        success: (data) => {
          if(data.delete == 200) {
            document.location.reload();
          }
          //console.log(data);
        },
        error: (data) => {
          console.log(data);
        }
      });
    }
</script>