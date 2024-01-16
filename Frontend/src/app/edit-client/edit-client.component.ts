import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { ClientService } from '../services/client.service';
import { ClientModel } from '../models/client.model';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-edit-client',
  templateUrl: './edit-client.component.html',
  styleUrls: ['./edit-client.component.css']
})
export class EditClientComponent {
currentClient : ClientModel = new ClientModel();
  constructor(private clientService : ClientService, public auth:AuthService,
  private activatedRoute : ActivatedRoute,//pour passer l'id
  private router : Router
  ){}

  ngOnInit():void{
    this.clientService.editClient(this.activatedRoute.snapshot.params['id']).subscribe(p=>{
      this.currentClient=p;  
   })
  }

  updateClient():void{
      this.clientService.updateClient(this.currentClient).subscribe(p=>{
         this.router.navigate(['list-client']);
      })
    
  }

  logout():void{
    this.auth.logout();
  }

}
