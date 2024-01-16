import { Component } from '@angular/core';
import {VehiculeModel} from "../models/vehicule.model";
import {VehiculeService} from "../services/vehicule.service";
import { AuthService } from '../services/auth.service';
import { Router } from '@angular/router';
import { HttpClient, HttpHeaders } from '@angular/common/http';
import { apiURL } from '../config';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-list-vehicule',
  templateUrl: './list-vehicule.component.html',
  styleUrls: ['./list-vehicule.component.css']
})
export class ListVehiculeComponent {
  jwt :string ="Bearer"+this.auth.getToken();
  httpHeaders =new HttpHeaders({"Authorization":this.jwt})

  vehicules! : VehiculeModel[];
  constructor(private vehiculeService:VehiculeService, public auth:AuthService, private router:Router
    ,private http:HttpClient
    ){
    /*vehiculeService.vehiculesList().subscribe(v=>{
          this.vehicules=v;
           
    })*/
  
  }

  ngOnInit():void{
    this.auth.loadToken();

    this.vehiculesList().subscribe(v=>{
      this.vehicules=v;
    })

    if(this.auth.getToken()==null || this.auth.isTokenExpired())
      this.router.navigate(['/login']);
   
  }
  vehiculesList(): Observable<VehiculeModel[]>{ //lire les Vehicules
    return this.http.get<VehiculeModel[]>(apiURL+"/Vehicules",  {headers:this.httpHeaders});   
}

  deleteVehicule(vehicule:VehiculeModel){
    let message : boolean = confirm("Are you sure to delete this Car?");
    if(message)
        this.vehiculeService.deleteVehicule(vehicule.idVehicule!).subscribe(()=>{
          //console.log("vehicule deleted successfully.");
          this.loadVehicules();
        });
  }
  loadVehicules():void{
    this.vehiculeService.vehiculesList().subscribe(v=>{
      this.vehicules=v;
    })
  }
  logout():void{
    this.auth.logout();
  }

  
}
