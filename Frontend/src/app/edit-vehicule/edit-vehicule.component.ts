import { Component } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { VehiculeService } from '../services/vehicule.service';
import { VehiculeModel } from '../models/vehicule.model';
import { AuthService } from '../services/auth.service';

@Component({
  selector: 'app-edit-vehicule',
  templateUrl: './edit-vehicule.component.html',
  styleUrls: ['./edit-vehicule.component.css']
})
export class EditVehiculeComponent {
  imageFile?: File | null; // Ajouter une propriété pour stocker le fichier d'image
  currentVehicule : VehiculeModel = new VehiculeModel();
  constructor(private vehiculeService : VehiculeService, public auth:AuthService,
  private activatedRoute : ActivatedRoute,//pour passer l'id
  private router : Router
  ){}

  ngOnInit():void{
    this.vehiculeService.editVehicule(this.activatedRoute.snapshot.params['id']).subscribe(p=>{
      this.currentVehicule=p;  
   })
  }
  onFileSelected(event: any): void {
    const fileList: FileList = event.target.files;
    if (fileList.length > 0) {
      this.imageFile = fileList[0];
    }
  }
  updateVehicule():void{
    
    if (this.imageFile) {
      const reader = new FileReader();
      reader.onload = (e) => {
        const result = reader.result;
        this.currentVehicule.image = result as string;
        console.log('Updating Vehicule:', this.currentVehicule);
    this.vehiculeService.updateVehicule(this.currentVehicule).subscribe(p => {
      console.log('Update successful!', p);
      this.router.navigate(['list-vehicule']);
    });
      };
      reader.readAsDataURL(this.imageFile);
    } else {
      console.log('Updating Vehicule:', this.currentVehicule);
    this.vehiculeService.updateVehicule(this.currentVehicule).subscribe(p => {
      console.log('Update successful!', p);
      this.router.navigate(['list-vehicule']);
    });
    }
  }

  logout():void{
    this.auth.logout();
  }

}