/**
 * 
 */
package com.technods.rh.entities.repositories;

import org.springframework.data.repository.Repository;

import com.technods.rh.entities.Interview;


/**
 * InterviewRepository: the JPA repository of {@Code Interview}
 */

public interface InterviewRepository extends Repository<Interview, Integer> {
	
	/**
	 * to add an interview for a candidate
	 * @param interview
	 */
	void save(Interview interview);

}
