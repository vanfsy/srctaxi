<?php

namespace App;
use Illuminate\Database\Eloquent\Model;

class Pref extends Model
{
    protected $table = 'prefs';

    public function cities() {
        return $this->hasMany(City::class);
    }
}
