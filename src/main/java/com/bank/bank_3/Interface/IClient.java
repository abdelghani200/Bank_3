package com.bank.bank_3.Interface;

import com.bank.bank_3.Dto.Client;

import java.util.List;
import java.util.Optional;

public interface IClient {

    Optional<Client> findByCode(String code);
    Optional<List<Client>> readAll();

    boolean deleteClient(String code);

    boolean update(Client client);
    Optional<Client> findByEmailOrNomOrPrenom(String searchValue);

    Optional<Client> findById(int id);

}
