import { Component } from '@angular/core';
import {ClientModel} from '../models/client.model';
import {ClientService} from '../services/client.service';
import { Router } from '@angular/router';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-add-client',
  templateUrl: './add-client.component.html',
  styleUrls: ['./add-client.component.css']
})
export class AddClientComponent {
  newClient:ClientModel =new ClientModel();
  constructor(private clientService: ClientService, public auth:AuthService,
  private router : Router
  ){
  }

  addClient():void{
  //this.clientService.addClient(this.newClient);
    this.clientService.addClient(this.newClient).subscribe(p=>{
      this.router.navigate(['list-client']);
    })  

  }

  logout():void{
    this.auth.logout();
  }
}
