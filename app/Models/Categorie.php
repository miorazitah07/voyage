<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categorie extends Model
{
    protected $fillable =
    [

      ' categories_id','categorie'
    ];

    protected $primaryKey = 'categories_id';
    
            // protected $foreignKey = 
            // [
            //     'photos_id',
            //     'users_id',
            //     'types_id'
            // ];
            public $timestamps = false;

}
