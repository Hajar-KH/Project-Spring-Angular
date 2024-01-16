import { Component } from '@angular/core';
import {ClientModel} from "../models/client.model";
import {ClientService} from "../services/client.service";
import { AuthService } from '../services/auth.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-list-client',
  templateUrl: './list-client.component.html',
  styleUrls: ['./list-client.component.css']
})
export class ListClientComponent {
clients! : ClientModel[];
  constructor(private clientService:ClientService, public auth:AuthService,private router:Router){
    clientService.clientsList().subscribe(c=>{
          this.clients=c;
           // console.log(c);
    })
  //this.clients=clientService.clientsList();

  }

  ngOnInit():void{
    this.auth.loadToken();
    if(this.auth.getToken()==null || this.auth.isTokenExpired()){
      this.router.navigate(['/login']);
    }//
    else {
      this.loadClients();
    }
    //
  }


  deleteClient(idclient: number | undefined): void {
    if (idclient !== undefined) {
      let message: boolean = confirm("Are you sure to delete this client?" + idclient);
      if (message) {
        this.clientService.deleteClient(idclient).subscribe(() => {
          //console.log("Client deleted successfully.");
          this.loadClients();
        });
      }
    } else {
      console.error('idclient is undefined. Cannot delete client.');
    }
  }
  
  loadClients():void{
    this.clientService.clientsList().subscribe(c=>{
      this.clients=c;
    })
  }
  logout():void{
    this.auth.logout();
  }

}
