<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
        @csrf
        @foreach($voyages as $voyage)
            <p>  {{ $voyage->lieu}}  </p>
            <p> <img src="{{ $voyage->photo_url}}" alt="img"> </p>
        @endforeach

        @foreach($details as $detail)
            <p>  {{  $detail->detail}}  </p>
        @endforeach   
          @csrf
            <form action="{{route('reservation',['voyages_id'=> $voyage -> voyages_id])}}" method="post">
            @csrf
                    <p>Nbr de personne <input type="number" name="nbr">  </p>
                    <p>Numero <input type="text" name="numero">  </p>
                     <button type="submit">Reserver</button>
            </form>
        
</body>
</html>