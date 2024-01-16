package com.management.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

//@Controller
public class AdminController {
    /*
    @Autowired
    AdminService adminService;
    @RequestMapping("/Login")
    public String Login(){
        return "Login";
    }
    @RequestMapping("/updateAdmin")
    public String updateAdmin(@RequestParam("idAdmin") String idAdmin,
     @RequestParam String username,@RequestParam String password, ModelMap modelMap){
        Long id=Long.parseLong(idAdmin);
        Admin admin=adminService.getAdminById(id);
        admin.setUsername(username);
        admin.setPassword(password);
        adminService.saveAdmin(admin);
        String message="Vos infos sont mises à jour avec succès !";
        modelMap.addAttribute("message",message);
        return "UpdateAdmin";
    }

    @RequestMapping("/showAdmin")
    public String showAdmin(@RequestParam("id") Long id, ModelMap modelMap){
        Admin admin=adminService.getAdminById(id);
        modelMap.addAttribute("admin",admin);
        return "UpdateAdmin";
    }

    @RequestMapping("/getAdmin")
    public String getAdmin(ModelMap modelMap){
        List<Admin> admin=adminService.getAdmins();
        modelMap.addAttribute("admin",admin);
        return "AdminCompte";
    }

    @RequestMapping("/HelloAdmin")
    public String helloAdmin(ModelMap modelMap,@RequestParam String username, @RequestParam String password ){
        List<Admin> admin=adminService.getAdmins();
        for(Admin ad:admin){
            if(ad.getUsername().equals(username)&&ad.getPassword().equals(password)){
                return "CreateClient";
            }
        }
        String message="Login & password Incorrecte!! Résseyer";
        modelMap.addAttribute("message",message);
        return "Login";
    }*/


}