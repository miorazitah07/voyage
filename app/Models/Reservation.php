<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reservation extends Model
{
    protected $fillable =
    [

      'reservations_id','date_depart',' date_arriver','lieu','paf','nbr_personne','voyages_id','photo_url','numero_tel'
    ];

    protected $primaryKey = 'reservations_id';
    
    protected $foreignKey = 
    [
            'voyages_id'
    ];
    public $timestamps = false;
}