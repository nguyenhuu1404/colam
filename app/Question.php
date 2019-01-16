<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $table = 'questions';

    protected $fillable = ['slug', 'name'];
    public function test(){
        return $this->belongsTo('App\Test', 'test_id', 'id');
    }

}
