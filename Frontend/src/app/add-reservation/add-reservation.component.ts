import { Component } from '@angular/core';
import { ReservationModel } from '../models/reservation.model';
import { ReservationService } from '../services/reservation.service';
import { Router } from '@angular/router';
import { ClientModel } from '../models/client.model';
import { VehiculeModel } from '../models/vehicule.model';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-add-reservation',
  templateUrl: './add-reservation.component.html',
  styleUrls: ['./add-reservation.component.css']
})
export class AddReservationComponent {
  newReservation:ReservationModel =new ReservationModel();
  clients! :ClientModel[];
  vehicules! : VehiculeModel[];
  newClient!: ClientModel;
  newVehicule!: VehiculeModel;
  newClientId!:number;
  newVehiculeId!:number;

  constructor(private reservationService: ReservationService,public auth:AuthService,
  private router : Router
  ){
    reservationService.clientsList().subscribe(c=>{
      this.clients=c;    
    })
    reservationService.vehiculesList().subscribe(v=>{
      this.vehicules=v;
    })
  }

  addReservation():void{
    this.newReservation.client=this.clients.find(c=>c.idclient==this.newClientId);
    this.newReservation.vehicule=this.vehicules.find(c=>c.idVehicule==this.newVehiculeId);
    this.reservationService.addReservation(this.newReservation).subscribe(p=>{
      this.router.navigate(['list-reservation']);
    })
  }

  logout():void{
    this.auth.logout();
  }
}
