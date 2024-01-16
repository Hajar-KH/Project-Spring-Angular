package com.management.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.PastOrPresent;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
public class Reservation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idReservation;

    @ManyToOne
    private Vehicule vehicule;
    @ManyToOne
    private Client client;

    @PastOrPresent
    @DateTimeFormat(pattern =  "yyyy-MM-dd")
    private Date dateReserv;
    @PastOrPresent
    @DateTimeFormat(pattern =  "yyyy-MM-dd")
    private Date datePrise;
    @PastOrPresent
    @DateTimeFormat(pattern =  "yyyy-MM-dd")
    private Date dateRetour;
    private String etat;

    public Reservation(){super();}

    public Reservation(Long idReservation, Vehicule vehicule, Client client, Date dateReserv, Date datePrise, Date dateRetour, String etat) {
        super();
        this.idReservation = idReservation;
        this.vehicule = vehicule;
        this.client = client;
        this.dateReserv = dateReserv;
        this.datePrise = datePrise;
        this.dateRetour = dateRetour;
        this.etat = etat;
    }

    public Long getIdReservation() {
        return idReservation;
    }

    public void setIdReservation(Long idReservation) {
        this.idReservation = idReservation;
    }

    public Vehicule getVehicule() {
        return vehicule;
    }

    public void setVehicule(Vehicule vehicule) {
        this.vehicule = vehicule;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Date getDateReserv() {
        return dateReserv;
    }

    public void setDateReserv(Date dateReserv) {
        this.dateReserv = dateReserv;
    }

    public Date getDatePrise() {
        return datePrise;
    }

    public void setDatePrise(Date datePrise) {
        this.datePrise = datePrise;
    }

    public Date getDateRetour() {
        return dateRetour;
    }

    public void setDateRetour(Date dateRetour) {
        this.dateRetour = dateRetour;
    }

    public String getEtat() {
        return etat;
    }

    public void setEtat(String etat) {
        this.etat = etat;
    }

    @Override
    public String toString() {
        return "Reservation{" +
                "idReservation=" + idReservation +
                ", vehicule=" + vehicule +
                ", client=" + client +
                ", dateReserv=" + dateReserv +
                ", datePrise=" + datePrise +
                ", dateRetour=" + dateRetour +
                ", etat='" + etat + '\'' +
                '}';
    }
}
