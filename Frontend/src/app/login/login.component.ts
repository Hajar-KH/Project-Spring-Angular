import { Component } from '@angular/core';
import { AdminModel } from '../models/admin.model';
import { AuthService } from '../services/auth.service';
import { Router } from '@angular/router';
import { HttpRequest, HttpResponse } from '@angular/common/http';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {
  error : number =0;
  admin : AdminModel = new AdminModel();

  constructor(private auth: AuthService, private router:Router){

  }

  onLoggedin(){
    this.auth.login(this.admin).subscribe({
      next:(data:HttpResponse<AdminModel>):void=>{
        let jwtToken:string|null = data.headers.get("Authorization")!;
        this.auth.saveToken(jwtToken);
        //
        this.router.navigate(['/list-client'])
      },
      error: (error:any)=>{
        this.error=1;
      }
    })
   }

}
