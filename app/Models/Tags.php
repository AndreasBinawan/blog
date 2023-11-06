<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Tags extends Model
{
    protected $fillable = [
        'tag_name'
    ];

    public function article(){
        return $this->belongsToMany(Articles::class);
    }
}
