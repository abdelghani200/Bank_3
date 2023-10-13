package com.bank.bank_3.Dto;

import java.time.LocalDate;

import lombok.*;
@Data
@AllArgsConstructor
@NoArgsConstructor
public abstract class Personne {

    protected int id;

    protected String nom;
    protected String prenom;
    protected String telephone;
    protected LocalDate dateNaissance;

    public Personne(String nom, String prenom, String telephone, LocalDate dateNaissance) {
        setNom(nom);
        setPrenom(prenom);
        setTelephone(telephone);
        setDateNaissance(dateNaissance);
    }
}
