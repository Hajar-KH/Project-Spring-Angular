import { Component, OnInit } from '@angular/core';
import { VehiculeModel } from '../models/vehicule.model';
import { VehiculeService } from '../services/vehicule.service';
import { VehiculeCardComponent } from '../vehicule-card/vehicule-card.component';
import { Observable } from 'rxjs';
import { apiURL } from '../config';
import { HttpClient } from '@angular/common/http';
@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit{
  vehicules! : VehiculeModel[];
  


  constructor(private vehiculeService:VehiculeService,private http:HttpClient){
    /*vehiculeService.vehiculesList().subscribe(v=>{
          this.vehicules=v;
           
    })*/
  
  }
  //
  ngOnInit(): void {
    this.loadVehicules(); }

  loadVehicules(): void {
    this.vehiculesList().subscribe(v => {
      this.vehicules = v;
    });
  }
  vehiculesList(): Observable<VehiculeModel[]>{ //lire les Vehicules
    return this.http.get<VehiculeModel[]>(apiURL+"/Vehicules");   
}
  isReadMore = true;
 
  showText() {
     this.isReadMore = !this.isReadMore;
  }
  
}