package com.bank.bank_3.Services;

import com.bank.bank_3.Dto.Client;
import com.bank.bank_3.Implementation.ImClient;
import jakarta.inject.Inject;
import jakarta.inject.Named;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;


public class ServiceClient {


    private  ImClient clientService;

    public ServiceClient(ImClient clientService) {
        this.clientService = clientService;
    }

    public Optional<Client> getClientByCode(String code) {
        return clientService.findByCode(code);
    }

    public Optional<Client> getClientById(int id) {
        return clientService.findById(id);
    }

    public Optional<List<Client>> getAllClients() {
        return clientService.readAll();
    }

    public boolean deleteClient(String code) {
        return clientService.deleteClient(code);
    }

    public Optional<Client> saveClient(Client client) {
        return clientService.save(client);
    }

    public boolean updateClient(Client client) {
        return clientService.update(client);
    }

    public Optional<Client> findClientByEmailOrNomOrPrenom(String searchValue) {
        return clientService.findByEmailOrNomOrPrenom(searchValue);
    }
}
