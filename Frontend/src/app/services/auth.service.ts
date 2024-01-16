import { Injectable } from '@angular/core';
import { AdminModel } from '../models/admin.model';
import { Router } from '@angular/router';
import { JwtHelperService } from '@auth0/angular-jwt';
import { HttpClient, HttpHeaders, HttpResponse } from '@angular/common/http';
import { Observable, tap } from 'rxjs';


@Injectable({
  providedIn: 'root'
})
export class AuthService {
  /*admins : AdminModel[]=[
    {username:"admin", password:"123", roles:['ADMIN', 'CREATE']},
    //{username:"user", password:"123", roles:['ADMIN']},
    {username:"assistant", password:"123", roles:['ASSISTANT', 'CREATE']},
  ];*/

  private helper:JwtHelperService =new JwtHelperService();
  token!:string;

  public loggedPass!: string;
  public loggedUser! : string;
  public isloggedIn : Boolean=false;
  public roles! : string[];

  constructor(private router:Router, private httpClient:HttpClient) { }
  
  login(admin:AdminModel):Observable<HttpResponse<AdminModel>>{
    const headers = new HttpHeaders({
      'Content-Type': 'application/json',
      
  });
    return this.httpClient.post<AdminModel>('http://localhost:8080/login',admin,{headers,observe:'response'})
    //
    .pipe(
      tap(response => {
        const jwt = response.headers.get('Authorization') || '';
        this.saveToken(jwt);
      })
    )
    //
    ;
 }

  saveToken(jwt:string){
    /*localStorage.setItem('jwt',jwt);
    this.token=jwt;
    this.isloggedIn=true;
    this.decodedJWT();*/
    // Vérifiez si le jeton est non vide et a le format attendu
    if (jwt && jwt.split('.').length === 3) {
      // Vérifiez si le jeton peut être décodé avec succès
      try {
          const decodedToken = this.helper.decodeToken(jwt);
          // Vérifiez la présence des propriétés nécessaires dans le jeton
          if (decodedToken && decodedToken.sub && decodedToken.roles) {
              localStorage.setItem('jwt', jwt);
              this.token = jwt;
              this.isloggedIn = true;
              this.decodedJWT();
              
          } else {
              console.error('Le jeton JWT est incomplet.');
          }
      } catch (error) {
          console.error('Erreur lors du décodage du jeton JWT :', error);
      }
  } else {
      console.error('Le jeton JWT est invalide.');
  }
  }

  getToken():string{
    return this.token;
  }

  decodedJWT():void{
    if(this.token!=undefined) {
      const decodedToken=this.helper.decodeToken(this.token);
      this.roles=decodedToken.roles;
      this.loggedUser=decodedToken.sub;
    }
  }

  isCreate():boolean{
    if(!this.roles)
      return false
    return this.roles.indexOf('CREATE')>-1;
  }
  isAdmin():boolean{
    if(!this.roles)
      return false
    return this.roles.indexOf('ADMIN')>-1;
  
  }

  logout():void{
    this.loggedUser=undefined!;
    this.isloggedIn=false;
    this.roles=undefined!;
    this.token=undefined!;
    localStorage.removeItem('jwt');
    localStorage.removeItem('isloggedIn');
    this.router.navigate(['/login']);
  }
  
  setLoggedUserLS(login:string):void{
    this.loggedUser=login;
    this.isloggedIn=true;
  }

  loadToken():void{
    this.token=localStorage.getItem('jwt')!;
    this.decodedJWT();
  }
  
  isTokenExpired():boolean{
    return this.helper.isTokenExpired(this.token);
  }

}
