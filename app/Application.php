<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Application extends Model
{
    protected $table = 'applications';

    public function company()
    {
        return $this->belongsTo(Company::class);
    }

    public function pref()
    {
        return $this->belongsTo(Pref::class, 'pref_id');
    }
}
