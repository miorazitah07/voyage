<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Voyage extends Model
{
    protected $fillable =
    [

      'voyages_id','date_depart','date_arriver','lieu','transport','paf','descript','categories_id','photo_url'
    ];

    protected $primaryKey = 'voyages_id';
    
    protected $foreignKey = 
    [
            'categories_id'
    ];
    public $timestamps = false;

    use HasFactory;
}
