<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    $benefits = App\Benefit::where('status' , 1)->orderBy('order')->get();
    $partners = App\Partner::where('status' , 1)->orderBy('order')->get();
    $news = App\News::where('status' , 1)->orderBy('order')->get();
    $categorylists = App\Category::where('status' , 1)->orderBy('order')->get();
    $tovars = App\Product::where('status' , 1)->orderBy('order')->get();
    return view('welcome' , [
        'benefits' => $benefits ,
        'partners' => $partners ,
        'news' => $news ,
        'categorylists' => $categorylists ,
        'tovars' => $tovars
    ]);
});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});


Route::get('/{slug}', function ($slug) {
    $page = App\Page::where('slug',$slug)->firstOrFail();
    $benefits = App\Benefit::where('status' , 1)->orderBy('order')->get();
    $photos = App\Photo::where('status' , 1)->orderBy('order')->get();
    $questions = App\Question::where('status' , 1)->orderBy('order')->get();
    $news = App\News::where('status' , 1)->orderBy('order')->get();
    $reviews = App\Review::where('status' , 1)->orderBy('order')->get();
    $categorylists = App\Category::where('status' , 1)->orderBy('order')->get();
    $tovars = App\Product::where('status' , 1)->orderBy('order')->get();
    $carts = \Cart::session($_COOKIE['cart_id'])->getContent();
    return view(
        $page->type , [
            'page' => $page ,
            'benefits' => $benefits ,
            'photos' => $photos ,
            'questions' => $questions ,
            'news' => $news ,
            'reviews' => $reviews ,
            'categorylists' => $categorylists ,
            'tovars' => $tovars,
            'carts' => $carts
        ]
    );
});


Route::get('/novosti/{slug}', function ($slug) {
    $novost = App\News::where('slug',$slug)->firstOrFail();
    $news = App\News::where('status' , 1)->orderBy('order')->get();
    $categorylists = App\Category::where('status' , 1)->orderBy('order')->get();
    return view(
        'novost' , [
            'novost' => $novost ,
            'news' => $news ,
            'categorylists' => $categorylists
        ]
    );
});


Route::get('/katalog/{slug}', function ($slug) {
    $category = App\Category::where('slug',$slug)->firstOrFail();
    $categorylists = App\Category::where('status' , 1)->orderBy('order')->get();
    $tovars = App\Product::where('status' , 1)->orderBy('order')->get();
    return view(
        'catalog' , [
            'category' => $category ,
            'categorylists' => $categorylists ,
            'tovars' => $tovars
        ]
    );
});


Route::get('/products/{slug}', function ($slug) {
    $product = App\Product::where('slug',$slug)->firstOrFail();
    $categorylists = App\Category::where('status' , 1)->orderBy('order')->get();
    $tovars = App\Product::where('status' , 1)->orderBy('order')->get();

    return view(
        'product' , [
            'product' => $product ,
            'categorylists' => $categorylists ,
            'tovars' => $tovars
        ]
    );
});


Route::post('/application', function() {
    $name = request()->get('name');
    $phone = request()->get('phone');
    $ldate = new DateTime('now');

    $to = "011@i-marketing.kz";
    $subject = "Заявка с сайта Imperia Dent";
    $sendfrom   = "no-reply@idstore.kz";
    $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
    $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html;charset=utf-8 \r\n";

    $message = "$subject<br> <b>Имя:</b> $name <br> <b>Телефон:</b> $phone";



    $send = mail ($to, $subject, $message, $headers);
    if ($send)
    {
        \DB::table('applications')->insert([
            'name' => $name,
            'phone' => $phone,
            'created_at' => $ldate,
        ]);
        return redirect('/zayavka-uspeshno-otpravlena');
    } else {
        dd('error');
    }
});

