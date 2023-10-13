package com.bank.bank_3.Dto;

import lombok.*;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Employe extends Personne{

    private String matricule;
    private LocalDate dateRecrutement;
    private String adresseEmail;
    private List<Compte> compteArrayList = new ArrayList<>();
    private List<Client> clientArrayList = new ArrayList<>();
    private List<Operation> operationArrayList = new ArrayList<>();
    private List<MissionDetails> missionDetailsList;

    private Agence agence;

    public Employe(String nom, String prenom, LocalDate dateNaissance, String telephone,String matricule, String adresseEmail, LocalDate dateRecrutement) {
        super(nom,prenom,telephone,dateNaissance);
        setMatricule(matricule);
        setAdresseEmail(adresseEmail);
        setDateRecrutement(dateRecrutement);

    }

    public Employe(String matricule, String adressemail, LocalDate daterecrutement) {
        setMatricule(matricule);
        setAdresseEmail(adressemail);
        setDateRecrutement(daterecrutement);

    }
}
