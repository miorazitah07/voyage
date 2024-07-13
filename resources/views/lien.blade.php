<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des Catégories</title>
</head>
<body>
    @foreach($results as $result)
   <p> <a href="{{ route('filtre', ['id' => $result->categories_id]) }}"> {{ $result->categorie }}</a> </p>
    @endforeach
</body>
</html>