import { ClientModel } from "./client.model";
import { VehiculeModel } from "./vehicule.model";

export class ReservationModel{
    idReservation? : number;
    vehicule? : VehiculeModel;
    client? : ClientModel;
    dateReserv? : Date;
    datePrise? : Date;
    dateRetour? : Date;
    etat? : String;
   
   
   }
   