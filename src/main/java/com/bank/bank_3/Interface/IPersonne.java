package com.bank.bank_3.Interface;

import com.bank.bank_3.Dto.Personne;

import java.util.Optional;

public interface IPersonne<T extends Personne> {

    Optional<T> save(T personne);

}
