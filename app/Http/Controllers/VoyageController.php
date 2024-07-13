<?php

namespace App\Http\Controllers;
use App\Models\Voyage;
use App\Models\Detail;
use App\Models\Reservation;
use Illuminate\Http\Request;

class VoyageController extends Controller
{
      public function filtreByCategorie($id)
         {
               $res=Voyage::where('categories_id',$id)->get();
               return view('welcome',['result'=> $res]);
         }

      public function detailVoyage($voyages_id)
         {
               $resVoyage=Voyage::where('voyages_id',$voyages_id)->get();
               $resDetail=Detail::where('voyages_id', $voyages_id)->get();
               return view('detail',['voyages'=> $resVoyage , 'details'=> $resDetail]);
         }
         
      public function voyagePopulaire()
      {
            $liste=Reservation::selectRaw('*, COUNT(voyages_id) as compte')
            ->groupBy('voyages_id')
            ->orderBy('compte', 'desc')
            ->get();
            
            return view('listeReservation', compact('liste'));
      }
  
}
