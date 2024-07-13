<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reservation;
use App\Models\Voyage;
use Illuminate\Support\Facades\Session;


class ReservationController extends Controller
{
    public function sessionInsertReservation(Request $request,$voyages_id)
    {
        $request->validate
        ([
            'nbr' => 'required',
            'numero' => 'required|string|max:10',
        ]);

        // Récupérer les valeurs actuelles de la session
        $res = Session::get('reservation', []);
        
        $voyage = Voyage::find($voyages_id);

        if (!$voyage) {
            // Handle the case where the voyage is not found
            return redirect()->route('sessionList')->with('error', 'Voyage not found.');
        }

        // Ajouter les nouvelles valeurs
        $res[] = [
            'date_depart'=> $voyage->date_depart,
            'date_arriver'=>$voyage->date_arriver,
            'lieu'=>$voyage->lieu,
            'paf'=>$voyage->paf,
            'nbr_personne'=>$request->input('nbr'),
            'voyages_id'=>$voyage->voyages_id,
            'photo_url'=>$voyage->photo_url,
            'numero_tel'=>$request->input('numero'),
        ];

        // Stocker les valeurs mises à jour dans la session
        Session::put('reservation',$res);
        return redirect()->route('sessionList');
    }


    public function insertReservation(Request $request, $i)
    {
        $res = Session::get('reservation', []);
        if (isset($res[$i])) {
            Reservation::create([
            'date_depart'=> $res[$i]['date_depart'],
            'date_arriver'=>$res[$i]['date_arriver'],
            'lieu'=>$res[$i]['lieu'],
            'paf'=>$res[$i]['paf'],
            'nbr_personne'=>$res[$i]['nbr_personne'],
            'voyages_id'=>$res[$i]['voyages_id'],
            'photo_url'=>$res[$i]['photo_url'],
            'numero_tel'=>$res[$i]['numero_tel'],
            ]);
    
            // Optionnel : retirer la ligne insérée de la session
            unset($res[$i]);
            Session::put('reservation', array_values($res));
        }
        return redirect()->route('sessionList')->with('status', 'Ligne insérée dans la base de données!');
    }

    public function sessionListReservation()
    {
        $liste = Session::get('reservation', []);
       
        return view('listeReservation', compact('liste'));
    }


}
