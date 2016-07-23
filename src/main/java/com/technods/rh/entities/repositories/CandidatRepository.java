package com.technods.rh.entities.repositories;

import org.springframework.data.repository.Repository;

import com.technods.rh.entities.Candidat;

public interface CandidatRepository extends Repository<Candidat, Integer> {
	
	void save(Candidat c);

}
