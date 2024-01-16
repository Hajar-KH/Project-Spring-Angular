package com.management.controllers;


import com.management.entities.Vehicule;
import com.management.services.VehiculeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class VehiculeController {
    @Autowired
    VehiculeService vehiculeService;
    @RequestMapping("/createVehicule")
    public String createVehicule(){
        return "CreateVehicule";
    }

    @RequestMapping("/saveVehicule")
    public String saveVehicule(@ModelAttribute("client") Vehicule vehicule, ModelMap modelMap){
        vehiculeService.saveVehicule(vehicule);
        String message="Vehicule: "+vehicule.getIdVehicule()+" a été ajouté avec succès!";
        modelMap.addAttribute("message",message);
        return "CreateVehicule";
    }

    @RequestMapping("/updateVehicule")
    public String updateVehicule(@RequestParam("idVehicule") String idVehicule,
    @RequestParam String image,@RequestParam String marque, @RequestParam String modele,@RequestParam String prix
            ,ModelMap modelMap){
        Vehicule vehicule=vehiculeService.getVehiculeById(Long.parseLong(idVehicule));
        vehicule.setPrix(Double.parseDouble(prix));
        vehicule.setModele(modele);
        vehicule.setMarque(marque);
        vehicule.setImage(image);
        vehiculeService.saveVehicule(vehicule);
        String message="Vehicule: "+vehicule.getIdVehicule()+" a été modifé avec succès!";
        modelMap.addAttribute("message",message);
        return "UpdateVehicule";
    }

    @RequestMapping("/showVehicule")
    public String show(@RequestParam("id") Long id, ModelMap modelMap){
        Vehicule vehicule=vehiculeService.getVehiculeById(id);
        modelMap.addAttribute("vehicules",vehicule);
        return "UpdateVehicule";
    }



    @RequestMapping("/deleteVehicule")
    public String deleteVehicule(@RequestParam("id") Long id,ModelMap modelMap){
        vehiculeService.deleteVehiculeById(id);
        List<Vehicule> vehicules=vehiculeService.getAllVehicules();
        modelMap.addAttribute("vehicules",vehicules);
        return "ListVehicule";
    }
    @RequestMapping("/getAllVehicules")
    public String getVehicule(ModelMap modelMap){
        List<Vehicule> vehicules=vehiculeService.getAllVehicules();
        modelMap.addAttribute("vehicules",vehicules);
        return "ListVehicule";
    }


    @RequestMapping("/getVehicule/{id}")
    public String getVehiculeById(ModelMap modelMap,@PathVariable Long id){
        Vehicule vehicule= vehiculeService.getVehiculeById(id);
        modelMap.addAttribute("vehicule",vehicule);
        return "GetVehicule";
    }


    @RequestMapping("/Home")
    public String Home(ModelMap modelMap){
        List<Vehicule> vehicules=vehiculeService.getAllVehicules();
        modelMap.addAttribute("vehicules",vehicules);

        return "Home";
    }



}
