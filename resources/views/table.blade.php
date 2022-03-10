<table>
  <thead>
    <tr>
      <th>Названия</th>
      <th>Количество</th>
      <th>Цена</th>
    </tr>
  </thead>
  <tbody>
   @foreach($carts as $cart)
    <tr>
      <td> {{ $cart->name }}</td>
      <td> {{ $cart->quantity }} шт</td>
      <td> {{ $cart->price * $cart->quantity }} ₸</td>
    </tr>
    @endforeach
  </tbody>
</table>