package com.management.services;

import com.management.entities.Client;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ClientService {
    Client saveClient(Client client);
    Client updateClient(Client client);
    Client getClientById(Long id);

    List<Client> getAllClients();
    void deleteClientById(Long id);
    void deleteAllClients();

}
