<%@page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

                <!DOCTYPE html>

                <html lang="en">
                    <head>
                        <meta charset="UTF-8">
                        <meta http-equiv="X-UA-Compatible" content="IE=edge">
                        <meta name="viewport" content="width=device-width, initial-scale=1.0">
                        <title>Reservations</title>
                        <style>
                        body{
                            background-color: #525252;
                        }
                        .centered-form{
                        	margin-top: 60px;
                        }

                        .centered-form .panel{
                        	background: rgba(255, 255, 255, 0.8);
                        	box-shadow: rgba(0, 0, 0, 0.3) 20px 20px 20px;
                        }
                #body-row {
                    margin-left:0;
                    margin-right:0;
                }
                #sidebar-container {
                    min-height: 100vh;
                    background-color: #333;
                    padding: 0;
                }

                /* Sidebar sizes when expanded and expanded */
                .sidebar-expanded {
                    width: 230px;
                }
                .sidebar-collapsed {
                    width: 60px;
                }

                /* Menu item*/
                #sidebar-container .list-group a {
                    height: 50px;
                    color: white;
                }

                /* Submenu item*/
                #sidebar-container .list-group .sidebar-submenu a {
                    height: 45px;
                    padding-left: 30px;
                }
                .sidebar-submenu {
                    font-size: 0.9rem;
                }

                /* Separators */
                .sidebar-separator-title {
                    background-color: #333;
                    height: 35px;
                }
                .sidebar-separator {
                    background-color: #333;
                    height: 25px;
                }
                .logo-separator {
                    background-color: #333;
                    height: 60px;
                }

                /* Closed submenu icon */
                #sidebar-container .list-group .list-group-item[aria-expanded="false"] .submenu-icon::after {
                  content: " \f0d7";
                  font-family: FontAwesome;
                  display: inline;
                  text-align: right;
                  padding-left: 10px;
                }
                /* Opened submenu icon */
                #sidebar-container .list-group .list-group-item[aria-expanded="true"] .submenu-icon::after {
                  content: " \f0da";
                  font-family: FontAwesome;
                  display: inline;
                  text-align: right;
                  padding-left: 10px;
                }
                .custab{
                    border: 1px solid #ccc;
                    padding: 5px;
                    margin: 5% 0;
                    box-shadow: 3px 3px 2px #ccc;
                    transition: 0.5s;
                    margin-left:120px;
                    }
                .custab:hover{
                    box-shadow: 3px 3px 0px transparent;
                    transition: 0.5s;
                    }

                            </style>
                    </head>
                   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
                   <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
                   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
                   <!------ Include the above in your HEAD tag ---------->

                   <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
                   <!-- Bootstrap NavBar -->
                   <nav class="navbar navbar-expand-md navbar-dark bg-primary">
                       <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                           <span class="navbar-toggler-icon"></span>
                       </button>
                       <a class="navbar-brand" href="#">
                           <img src="https://www.pngmart.com/files/22/Car-Logo-PNG-Transparent.png" width="30" height="30" class="d-inline-block align-top" alt="">
                           <span class="menu-collapsed">location</span>
                       </a>
                       <div class="collapse navbar-collapse" id="navbarNavDropdown">
                           <ul class="navbar-nav ml-auto">
                               <li class="nav-item active">
                                   <a class="nav-link" href="#top">Home <span class="sr-only">(current)</span></a>
                               </li>
                               <li class="nav-item">
                                   <a class="nav-link" href="/Home">logout</a>
                               </li>

                               <!-- This menu is hidden in bigger devices with d-sm-none.
                              The sidebar isn't proper for smaller screens imo, so this dropdown menu can keep all the useful sidebar itens exclusively for smaller screens  -->
                               <li class="nav-item dropdown d-sm-block d-md-none">
                                   <a class="nav-link dropdown-toggle" href="#" id="smallerscreenmenu" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Menu </a>
                                   <div class="dropdown-menu" aria-labelledby="smallerscreenmenu">
                                       <a class="dropdown-item" href="#top">reser</a>
                                       <a class="dropdown-item" href="#top">car</a>
                                       <a class="dropdown-item" href="#top">clie</a>

                                   </div>
                               </li><!-- Smaller devices menu END -->
                           </ul>
                       </div>
                   </nav><!-- NavBar END -->
                   <!-- Bootstrap row -->
                   <div class="row" id="body-row">
                       <!-- Sidebar -->
                       <div id="sidebar-container" class="sidebar-expanded d-none d-md-block">
                           <!-- d-* hiddens the Sidebar in smaller devices. Its itens can be kept on the Navbar 'Menu' -->
                           <!-- Bootstrap List Group -->
                           <ul class="list-group">
                               <!-- Separator with title -->
                               <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                                   <small>MAIN MENU</small>
                               </li>
                               <!-- /END Separator -->
                               <!-- Menu with submenu -->
                             <a href="/createReservation" class="bg-dark list-group-item list-group-item-action">
                                           <div class="d-flex w-100 justify-content-start align-items-center">
                                               <span class="fa fa-calendar fa-fw mr-3"></span>
                                               <span class="menu-collapsed">Reservation</span>
                                           </div>
                                       </a>
                               <!-- Submenu content -->



                               <!-- Separator with title -->
                               <li class="list-group-item sidebar-separator-title text-muted d-flex align-items-center menu-collapsed">
                                   <small>OPTIONS</small>
                               </li>
                               <!-- /END Separator -->
                               <a href="/createClient" class="bg-dark list-group-item list-group-item-action">
                                   <div class="d-flex w-100 justify-content-start align-items-center">
                                       <span class="fa fa-calendar fa-fw mr-3"></span>
                                       <span class="menu-collapsed">Client</span>
                                   </div>
                               </a>
                               <a href="/createVehicule" class="bg-dark list-group-item list-group-item-action">
                                   <div class="d-flex w-100 justify-content-start align-items-center">
                                       <span class="fa fa-envelope-o fa-fw mr-3"></span>
                                       <span class="menu-collapsed">Vehicule </span>
                                   </div>
                               </a>
                               <!-- Separator without title -->
                               <li class="list-group-item sidebar-separator menu-collapsed"></li>
                               <!-- /END Separator -->

                               <a href="/getAdmin" data-toggle="sidebar-colapse" class="bg-dark list-group-item list-group-item-action d-flex align-items-center">
                                   <div class="d-flex w-100 justify-content-start align-items-center">
                                       <span id="collapse-icon" class="fa fa-2x mr-3"></span>
                                       <span id="collapse-text" class="menu-collapsed">Profile</span>
                                   </div>
                               </a>
                           </ul><!-- List Group END-->
                       </div><!-- sidebar-container END -->
                       <!-- MAIN -->
                       <div class="col p-4">
                           <h1 class="display-4">Reservations List </h1>
                           <div class="card">






                			    		<form role="form" >
                <div class="container" style="center">
                    <div class="row col-md-6 col-md-offset-2 custyle">
                  <center>  <table class="table table-striped custab" ><br>
                    <thead >
                    <a href="/createReservation" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new reservation</a>
                        <tr>
                            <tr>
                                       <th>Id </th>
                                                 <th>Vehicule</th>
                                                 <th>Client</th>
                                                 <th>Date Reservation</th>
                                                 <th>Date Prise</th>
                                                 <th>Date Retour</th>
                                                 <th>Etat</th>


                            <th class="text-center">delete</th>
                              <th class="text-center">edit</th>
                        </tr>
                    </thead>
                     <c:forEach var="reservation" items="${reservations}">
                    <tr>
                                  <td>${reservation.idReservation}</td>
                                            <td>${reservation.vehicule.marque}</td>
                                            <td>${reservation.client.nom} ${reservation.client.prenom}</td>
                                            <fmt:formatDate pattern="yyyy-MM-dd" value="${reservation.dateReserv}" var="formatDateReserv"/>
                                            <td>${formatDateReserv}</td>
                                            <fmt:formatDate pattern="yyyy-MM-dd" value="${reservation.datePrise}" var="formatDatePrise"/>
                                            <td>${formatDatePrise}</td>
                                            <fmt:formatDate pattern="yyyy-MM-dd" value="${reservation.dateRetour}" var="formatDateRetour"/>
                                            <td>${formatDateRetour}</td>
                                            <td>${reservation.etat}</td>
                                             <td><a href="deleteReservation?id=${reservation.idReservation}" class="btn btn-danger btn-xs"
                                             onClick="return confirm('Are you sure to delete this item?')" >Delete</a></td>
                                             <td><a href="showReservation?id=${reservation.idReservation}" class='btn btn-info btn-xs'>Edit</a></td>

                               </tr>
                 </c:forEach>
                       </table><center>
                    </div>
                </div>
                			    		</form>


                           </div>
                       </div><!-- Main Col END -->
                   </div><!-- body-row END -->
                </html>



