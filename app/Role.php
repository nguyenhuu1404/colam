<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $fillable = [
        'name', 'display_name', 'description',
    ];
    //n:n
    function perms(){
        return $this->belongsToMany('App\Models\Permission', 'permission_role', 'role_id', 'permission_id');
    }
    //n:n
    function users(){
        return $this->belongsToMany('App\Models\User', 'role_user', 'role_id', 'user_id');
    }
}
