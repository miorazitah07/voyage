<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Résultats de Filtrage</title>
</head>
<body>
    @foreach($result as $res)
         <p> <a href="{{route('detail',['voyages_id'=> $res -> voyages_id])}}"> {{ $res->lieu}}  {{ $res -> voyages_id}} </a> </p>
    @endforeach
</body>
</html>