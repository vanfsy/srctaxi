<?php


namespace App\Http\Controllers;


use App\Article;
use App\ArticleView;
use App\City;
use App\Company;
use App\Pref;
use Illuminate\Http\Request;

class ArticleController
{

    public function index(Request $request) {
        $allConditions = $request->all();

        $obj = Article::with('company')->withCount('allViews')->withCount('monthViews');
        foreach ($allConditions as $condition => $val) {
            if ($condition == 'pref' && !empty($val)) {
                $companies_id = Company::where('pref_id', $val)->pluck('id')->toArray();
                $obj = $obj->whereIn('company_id', $companies_id);
            }

            if ($condition == 'city' && !empty($val)) {
                $companies_id = Company::where('city_id', $val)->pluck('id')->toArray();
                $obj = $obj->whereIn('company_id', $companies_id);
            }

            if ($condition == 'job' && !empty($val)) {
                $obj = $obj->where('user_job', $val);
            }

            if ($condition == 'category' && !empty($val)) {
                $obj = $obj->whereIn('category', $val);
            }

            if ($condition == 'video' &&  !empty($val)) {
                if (in_array('ari', $val) && !in_array('nashi', $val)) {
                    $obj = $obj->whereNotNull('file');
                }

                if (!in_array('ari', $val) && in_array('nashi', $val)) {
                    $obj = $obj->whereNull('file');
                }
            }

            if ($condition == 'keyword' &&  !empty($val)) {
                $pref_ids = Pref::where('name', 'LIKE', '%'. $val . '%')->pluck('id')->toArray();
                $city_ids = City::where('name', 'LIKE', '%'. $val . '%')->pluck('id')->toArray();

                $companies_id = Company::where('title', 'LIKE', '%'. $val . '%')->orWhereIn('pref_id', $pref_ids)->orWhereIn('city_id', $city_ids)->pluck('id')->toArray();

                $obj = $obj->where(function ($query) use($val, $companies_id) {
                    $query->where('title', 'LIKE', '%'. $val . '%')->orWhereIn('company_id', $companies_id);
                });
            }

            if ($condition == 'sort') {
                if ($val == 'recommend') {
                    $obj = $obj->orderBy('all_views_count', 'desc');
                } elseif ($val == 'new') {
                    $obj = $obj->orderBy('created_at', 'desc');
                } elseif ($val == 'video') {
                    $obj = $obj->whereNotNull('file')->orderBy('created_at', 'desc');
                }
            }
        }


        $articles = $obj->paginate(8)->appends(request()->except('page'));
        $articlesNumber = $obj->count();

        foreach ($articles as $article) {
            $article->pref_name = Pref::find($article->company->pref_id)->name;
            $article->city_name = City::find($article->company->city_id)->name;
        }

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

        $cities = isset($allConditions['pref']) && isset($prefCities[$allConditions['pref']]) ? $prefCities[$allConditions['pref']] : array();

        $arrCategories = array('入社前・研修','乗務','給料','休日','福利厚生','タクシー機関','会社イベント','グルメ','乗務員資格','その他',);

        $arrJobs = array('タクシー乗務員', 'ハイヤー乗務員', '社長', '採用担当者', '運行管理者');

        return view('article.index')->with(compact('articles', 'pref', 'cities', 'recommendArticles', 'monthArticles', 'newArticles', 'videoArticles', 'prefCities', 'articlesNumber', 'allConditions', 'arrCategories', 'arrJobs'));

    }

