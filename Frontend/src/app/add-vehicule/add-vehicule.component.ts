import { Component } from '@angular/core';
import {VehiculeModel} from '../models/vehicule.model';
import {VehiculeService} from '../services/vehicule.service';
import { Router } from '@angular/router';
import { AuthService } from '../services/auth.service';
@Component({
  selector: 'app-add-vehicule',
  templateUrl: './add-vehicule.component.html',
  styleUrls: ['./add-vehicule.component.css']
})
export class AddVehiculeComponent {
  newVehicule:VehiculeModel =new VehiculeModel();
  imageFile?: File | null; // Ajouter une propriété pour stocker le fichier d'image

  constructor(private vehiculeService: VehiculeService, public auth:AuthService,
  private router : Router
  ){
  }
  onFileSelected(event: any): void {
    const fileList: FileList = event.target.files;
    if (fileList.length > 0) {
      this.imageFile = fileList[0];
    }
  }
  addVehiculeModel():void{
 
    
    if (this.imageFile) {
      const reader = new FileReader();
      reader.onload = (e) => {
        const result = reader.result;
        if (result) {
          this.newVehicule.image = result as string;
          this.vehiculeService.addVehicule(this.newVehicule).subscribe(p=>{
            this.router.navigate(['list-vehicule']);
          })
        } else {
          console.error('Failed to convert image to Blob.');
        }
      };
      reader.readAsDataURL(this.imageFile);
    } else {
      this.vehiculeService.addVehicule(this.newVehicule).subscribe(p=>{
        this.router.navigate(['list-vehicule']);
      })
    }

  }


  /*onFileSelected(event: any): void {
    const file = event.target.files[0];
    const reader = new FileReader();
  
    reader.onload = () => {
      // Convertir le contenu du fichier en chaîne Base64
      this.newVehicule.image = reader.result as string;
    };
  
    // Lire le contenu du fichier en tant que Data URL
    reader.readAsDataURL(file);
  }*/
  logout():void{
    this.auth.logout();
  }
  

}