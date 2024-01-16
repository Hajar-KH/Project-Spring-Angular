package com.management.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Vehicule {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idVehicule;
    private String image;
    private String marque;
    //imageVehicule
    private String modele;
    private double prix;
    public Vehicule() {
        super();
    }
    public Vehicule(String matricule,String marque,String modele, double prix){
        this.image=matricule;
        this.marque=marque;
        this.modele=modele;
        this.prix=prix;
    }

    public Long getIdVehicule() {
        return idVehicule;
    }

    public String getImage() {
        return image;
    }

    public String getMarque() {
        return marque;
    }



    public double getPrix() {
        return prix;
    }

    public void setIdVehicule(Long idVehicule) {
        this.idVehicule = idVehicule;
    }

    public void setImage(String matricule) {
        this.image = matricule;
    }

    public void setMarque(String marque) {
        this.marque = marque;
    }


    public void setPrix(double prix) {
        this.prix = prix;
    }

    public String getModele() {
        return modele;
    }

    public void setModele(String modele) {
        this.modele = modele;
    }

    @Override
    public String toString() {
        return "Vehicule{" +
                "idVehicule=" + idVehicule +
                ", matricule='" + image + '\'' +
                ", marque='" + marque + '\'' +
                ", modele='" + modele + '\'' +
                ", prix=" + prix +
                '}';
    }
}
