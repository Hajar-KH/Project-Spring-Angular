package com.management.restControllers;

import com.management.entities.Client;
import com.management.services.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:4200")
@RequestMapping("/api/Clients")
public class RestControllerClient {

    @Autowired
    ClientService clientService;
    @GetMapping
    List<Client> getListClient(){
        return clientService.getAllClients();
    }

    @GetMapping("{idclient}")
    public Client getClientById(@PathVariable("idclient") Long idClient){
        return clientService.getClientById(idClient);
    }

    @PostMapping("/save")
    public  Client createClient(@RequestBody Client client){
        return clientService.saveClient(client);
    }

    @PutMapping("/update")
    public Client updateClient(@RequestBody Client client){
        return clientService.updateClient(client);
    }

    @DeleteMapping("/delete/{idclient}")
    public void deleteClientByID(@PathVariable("idclient") Long idClient){
        clientService.deleteClientById(idClient);
    }
}

