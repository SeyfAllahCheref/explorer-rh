package com.technods.rh.services.impl;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Candidat;
import com.technods.rh.entities.repositories.CandidatRepository;
import com.technods.rh.services.CandidatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created   on 22/07/2016.
 */
@Service
public class CandidatServiceImpl implements CandidatService{


    @Autowired
    CandidatRepository candidatRepository;

	@Override
	public void addCandidat(Candidat c) {
		candidatRepository.save(c);
		
	}
    
    

}