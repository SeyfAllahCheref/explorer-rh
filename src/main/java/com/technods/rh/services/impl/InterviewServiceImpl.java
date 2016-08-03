package com.technods.rh.services.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.technods.rh.entities.Interview;
import com.technods.rh.entities.repositories.InterviewRepository;
import com.technods.rh.services.InterviewService;

@Service
public class InterviewServiceImpl implements InterviewService {

	@Autowired
    InterviewRepository interviewRepository;
	
	@Override
    public void addInterview(Interview interview) {
        interviewRepository.save(interview);
    }

}
