import { Injectable } from '@angular/core';
import {ReservationModel} from "../models/reservation.model";
import { HttpClient, HttpHeaders} from '@angular/common/http';
import { Observable } from 'rxjs';
import { ClientModel } from '../models/client.model';
import { VehiculeModel } from '../models/vehicule.model';
import { apiURL } from '../config';
import { AuthService } from './auth.service';
const httpOptions:{headers:HttpHeaders}={
  headers : new HttpHeaders({
    'content-Type' : 'application/json'
  })
};

@Injectable({
  providedIn: 'root'
})
export class ReservationService {
  jwt :string ="Bearer"+this.auth.getToken();
  httpHeaders =new HttpHeaders({"Authorization":this.jwt})

 reservations : ReservationModel[];
 reservation? : ReservationModel;
    clients : ClientModel[];
    client? : ClientModel;
    vehicules : VehiculeModel[];
    vehicule? : VehiculeModel;

  constructor(private http: HttpClient, private auth:AuthService){
    this.clients=[];
    this.reservations=[];
    this.vehicules=[];
  }

  reservationsList(): Observable<ReservationModel[]>{ //lire les Reservations
      return this.http.get<ReservationModel[]>(apiURL+"/Reservations", {headers:this.httpHeaders});   
  }


  addReservation(reservation:ReservationModel): Observable<ReservationModel>{
    return this.http.post<ReservationModel>(apiURL+"/Reservations/save",reservation, {headers:this.httpHeaders});
  }

  deleteReservation(id:number): Observable<Object>{
    return this.http.delete(apiURL+"/Reservations/delete/"+id, {headers:this.httpHeaders});
  }

  editReservation(id : number): Observable<ReservationModel>{
    const url = `${apiURL}/Reservations/${id}`;
    return this.http.get<ReservationModel>(url, {headers:this.httpHeaders});
  }

  updateReservation(reservation:ReservationModel) : Observable<ReservationModel>{
    return this.http.put<ReservationModel>(apiURL+"/Reservations/update", reservation, {headers:this.httpHeaders});
  }

  sortReservation():void{
    this.reservations.sort(
        (x : ReservationModel,y : ReservationModel) => (x.idReservation! > y.idReservation! ? 1 : -1)
    )
  }

  clientsList():Observable<ClientModel[]>{
    return this.http.get<ClientModel[]>(apiURL+"/Clients", {headers:this.httpHeaders});   
  }

  vehiculesList(): Observable<VehiculeModel[]>{ //lire les Vehicules
    return this.http.get<VehiculeModel[]>(apiURL+"/Vehicules", {headers:this.httpHeaders});   
}

editClient(id : number): Observable<ClientModel>{
    //this.client = this.clients.find((p : ClientModel) => p.idclient==id)!;
     const url = `${apiURL}/Clients/${id}`;
     return this.http.get<ClientModel>(url, {headers:this.httpHeaders});
   }

editVehicule(id : number): Observable<VehiculeModel>{
     const url = `${apiURL}/Vehicules/${id}`;
     return this.http.get<VehiculeModel>(url, {headers:this.httpHeaders});
   }

}
