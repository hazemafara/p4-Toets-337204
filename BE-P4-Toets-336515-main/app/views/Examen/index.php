<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $data['title'] ?></title>
</head>
<style>
    body {
        font-family: Verdana;
    }

    table {
        border-collapse: collapse;
        margin-top: 2em;
        width: 100%;
        /* Set the width of the table */
    }

    th,
    td {
        padding: 0.5em;
        text-align: left;
        border: 1px solid #ddd;
    }

    th {
        background-color: #f2f2f2;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    tr:hover {
        background-color: #e6e6e6;
    }
</style>

<body>
    <h2><?= $data['title'] ?></h2>

    <table>
        <thead>
            <th>Naam Examinator</th>
            <th>Datum Examen</th>
            <th>Rijbewijscategorie</th>
            <th>Rijschool</th>
            <th>Stad</th>
            <th>Uitslag Examen</th>
        </thead>
        <tbody>
            <?php foreach ($data['examens'] as $examen) : ?>
                <tr>
                    <td><?= $examen->Naam ?></td>
                    <td><?= $examen->Datum ?></td>
                    <td><?= $examen->Rijbewijscategorie ?></td>
                    <td><?= $examen->Rijschool ?></td>
                    <td><?= $examen->Stad ?></td>
                    <td><?= ($examen->Uitslag == 1) ? 'geslaagd' : 'gezakt'; ?></td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>
</body>

</html>