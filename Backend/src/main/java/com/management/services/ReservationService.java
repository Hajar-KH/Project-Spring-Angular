package com.management.services;

import com.management.entities.Reservation;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ReservationService {

    Reservation saveReservation(Reservation reservation);
    Reservation updateReservation(Reservation reservation);
    Reservation getReservationById(Long id);

    List<Reservation> getAllReservations();
    void deleteReservationById(Long id);
    void deleteAllReservations();
}
