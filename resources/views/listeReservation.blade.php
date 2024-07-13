<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<table border=1>
    <tr>
        <th>date_depart</th>
        <th>date_arriver</th>
        <th>paf</th>
        <th>lieu</th>
        <th>nbr_personne</th>
        <th>voyages_id</th>
        <th>numero_tel</th>
    </tr>

    @foreach($liste as $i => $listes)
    @csrf

        <tr>
            <td>{{ $listes['date_depart'] }}</td>
            <td>{{ $listes['date_arriver'] }}</td>
            <td>{{ $listes['paf'] }}</td>
            <td>{{ $listes['lieu'] }}</td>
            <td>{{ $listes['nbr_personne'] }}</td>
            <td>{{ $listes['voyages_id'] }}</td>
            <td>{{ $listes['numero_tel'] }}</td>
            <td>
                            <form action="{{ route('insertReservation', ['id' => $i]) }}" method="POST">
                                @csrf
                                <button type="submit">Insérer dans la base de données</button>
                            </form>
                        </td>
        </tr>
    @endforeach
</table>
</body>
</html>