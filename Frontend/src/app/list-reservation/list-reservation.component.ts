import { Component } from '@angular/core';
import { ReservationModel } from '../models/reservation.model';
import {ReservationService} from "../services/reservation.service";
import { AuthService } from '../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-list-reservation',
  templateUrl: './list-reservation.component.html',
  styleUrls: ['./list-reservation.component.css']
})
export class ListReservationComponent {
  reservations! : ReservationModel[];

  constructor(private reservationService:ReservationService, public auth:AuthService, private router:Router){
    reservationService.reservationsList().subscribe(r=>{
          this.reservations=r;
           // console.log(c);
    })
  
  }

  ngOnInit():void{
    this.auth.loadToken();
    if(this.auth.getToken()==null || this.auth.isTokenExpired())
      this.router.navigate(['/login']);
   
  }

 
  deleteReservation(idReservation: number | undefined): void {
    if (idReservation !== undefined) {
      let message: boolean = confirm("Are you sure to delete this reservation?" + idReservation);
      if (message) {
        this.reservationService.deleteReservation(idReservation).subscribe(() => {
          //console.log("Reservation deleted successfully.");
          this.loadReservations();
        });
      }
    } else {
      console.error('idReservation is undefined. Cannot delete reservation.');
    }
  }
  loadReservations():void{
    this.reservationService.reservationsList().subscribe(c=>{
      this.reservations=c;
    })
  }

  logout():void{
    this.auth.logout();
  }
}
