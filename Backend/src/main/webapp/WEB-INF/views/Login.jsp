<!--Ceci est un projet scolaire pour mettre en place une base de données pour les projets de location de voitures-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="static/css/login.css">
    <link rel="icon" type="image/png" href="static/images/favicon.png">
    <title>Login</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">


        <style>
/*Ceci est un projet scolaire pour mettre en place une base de données pour les projets de location de voitures*/

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
body{
    background-color: #efefef !important;

}
.row{
    background: #fff;
    box-shadow: 0 0 10px black;
}

.btn1{
    border: none;
    outline: none;
    height: 50px;
    width: 100%;
    background-color:  #2196f3;
    color: #fff;
    font-weight: bold;
    border-radius: 5px;
}
.btn1:hover{
    background: #fff;
    border: 1px solid;
    color: #2196f3;

}
h1{
    color: #2196f3;
}
h4{
    color: gray;

}
span{ color:red;
}
@media screen and (max-width: 990px){
    img{
        height: 20px;
         width: auto;
    }

}

        </style>

        <script>
           setTimeout(function() {
                       var message = document.getElementById('message');
                       message.style.display = 'none'; // Masquer le message après 5 secondes
                   }, 3000);
            </script>
</head>

<body>
    <section class="Form my-2 mx-5">
    <br>

        <div class="container">
            <div class="row no-gutters">
                <div class="col-lg-5">
                    <img src="https://www.alfaromeo.com.cy/content/dam/alfa/cross/quadrifoglio/hub/stelvio-giulia-canvas/mobile.jpg" class="img-fluid" alt="des voitures">
                </div>
                <div class="col-lg-7 px-5 pt-5">
                    <h1 class="font-weight-bold py-3">Admin</h1>
                    <h4>Bienvenu!!</h4>

                    <form action="/HelloAdmin" method="post">

                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="text" name="username" placeholder="Nom d'utilisateur" class="form-control my-3 p-4"
                                    required="">
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="password" name="password" placeholder="Mot de passe" class="form-control my-3 p-4"
                                    required="">
                            </div>
                        </div>

                        <span id="message">${message}</span>
                        <div class="form-row">
                            <div class="col-lg-7">
                                <input type="submit" name="login-submit" value="S'identifier" class="btn1 mt-3 mb-5">
                            </div>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </section>


    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
</body>

</html>