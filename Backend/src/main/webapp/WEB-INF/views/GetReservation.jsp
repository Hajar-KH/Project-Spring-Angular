<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Reservation Infos</title>
    </head>
    <body>
        <header>
            <h1>Reservation Infos</h1>
        </header>
        <main>
<div>
           <hr>
           <div>
           <table>
           <thead>
           <tr>
           <th>idVehicule</th>
           <th>idClient</th>
           <th>dateLocation</th>
           <th>dateDebut</th>
             <th>dateFin</th>
           <th>Etat</th>
           </tr>
           </thead>
           <tbody>
           <tr>
           <td>${reservation.idVehicule}</td>
           <td>${reservation.idClient}</td>
           <td>${reservation.dateLocation}</td>
           <td>${reservation.dateDebut}</td>
           <td>${reservation.dateFin}</td>
             <td>${reservation.Etat}</td>
           </tr>
           </tbody>
           </table>

           </div>
           </div>
 </main>
        <footer>
            <a href="ReservationsList">Reservations List</a>
        </footer>
    </body>
</html>
