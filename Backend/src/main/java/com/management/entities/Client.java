package com.management.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;


@Entity
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idclient;
    private String cin;
    private String nom;
    private String prenom;
    private String email;
    private String telephone;
    private String adresse;


    @Override
    public String toString() {
        return "Client{" +
                "idClient=" + idclient +
                ", cin=" + cin +
                ", nom='" + nom + '\'' +
                ", prenom=" + prenom +
                ", email=" + email +
                ", tel=" + telephone +
                ", adresse=" + adresse +


                '}';
    }

    public Long getIdClient() {
        return idclient;
    }

    public void setIdClient(Long idClient) {
        this.idclient = idClient;
    }

    public Client(String cin, String nom, String prenom, String email, String telephone, String adresse) {
        super();
        this.cin = cin;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.telephone = telephone;
        this.adresse = adresse;

    }

    public Client() {
        super();
    }

    public Long getIdclient() {
        return idclient;
    }

    public void setIdclient(Long idclient) {
        this.idclient = idclient;
    }

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }
}