<footer>
  <div class="container">
    <div class="footer-block1">
      <div class="footer-contacts1">
        <img src="/img/phone.svg" alt="">
        <div class="footer-contacts1-block">
          <div>{{ setting('site.phone1') }}</div>
          <div>{{ setting('site.phone2') }}</div>
        </div>
      </div>
      <div class="footer-contacts2">
        <img src="/img/mail.svg" alt="">
        <div>{{ setting('site.email') }}</div>
      </div>
      <div class="footer-contacts3">
        <img src="/img/map.svg" alt="">
        <div>
          <div>{{ setting('site.address') }}</div>
        </div>
      </div>
    </div>
    <hr>
    <div class="footer-block2">
      <div class="footer-block2-first">
        <div class="footer-block2-first-title">{{ setting('site.title') }}</div>
        <div class="footer-block2-first-text">{{ setting('site.footer-text') }}</div>
        <div class="footer-block2-first-mes">
          <a href="{{ setting('site.facebook') }}" target="_blank"><img src="/img/facebook.svg" alt=""></a>
          <a href="{{ setting('site.instagram') }}" target="_blank"><img src="/img/instagram.svg" alt=""></a>
          <a href="{{ setting('site.vk') }}" target="_blank"><img src="/img/vk.svg" alt=""></a>
          <a href="{{ setting('site.telegram') }}" target="_blank"><img src="/img/telegram.svg" alt=""></a>
          <a href="{{ setting('site.whatsapp') }}" target="_blank"><img src="/img/whatsapp.svg" alt=""></a>
        </div>
      </div>
      <div class="footer-block2-second">
        <div class="footer-block2-second-title">Покупателям</div>
        {!! menu('foot1' , 'partials.menus.menu3') !!}
      </div>
      <div class="footer-block2-third">
        <div class="footer-block2-third-title">Каталог</div>
        @foreach($categorylists as $categorylist)
          <div class="footer-block2-second-text"><a href="/katalog/{{ $categorylist->slug }}">{{ $categorylist->title }}</a></div>
        @endforeach
      </div>
    </div>
    <hr>
    <div class="down">
      <div>Copyright © {{ date('Y') }} {{ setting('site.title') }}. Все права защищены.</div>
      <a href="https://i-marketing.kz" target="_blank" rel="nofollow"><img src="/img/imar.svg" alt=""></a>
    </div>
  </div>
</footer>