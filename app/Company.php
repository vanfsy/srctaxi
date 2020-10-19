<?php

namespace App;
use Encore\Admin\Form\Field\BelongsTo;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Illuminate\Database\Eloquent\Relations\HasOne;

class Company extends Model
{
    protected $table = 'companies';

    public function pref()
    {
        return $this->belongsTo(Pref::class, 'pref_id');
    }

    public function city()
    {
        return $this->belongsTo(City::class, 'city_id');
    }
}
