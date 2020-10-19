<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $table = 'articles';

    public function company()
    {
        return $this->belongsTo(Company::class, 'company_id');
    }

    public function allViews()
    {
        return $this->hasMany('App\ArticleView');
    }

    public function monthViews()
    {
        $month_start_at = date('Y-m-01') . ' 00:00:00';
        $month_end_at = date('Y-m-31') . ' 23:59:59';

        return $this->hasMany('App\ArticleView')->where('created_at', '>=', $month_start_at)
            ->where('created_at', '<=', $month_end_at);
    }
}
