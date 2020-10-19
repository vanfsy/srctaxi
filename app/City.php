<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class City extends Model
{
    protected $table = 'cities';

    public function parent(){
        return $this->belongsTo(Pref::class, 'pref_id');
    }

    public static function options($id) {
        if (! $self = static::find($id)) {
            return [];
        }

        return $self->hasMany(City::class, 'pref_id', 'pref_id')->pluck('name', 'id');
    }
}
