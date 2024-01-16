package com.management.restControllers;


import com.management.entities.Vehicule;
import com.management.services.VehiculeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/api/Vehicules")
public class RestControllerVehicule {

    @Autowired
    VehiculeService vehiculeService;

    @GetMapping
    List<Vehicule> getListVehicule(){
        return vehiculeService.getAllVehicules();
    }
    @GetMapping("{idVehicule}")
    public Vehicule getVehiculeById(@PathVariable("idVehicule") Long idVehicule){
        return vehiculeService.getVehiculeById(idVehicule);
    }

    @PostMapping("/save")
    public  Vehicule createVehicule(@RequestBody Vehicule vehicule){
        return vehiculeService.saveVehicule(vehicule);
    }

    @PutMapping("/update")
    public Vehicule updateVehicule(@RequestBody Vehicule vehicule){
        return vehiculeService.updateVehicule(vehicule);
    }

    @DeleteMapping("/delete/{idVehicule}")
    public void deleteVehiculeByID(@PathVariable("idVehicule") Long idVehicule){
        vehiculeService.deleteVehiculeById(idVehicule);
    }
}
