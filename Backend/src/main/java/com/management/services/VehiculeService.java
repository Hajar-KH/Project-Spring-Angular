package com.management.services;


import com.management.entities.Vehicule;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface VehiculeService {
    Vehicule saveVehicule(Vehicule vehicule);
    Vehicule updateVehicule(Vehicule vehicule);
    Vehicule getVehiculeById(Long id);

    List<Vehicule> getAllVehicules();
    void deleteVehiculeById(Long id);
    void deleteAllVehicules();

}
