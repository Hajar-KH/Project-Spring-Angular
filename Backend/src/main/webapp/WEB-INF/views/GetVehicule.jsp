<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Vehicule Infos</title>
    </head>
    <body>
        <header>
            <h1>Vehicule Infos</h1>
        </header>
        <main>
<div>
           <hr>
           <div>
           <table>
           <thead>
           <tr>
           <th>matricule</th>
           <th>marque</th>
           <th>modèle</th>
           <th>prix</th>

           </tr>
           </thead>
           <tbody>
           <tr>
           <td>${vehicule.matricule}</td>
                <td>${vehicule.marque}</td>
                     <td>${vehicule.modèle}</td>
                          <td>${vehicule.prix}</td>

           </tr>
           </tbody>
           </table>

           </div>
           </div>
 </main>
        <footer>
            <a href="VehiculesList">Vehicules List</a>
        </footer>
    </body>
</html>
