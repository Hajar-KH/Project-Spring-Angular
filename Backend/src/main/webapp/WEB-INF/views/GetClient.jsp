<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Client Infos</title>
    </head>
    <body>
        <header>
            <h1>Client Infos</h1>
        </header>
        <main>
<div>
           <hr>
           <div>
           <table>
           <thead>
           <tr>
           <th>CIN</th>
           <th>NOM</th>
           <th>PRENOM</th>

           <th>ADRESSE</th>
            <th>Email</th>
           <th>password</th>
           </tr>
           </thead>
           <tbody>
           <tr>
           <td>${client.cin}</td>
           <td>${client.nom}</td>
           <td>${client.prenom}</td>

           <td>${client.adresse}</td>
             <td>${client.login}</td>
            <td>${client.password}</td>
           </tr>
           </tbody>
           </table>

           </div>
           </div>
 </main>
        <footer>
            <a href="ClientsList">Clients List</a>
        </footer>
    </body>
</html>
