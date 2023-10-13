package com.bank.bank_3.Dto;

import java.time.LocalDate;
import java.util.List;

import lombok.*;


@Data
@AllArgsConstructor
@NoArgsConstructor
public class Client extends Personne{

    private int id;
    private String code;
    private String adresse;
    List<Compte> compteList;
    private Employe employe;

    public Client(String code, String adresse, String nom, String prenom,String telephone, LocalDate dateNaissance) {
        super(nom,prenom,telephone,dateNaissance);
        setCode(code);
        setAdresse(adresse);
    }

    public Client(String code, String nom, String prenom, LocalDate dateNaissance, String telephone, String adresse) {
        setCode(code);
        setNom(nom);
        setPrenom(prenom);
        setDateNaissance(dateNaissance);
        setTelephone(telephone);
        setAdresse(adresse);
    }

    public Client(String code, String adresse) {
    }
}
