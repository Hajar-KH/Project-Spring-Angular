package com.management.controllers;

import com.management.entities.Client;
import com.management.entities.Reservation;
import com.management.entities.Vehicule;
import com.management.services.ClientService;
import com.management.services.ReservationService;
import com.management.services.VehiculeService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;
import java.util.List;

@Controller
public class ReservationController {
    @Autowired
    ReservationService reservationService;
    @Autowired
    ClientService clientService;
    @Autowired
    VehiculeService vehiculeService;

    @RequestMapping("/createReservation")
    public String createReservation(ModelMap modelMap){
        List<Vehicule> vehiculeList = vehiculeService.getAllVehicules();
        List<Client> clientList = clientService.getAllClients();
        modelMap.addAttribute("clientJsp", clientList);
        modelMap.addAttribute("vehiculeJsp", vehiculeList);
        return "CreateReservation";
    }

    @RequestMapping("/saveReservation")
    public String saveReservation(@Valid Reservation reservation, BindingResult bindingResult,
                                  ModelMap modelMap,@RequestParam("vehicule") Long idVehicule, @RequestParam("client") Long idClient
    )throws ParseException{
        if(bindingResult.hasErrors()) {return "CreateReservation";}
        Vehicule selectedVehicule = vehiculeService.getVehiculeById(idVehicule);
        reservation.setVehicule(selectedVehicule);
        Client selectedClient = clientService.getClientById(idClient);
        reservation.setClient(selectedClient);
        reservationService.saveReservation(reservation);
        String message="Reservation: "+reservation.getIdReservation()+" a été créé avec succès!";
        modelMap.addAttribute("message",message);
        reservationService.saveReservation(reservation);
        return "CreateReservation";
    }

    @RequestMapping("/showReservation")
    public String show(@RequestParam("id") Long id, ModelMap modelMap){
        List<Vehicule> vehiculeList = vehiculeService.getAllVehicules();
        List<Client> clientList = clientService.getAllClients();
        modelMap.addAttribute("clientJsp", clientList);
        modelMap.addAttribute("vehiculeJsp", vehiculeList);
        Reservation reservation=reservationService.getReservationById(id);
        modelMap.addAttribute("reservations",reservation);
        return "UpdateReservation";
    }

    @RequestMapping("/updateReservation")
    public String updateReservation(@Valid Reservation reservation, BindingResult bindingResult,
                                    ModelMap modelMap,  @RequestParam("vehicule") Long idVehicule, @RequestParam("client") Long idClient
    )throws ParseException{
        if(bindingResult.hasErrors()) {return "UpdateReservation";}
        Vehicule selectedVehicule = vehiculeService.getVehiculeById(idVehicule);
        reservation.setVehicule(selectedVehicule);
        Client selectedClient = clientService.getClientById(idClient);
        reservation.setClient(selectedClient);
        reservationService.saveReservation(reservation);
        String message="Reservation: "+reservation.getIdReservation()+" a été modifé avec succès!";
        modelMap.addAttribute("message",message);
        reservationService.saveReservation(reservation);
        return "UpdateReservation";
    }

    @RequestMapping("/deleteReservation")
    public String deleteReservation(@RequestParam("id") Long id,ModelMap modelMap){
        reservationService.deleteReservationById(id);
        List<Reservation> reservations=reservationService.getAllReservations();
        modelMap.addAttribute("reservations",reservations);
        return "ListReservation";
    }

    @RequestMapping("/getReservation/{id}")
    public String getReservationById(ModelMap modelMap,@PathVariable Long id){
        Reservation reservation= reservationService.getReservationById(id);
        modelMap.addAttribute("reservation",reservation);
        return "GetReservation";
    }
    @RequestMapping("/getAllReservations")
    public String getReservation(ModelMap modelMap){
        List<Reservation> reservations=reservationService.getAllReservations();
        modelMap.addAttribute("reservations",reservations);
        return "ListReservation";
    }



}
