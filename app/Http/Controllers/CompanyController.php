<?php


namespace App\Http\Controllers;


use App\Article;
use App\City;
use App\Company;
use App\Pref;

class CompanyController
{
    public function show($id)
    {
        $company = Company::find($id);

        $pref_id = $company->pref_id;
        $pref = Pref::find($pref_id);

        $city_id = $company->city_id;
        $city = City::find($city_id);

        $recommendArticles = Article::withCount('allViews')->orderBy('all_views_count', 'desc')->take(3)->get();
        $newArticles = Article::orderBy('created_at', 'desc')->take(3)->get();
        $videoArticles = Article::whereNotNull('file')->orderBy('created_at', 'desc')->take(3)->get();

        $sameCompanyArticles = Article::where('company_id', $id)->orderBy('created_at', 'desc')->take(3)->get();
        $monthArticles = Article::withCount('monthViews')->orderBy('month_views_count', 'desc')->take(3)->get();

        return view('company.show')->with(compact('company', 'pref', 'city', 'recommendArticles', 'newArticles', 'videoArticles', 'sameCompanyArticles', 'monthArticles'));
    }
}
