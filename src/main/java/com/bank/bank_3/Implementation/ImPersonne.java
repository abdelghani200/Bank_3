package com.bank.bank_3.Implementation;

import com.bank.bank_3.Db.DatabaseConnection;
import com.bank.bank_3.Dto.Personne;
import com.bank.bank_3.Interface.IPersonne;

import java.sql.*;
import java.util.Optional;

public class ImPersonne<T extends Personne> implements IPersonne<T> {


    private Connection connection;

    public ImPersonne() throws SQLException {
        connection = DatabaseConnection.getConnection();
    }

    @Override
    public Optional<T> save(T personne) {

        String insertPersonneQuery = "INSERT INTO gestion_bancaire.Personne (nom, prenom, telephone, dateNaissance) " +
                "VALUES (?, ?, ?, ?)";

        try {
            // Insertion dans la table Personne
            PreparedStatement personneStatement = connection.prepareStatement(insertPersonneQuery, Statement.RETURN_GENERATED_KEYS);
            personneStatement.setString(1, personne.getNom());
            personneStatement.setString(2, personne.getPrenom());
            personneStatement.setString(3, personne.getTelephone());
            personneStatement.setObject(4, personne.getDateNaissance());


            int rowsAffected = personneStatement.executeUpdate();
            if (rowsAffected == 1) {
                ResultSet generatedKeys = personneStatement.getGeneratedKeys();
                if (generatedKeys.next()) {
                    int personneId = generatedKeys.getInt(1);
                    personne.setId(personneId);

                    return Optional.of(personne);
                }
            }
        } catch (SQLException e) {
            System.out.println("Une erreur SQL s'est produite : " + e.getMessage());
        }

        return Optional.empty();
    }


}
