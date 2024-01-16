package com.management.restControllers;


import com.management.entities.Reservation;
import com.management.services.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/api/Reservations")
public class RestControllerReservation {

    @Autowired
    ReservationService reservationService;

    @GetMapping
    List<Reservation> getListReservation(){
        return reservationService.getAllReservations();
    }

    @GetMapping("{idReservation}")
    public Reservation getReservationById(@PathVariable("idReservation") Long idReservation){
        return reservationService.getReservationById(idReservation);
    }

    @PostMapping("/save")
    public  Reservation createReservation(@RequestBody Reservation reservation){
        return reservationService.saveReservation(reservation);
    }

    @PutMapping("/update")
    public Reservation updateReservation(@RequestBody Reservation reservation){
        return reservationService.updateReservation(reservation);
    }

    @DeleteMapping("/delete/{idReservation}")
    public void deleteReservationByID(@PathVariable("idReservation") Long idReservation){
        reservationService.deleteReservationById(idReservation);
    }
}
