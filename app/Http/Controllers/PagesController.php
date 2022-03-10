<?php

namespace App\Http\Controllers;


use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Collection;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\App;
use App\Shop;

class PagesController extends Controller
{
    public function setLocale($locale)
    {

        if (in_array($locale, config()->get('app.locales'))) {
            session()->put('locale', $locale);
        }
        return back();
    }

    public function search(Request $request)
    {
        $locale = session()->get('locale');
        $fallbackLocale = config('app.fallback_locale');
        $input = $request->get('query');
        $shops = Shop::search($input)->with('translations')->get();
        // $products = Product::search($input)->with('translations')->with('category')->get();
        // $posts = Post::search($input)->with('translations')->get();

        // $collection = collect($shops)->merge($categories)->merge($posts);
        $collection = collect($shops);
        foreach ($collection as $item) {
            switch (class_basename($item)) {
                case 'Shop':
                    $item->setAttribute('full_link', env('APP_URL') .'/shops/'. $item->slug);
                    $item->setAttribute('item', 'магазины');
                    $item->title = $item->getTranslatedAttribute('title', $locale, $fallbackLocale);
                    $item->setAttribute('date', null);
                    break;
                // case 'Product':
                //     $item->setAttribute('full_link', env('APP_URL') . $item->link);
                //     $item->thumbnailSmall = $item->image;
                //     $item->setAttribute('date', null);
                //     $item->name = $item->getTranslatedAttribute('name', $locale, $fallbackLocale);
                //     $item->excerpt = $item->getTranslatedAttribute('description', $locale, $fallbackLocale);
                //     $item->setAttribute('item', __('general.product'));
                //     break;
                // case 'Post':
                //     $item->setAttribute('full_link', env('APP_URL') . '/novosti/' . $item->slug);
                //     $item->title = $item->getTranslatedAttribute('title', $locale, $fallbackLocale);
                //     $item->excerpt = $item->getTranslatedAttribute('excerpt', $locale, $fallbackLocale);
                //     $item->setAttribute('name', $item->title);
                //     $item->setAttribute('item', __('general.post'));
                //     break;
            }
        }
//        $collection = $collection->sortBy('name');
        if ($request->wantsJson()) {
            return response()->json(['items' => $collection->take(10)]);
        } else {
            $items = $this->paginate($collection, 6, null, ['path' => '/search?query=' . $input]);

            return view('search', compact('items'));
        }
    }

    public function paginate($items, $perPage = 15, $page = null, $options = [])
    {
        $page = $page ?: (Paginator::resolveCurrentPage() ?: 1);
        $items = $items instanceof Collection ? $items : Collection::make($items);
        return new LengthAwarePaginator($items->forPage($page, $perPage), $items->count(), $perPage, $page, $options);
    }
}