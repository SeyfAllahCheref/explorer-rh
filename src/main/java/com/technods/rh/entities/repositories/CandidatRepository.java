package com.technods.rh.entities.repositories;

import org.springframework.data.repository.Repository;

import com.technods.rh.entities.Candidat;

/**
 *  CandidatRepository: the JPA repository of {@Code Candidat}
 */

public interface CandidatRepository extends Repository<Candidat, Integer> {


	/**
	 * add candidat
	 * @param c
     */
	void save(Candidat c);

}
