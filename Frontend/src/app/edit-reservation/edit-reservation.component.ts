import { Component } from '@angular/core';
import { ReservationModel } from '../models/reservation.model';
import { ReservationService } from '../services/reservation.service';
import { Router, ActivatedRoute } from '@angular/router';
import { ClientModel } from '../models/client.model';
import { VehiculeModel } from '../models/vehicule.model';
import { AuthService } from '../services/auth.service';
@Component({
  selector: 'app-edit-reservation',
  templateUrl: './edit-reservation.component.html',
  styleUrls: ['./edit-reservation.component.css']
})
export class EditReservationComponent {
  currentReservation : ReservationModel = new ReservationModel();
  clients!:ClientModel[];
  vehicules!:VehiculeModel[];
  newClient!: ClientModel;
  newVehicule!: VehiculeModel;
  newClientId!:number;
  newVehiculeId!:number;

  constructor(private reservationService : ReservationService, public auth:AuthService,
  private activatedRoute : ActivatedRoute,//pour passer l'id
  private router : Router
  
  ){}

  ngOnInit():void{
    this.reservationService.clientsList().subscribe(c=>{
      this.clients=c;
    })
    this.reservationService.vehiculesList().subscribe(v=>{
      this.vehicules=v;
    })
    this.reservationService.editReservation(this.activatedRoute.snapshot.params['id']).subscribe(p=>{
      this.currentReservation=p; 
      this.newClientId=this.currentReservation.client?.idclient!; 
      this.newVehiculeId=this.currentReservation.vehicule?.idVehicule!; 

   })
   
  }

  updateReservation():void{
    this.currentReservation.client=this.clients.find(c=>c.idclient==this.newClientId);
    this.currentReservation.vehicule=this.vehicules.find(c=>c.idVehicule==this.newVehiculeId);
   
      this.reservationService.updateReservation(this.currentReservation).subscribe(p=>{

         this.router.navigate(['list-reservation']);
      })
    
  }

  logout():void{
    this.auth.logout();
  }
}
