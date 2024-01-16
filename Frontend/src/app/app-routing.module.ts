import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import {ListClientComponent} from "./list-client/list-client.component";
import {AddClientComponent} from "./add-client/add-client.component";
import {EditClientComponent} from "./edit-client/edit-client.component";
import {ListVehiculeComponent} from "./list-vehicule/list-vehicule.component";
import {AddVehiculeComponent} from "./add-vehicule/add-vehicule.component";
import {EditVehiculeComponent} from "./edit-vehicule/edit-vehicule.component";
import {ListReservationComponent} from "./list-reservation/list-reservation.component";
import {AddReservationComponent} from "./add-reservation/add-reservation.component";
import {EditReservationComponent} from "./edit-reservation/edit-reservation.component";
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';
const routes: Routes = [
    {path : "list-client", component :  ListClientComponent},
    {path : "add-client", component : AddClientComponent},
    {path : "edit-client/:id", component : EditClientComponent},
    {path : "list-vehicule", component :  ListVehiculeComponent},
    {path : "add-vehicule", component : AddVehiculeComponent},
    {path : "edit-vehicule/:id", component : EditVehiculeComponent},
    {path : "list-reservation", component :  ListReservationComponent},
    {path : "add-reservation", component : AddReservationComponent},
    {path : "edit-reservation/:id", component : EditReservationComponent},
    {path : "login", component : LoginComponent},
    {path : "home", component : HomeComponent},
    {path : "", redirectTo : "home", pathMatch : "full"}
    
  ];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }