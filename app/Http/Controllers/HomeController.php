<?php


namespace App\Http\Controllers;


use App\Article;
use App\City;
use App\Pref;

class HomeController
{
    public function index() {
        $pref = Pref::all()->pluck('name', 'id');

        $recommendArticles = Article::withCount('allViews')->orderBy('all_views_count', 'desc')->take(3)->get();
        $monthArticles = Article::withCount('monthViews')->orderBy('month_views_count', 'desc')->take(3)->get();

        $newArticles = Article::orderBy('created_at', 'desc')->take(3)->get();
        $videoArticles = Article::whereNotNull('file')->orderBy('created_at', 'desc')->take(3)->get();

        $cities = City::all()->toArray();
        $prefCities = array();
        foreach ($cities as $item) {
            if (!isset($prefCities[$item['pref_id']])) {
                $prefCities[$item['pref_id']] = array();
            }
            $prefCities[$item['pref_id']][] = array('id' => $item['id'], 'name' => $item['name']);
        }

        $articlesNumber = Article::all()->count();

        $arrJobs = array('タクシー乗務員', 'ハイヤー乗務員', '社長', '採用担当者', '運行管理者');

        return view('home.index')->with(compact('pref', 'recommendArticles', 'monthArticles', 'newArticles', 'videoArticles', 'prefCities', 'articlesNumber', 'arrJobs'));
    }

}
