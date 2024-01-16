import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import {FormsModule} from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AddClientComponent } from './add-client/add-client.component';
import { EditClientComponent } from './edit-client/edit-client.component';
import { ListClientComponent } from './list-client/list-client.component';
import { HttpClientModule } from '@angular/common/http';
import { AddVehiculeComponent } from './add-vehicule/add-vehicule.component';
import { EditVehiculeComponent } from './edit-vehicule/edit-vehicule.component';
import { ListVehiculeComponent } from './list-vehicule/list-vehicule.component';
import { ListReservationComponent } from './list-reservation/list-reservation.component';
import { AddReservationComponent } from './add-reservation/add-reservation.component';
import { EditReservationComponent } from './edit-reservation/edit-reservation.component';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';
import { VehiculeCardComponent } from './vehicule-card/vehicule-card.component';

@NgModule({
  declarations: [
    AppComponent,
    AddClientComponent,
    EditClientComponent,
    ListClientComponent,
    AddVehiculeComponent,
    EditVehiculeComponent,
    ListVehiculeComponent,
    ListReservationComponent,
    AddReservationComponent,
    EditReservationComponent,
    LoginComponent,
    HomeComponent,
    VehiculeCardComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    FormsModule,
    HttpClientModule

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