Route::post('/question', function() {
    $name = request()->get('name');
    $email = request()->get('email');
    $question = request()->get('question');
    $ldate = new DateTime('now');

    $to = "011@i-marketing.kz";
    $subject = "Вопрос с сайта Imperia Dent";
    $sendfrom   = "no-reply@idstore.kz";
    $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
    $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html;charset=utf-8 \r\n";

    $message = "$subject<br> <b>Имя:</b> $name <br> <b>Почта:</b> $email <br> <b>Вопрос:</b> $question";



    $send = mail ($to, $subject, $message, $headers);
    if ($send)
    {
        \DB::table('sitequestions')->insert([
            'name' => $name,
            'email' => $email,
            'question' => $question,
            'created_at' => $ldate,
        ]);
        return redirect('/vash-vopros-uspeshno-otpravlen');
    } else {
        dd('error');
    }
});

Route::post('/review', function() {
    $name = request()->get('name');
    $email = request()->get('email');
    $review = request()->get('review');
    $ldate = new DateTime('now');

    $to = "011@i-marketing.kz";
    $subject = "Отзыв с сайта Imperia Dent";
    $sendfrom   = "no-reply@idstore.kz";
    $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
    $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html;charset=utf-8 \r\n";

    $message = "$subject<br> <b>Имя:</b> $name <br> <b>Почта:</b> $email <br> <b>Отзыв:</b> $review";



    $send = mail ($to, $subject, $message, $headers);
    if ($send)
    {
        \DB::table('sitereviews')->insert([
            'name' => $name,
            'email' => $email,
            'review' => $review,
            'created_at' => $ldate,
        ]);
        return redirect('/vash-otzyv-uspeshno-otpravlen');
    } else {
        dd('error');
    }
});

Route::post('/add-to-cart', function(Illuminate\Http\Request $request) {
    $product = App\Product::where('slug', $request->id)->first();
    $qty = (int) $request->post('qty');
    $photo = json_decode($product->photos);

    if(!isset($_COOKIE['cart_id'])) setcookie('cart_id', uniqid());
    $cart_id = $_COOKIE['cart_id'];
    \Cart::session($cart_id);
    
    \Cart::add([
        'id' => $product->id,
        'name' => $product->title,
        'price' => (int) preg_replace("/[^,.0-9]/", '', $product->price),
        'quantity' => $request->qty,
        'attributes' => [
            'img' => $photo[1]
        ]
    ]);

    return response()->json(\Cart::getContent());
})->name('addToCart');

Route::post('/delete-from-cart', function(Illuminate\Http\Request $request) {
   
    $cart_id = $_COOKIE['cart_id'];
    
    \Cart::session($cart_id)->clear();
    
    return response()->json(['delete' => 200]);
     
})->name('deleteFromoCart');

Route::post('/form-cart', function(Illuminate\Http\Request $request) {
    
    $carts = \Cart::session($_COOKIE['cart_id'])->getContent();
    $name = $request->get('name');
    $email = $request->get('email');
    $phone = $request->get('phone');
    $ldate = new DateTime('now');

    $table = [];
    $table = view('table', ['carts' => $carts]);   


    $to = "011@i-marketing.kz";
    $subject = "Отзыв с сайта Imperia Dent";
    $sendfrom   = "no-reply@idstore.kz";
    $headers  = "From: " . strip_tags($sendfrom) . "\r\n";
    $headers .= "Reply-To: ". strip_tags($sendfrom) . "\r\n";
    $headers .= "MIME-Version: 1.0\r\n";
    $headers .= "Content-Type: text/html;charset=utf-8 \r\n";

    $message = "$subject<br> <b>Имя:</b> $name <br> <b>Почта:</b> $email <br> <b>Телефон:</b> $phone <br> <b>Корзина:</b> $table";

    $send = mail ($to, $subject, $message, $headers);
    if ($send)
    {
        \DB::table('cart_forms')->insert([
            'name' => $name,
            'email' => $email,
            'phone' => $phone,
            'cart' => $table,
            'created_at' => $ldate,
        ]);
        \Cart::session($_COOKIE['cart_id'])->clear();
    }
    return response()->json(['success' => true], 200);
})->name('formCart');