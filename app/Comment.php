<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $table = 'comments';
    protected $fillable = ['user_id', 'course_id', 'lesson_id', 'post_id', 'page_id', 'status', 'content', 'parent_id', 'username', 'avatar'];
}