    public function show($id) {

        $articleView = new ArticleView();
        $articleView->article_id = $id;
        $articleView->save();

        $article = Article::withCount('allViews')->find($id);

        $company_id = $article->company_id;
        $company = Company::find($company_id);

        $pref_id = $company->pref_id;
        $pref = Pref::find($pref_id);

        $city_id = $company->city_id;
        $city = City::find($city_id);

        $recommendArticles = Article::withCount('allViews')->orderBy('all_views_count', 'desc')->take(3)->get();
        $newArticles = Article::orderBy('created_at', 'desc')->take(3)->get();
        $videoArticles = Article::whereNotNull('file')->orderBy('created_at', 'desc')->take(3)->get();

        $sameCompanyArticles = Article::where('company_id', $company_id)->where('id', '<>', $id)->orderBy('created_at', 'desc')->take(3)->get();
        $monthArticles = Article::withCount('monthViews')->orderBy('month_views_count', 'desc')->take(3)->get();

        $sameArticles = Article::where('company_id', $company_id)->orderBy('created_at', 'desc')->get();
        $sameArticlesCount = count($sameArticles);

        foreach ($sameArticles as $ind => $art) {
            if ($id == $art->id) {
                $current = $ind;
            }
        }

        $prev_ind = $current - 1 < 0 ?  $current - 1 + $sameArticlesCount : $current - 1;
        $next_ind = $current + 1 >= $sameArticlesCount ? $current + 1 - $sameArticlesCount :  $current + 1;


        foreach ($sameArticles as $ind => $art) {
            if ($ind == $prev_ind) {
                $prevArticle = Article::find($art->id);
            }

            if ($ind == $next_ind) {
                $nextArticle = Article::find($art->id);
            }
        }

        return view('article.show')->with(compact('article', 'company', 'pref', 'city', 'recommendArticles', 'newArticles', 'videoArticles', 'sameCompanyArticles', 'monthArticles', 'prevArticle', 'nextArticle'));
    }

    public function ajaxNumbers(Request $request) {
        $allConditions = $request->all();

        $obj = Article::with('company')->withCount('allViews')->withCount('monthViews');
        foreach ($allConditions as $condition => $val) {
            if ($condition == 'pref' && !empty($val)) {
                $companies_id = Company::where('pref_id', $val)->pluck('id')->toArray();
                $obj = $obj->whereIn('company_id', $companies_id);
            }

            if ($condition == 'city' && !empty($val)) {
                $companies_id = Company::where('city_id', $val)->pluck('id')->toArray();
                $obj = $obj->whereIn('company_id', $companies_id);
            }

            if ($condition == 'job' && !empty($val)) {
                $obj = $obj->where('user_job', $val);
            }

            if ($condition == 'category' && !empty($val)) {
                $obj = $obj->whereIn('category', $val);
            }

            if ($condition == 'video' &&  !empty($val)) {
                if (in_array('ari', $val) && !in_array('nashi', $val)) {
                    $obj = $obj->whereNotNull('file');
                }

                if (!in_array('ari', $val) && in_array('nashi', $val)) {
                    $obj = $obj->whereNull('file');
                }
            }

            if ($condition == 'keyword' &&  !empty($val)) {
                $pref_ids = Pref::where('name', 'LIKE', '%'. $val . '%')->pluck('id')->toArray();
                $city_ids = City::where('name', 'LIKE', '%'. $val . '%')->pluck('id')->toArray();

                $companies_id = Company::where('title', 'LIKE', '%'. $val . '%')->orWhereIn('pref_id', $pref_ids)->orWhereIn('city_id', $city_ids)->pluck('id')->toArray();

                $obj = $obj->where(function ($query) use($val, $companies_id) {
                    $query->where('title', 'LIKE', '%'. $val . '%')->orWhereIn('company_id', $companies_id);
                });
            }

            if ($condition == 'sort') {
                if ($val == 'recommend') {
                    $obj = $obj->orderBy('all_views_count', 'desc');
                } elseif ($val == 'new') {
                    $obj = $obj->orderBy('created_at', 'desc');
                } elseif ($val == 'video') {
                    $obj = $obj->whereNotNull('file')->orderBy('created_at', 'desc');
                }
            }
        }

        $articlesNumber = $obj->count();

        $ret['success'] = 1;
        $ret['count'] = $articlesNumber;
        return response()->json($ret);

    }
}
