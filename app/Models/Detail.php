<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Detail extends Model
{
    protected $fillable =
    [

      'details_id','voyages_id','detail'
    ];

    protected $primaryKey = 'details_id';
    protected $foreignKey = 
    [
            'voyages_id'
    ];
   
    public $timestamps = false;


}
