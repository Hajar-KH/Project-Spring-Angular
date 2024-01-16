package com.management.controllers;



import com.management.entities.Client;
import com.management.services.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
public class ClientController {
    @Autowired
    ClientService clientService;


    @RequestMapping("/Inscription")
    public String Inscription(){
        return "Inscription";
    }

    @RequestMapping("/createClient")
    public String createClient(){

        return "CreateClient";
    }

    @RequestMapping("/saveClient")
    public String saveClient(@ModelAttribute("client") Client client,ModelMap modelMap){
        clientService.saveClient(client);
        String message="Le client: "+client.getIdClient()+" a été ajouté avec succès!";
        modelMap.addAttribute("message",message);
        return "CreateClient";
    }

    @RequestMapping("/updateClient")
    public String updateClient(@ModelAttribute("client") Client client,ModelMap modelMap){
        clientService.saveClient(client);
        String message="Le client: "+client.getIdClient()+" a été modifé avec succès!";
        modelMap.addAttribute("message",message);
        return "UpdateClient";
    }



    @RequestMapping("/showClient")
    public String showClient(@RequestParam("id") Long id,ModelMap modelMap){
        Client client=clientService.getClientById(id);
        modelMap.addAttribute("clients",client);
        return "UpdateClient";
    }
    @RequestMapping("/deleteClient")
    public String deleteClient(@RequestParam("id") Long id,ModelMap modelMap){
        clientService.deleteClientById(id);
        List<Client> clients=clientService.getAllClients();
        modelMap.addAttribute("clients",clients);
        return "ListClient";
    }
    @RequestMapping("/getAllClients")
    public String getClient(ModelMap modelMap){
        List<Client> clients=clientService.getAllClients();
        modelMap.addAttribute("clients",clients);
        return "ListClient";
    }

    @RequestMapping("/getClient/{id}")
    public String getClientById(ModelMap modelMap,@PathVariable Long id){
        Client client= clientService.getClientById(id);
        modelMap.addAttribute("client",client);
        return "GetClient";
    }

}