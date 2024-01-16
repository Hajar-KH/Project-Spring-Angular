import { Component, Input } from '@angular/core';
import { VehiculeModel } from '../models/vehicule.model';

@Component({
  selector: 'vehicule-card',
  templateUrl: './vehicule-card.component.html',
  styleUrls: ['./vehicule-card.component.css']
})
export class VehiculeCardComponent {
  @Input() vehicule!: VehiculeModel;
  
  isReadMore = true;
 
  showText() {
     this.isReadMore = !this.isReadMore;
  }

}
