import { Injectable } from '@angular/core';
import { VehiculeModel } from '../models/vehicule.model';
import { HttpClient, HttpHeaders} from '@angular/common/http';
import { Observable } from 'rxjs';
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
export class VehiculeService {
  jwt :string ="Bearer"+this.auth.getToken();
  httpHeaders =new HttpHeaders({"Authorization":this.jwt})

  vehicules : VehiculeModel[];
  vehicule? : VehiculeModel;
  constructor(private http: HttpClient, private auth:AuthService){
    this.vehicules=[];
  }
  vehiculesList(): Observable<VehiculeModel[]>{ //lire les Vehicules
      return this.http.get<VehiculeModel[]>(apiURL+"/Vehicules",  {headers:this.httpHeaders});   
  }

 /* VehiculesList():VehiculeModel[] {
    return this.vehicules;
}*/
  addVehicule(vehicule:VehiculeModel): Observable<VehiculeModel>{
    const formData = new FormData();
  formData.append('vehicule', JSON.stringify(vehicule));

  if (vehicule.image !== undefined) {
    formData.append('file', vehicule.image);
  }

  // Spécifiez le type de contenu multipart/form-data
  //const options = { headers: new HttpHeaders({ 'Content-Type': 'multipart/form-data' }) };

    return this.http.post<VehiculeModel>(apiURL+"/Vehicules/save",vehicule, {headers:this.httpHeaders});
    //this.vehicules.push(vehicule);
  }

  deleteVehicule(id:number): Observable<Object>{
    return this.http.delete(apiURL+"/Vehicules/delete/"+id,  {headers:this.httpHeaders});
  }

  editVehicule(id : number): Observable<VehiculeModel>{
   //this.vehicule = this.vehicules.find((p : VehiculeModel) => p.idVehicule==id)!;
    const url = `${apiURL}/Vehicules/${id}`;
    return this.http.get<VehiculeModel>(url);
  }

  updateVehicule(vehicule:VehiculeModel) : Observable<VehiculeModel>{
    return this.http.put<VehiculeModel>(apiURL+"/Vehicules/update", vehicule,  {headers:this.httpHeaders});
  }
  sortVehicule():void{
    this.vehicules.sort(
      (x : VehiculeModel,y : VehiculeModel) => (x.idVehicule! > y.idVehicule! ? 1 : -1)
    )
  }
}
