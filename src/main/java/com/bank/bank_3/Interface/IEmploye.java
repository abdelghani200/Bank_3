package com.bank.bank_3.Interface;

import com.bank.bank_3.Dto.Employe;

import java.util.List;
import java.util.Optional;

public interface IEmploye {


    Optional<Employe> findByMatricule(String matricule);
    Optional<List<Employe>> readAllEmployes();

    boolean update(Employe employe);

    Optional<Employe> findByEmailOrNomOrPrenom(String searchValue);

    Optional<Employe> changeAgence(Employe employe, String code_agence);

}
