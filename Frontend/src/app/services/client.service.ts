import { Injectable } from '@angular/core';
import {ClientModel} from "../models/client.model";
import { HttpClient, HttpErrorResponse, HttpHeaders} from '@angular/common/http';
import { Observable, catchError } from 'rxjs';
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
export class ClientService {
  jwt :string ="Bearer"+this.auth.getToken();
  httpHeaders =new HttpHeaders({"Authorization":this.jwt})
 
  clients : ClientModel[];
  client? : ClientModel;
  constructor(private http: HttpClient, private auth:AuthService){
    this.clients=[];
  }
  clientsList(): Observable<ClientModel[]>{ //lire les clients
      return this.http.get<ClientModel[]>(apiURL+"/Clients",{headers:this.httpHeaders})
      //
      .pipe(
        catchError((error: HttpErrorResponse) => {
          if (error.status === 401) {
            // Gérer l'erreur d'authentification ici (redirection vers la page de connexion, par exemple)
            console.error('Erreur d\'authentification', error);
          } else {
            console.error('Erreur inattendue', error);
          }
          throw error;
        })
      )
      //
      ;   
  }

 /* clientsList():ClientModel[] {
    return this.clients;
}*/
  addClient(client:ClientModel): Observable<ClientModel>{
    return this.http.post<ClientModel>(apiURL+"/Clients/save",client,{headers:this.httpHeaders});
    //this.clients.push(client);
  }

  deleteClient(id:number): Observable<Object>{
    return this.http.delete(apiURL+"/Clients/delete/"+id,{headers:this.httpHeaders});
  }

  editClient(id : number): Observable<ClientModel>{
   //this.client = this.clients.find((p : ClientModel) => p.idclient==id)!;
    const url = `${apiURL}/Clients/${id}`;
    return this.http.get<ClientModel>(url,{headers:this.httpHeaders});
  }

  updateClient(client:ClientModel) : Observable<ClientModel>{
    return this.http.put<ClientModel>(apiURL+"/Clients/update", client,{headers:this.httpHeaders});
  }
  sortClient():void{
    this.clients.sort(
      (x : ClientModel,y : ClientModel) => (x.idclient! > y.idclient! ? 1 : -1)
    )
  }
}
