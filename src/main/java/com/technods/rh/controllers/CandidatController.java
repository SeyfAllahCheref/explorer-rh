package com.technods.rh.controllers;

import com.technods.rh.entities.Candidat;
import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Interview;
import com.technods.rh.services.CandidatService;
import com.technods.rh.services.EmployeeService;
import com.technods.rh.services.InterviewService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by TECHNO on 26/04/2016.
 */

@Controller
public class CandidatController {

	@Autowired
	CandidatService candidatService;

	@Autowired
	InterviewService interviewService;

	@Autowired
	EmployeeService employeeService;

	/**
	 *
	 * @param principal
	 * @return
	 */

	@RequestMapping(value = "candidat", method = RequestMethod.GET)
	public String candidate(Principal principal) {
		if (principal == null) {
			return "redirect:login?message=error1";
		}

		return "candidat";

	}

	/**
	 *
	 * @param name
	 * @param firstname
	 * @param cv
	 * @param photo
	 * @param post
	 * @param statut
	 * @param candidat
	 * @param principal
	 * @param result
	 * @param niveau
	 * @param interviewDate
	 * @param interview level
	 * @return
	 * @throws ParseException 
	 */

	@RequestMapping(value = "/addCandidat", method = RequestMethod.POST)
	public String addCandidat(@RequestParam("name") String name,
			@RequestParam("firstName") String firstname,
			@RequestParam("cv") byte[] cvCandidat,
			@RequestParam("photo") byte[] photo,
			@RequestParam("post") String post,
			@RequestParam("dateInterview") String dateInterview,
			@RequestParam("timeInterview") String timeInterview,
			@RequestParam("level") String level,
			@RequestParam("mailEmployee") String mailEmployee,
			@RequestParam("statut") String statut,
			@RequestParam("niveau") String niveau,
			@ModelAttribute("candidat") Candidat candidat, Principal principal,
			BindingResult result) throws ParseException {
		if (result.hasErrors()) {
			System.err.println(result);
		}
		if (principal == null) {
			return "redirect:login?message=error1";
		}
		
		Interview interview = new Interview();
		
		candidat.setName(name);
		candidat.setPhoto(photo);
		candidat.setCv(cvCandidat);
		candidat.setPoste(post);
		candidat.setStatut(statut);
		candidat.setFirstName(firstname);
		candidat.setNiveau(niveau);

		candidatService.addCandidat(candidat);

		Employee employee = new Employee();
		employee = employeeService.getEmployeeByMail(mailEmployee);
		
		SimpleDateFormat formatter = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm");
		Date interviewDate = formatter.parse(dateInterview + " " + timeInterview);

		interview.setDate(interviewDate);
		interview.setLevel(level);
		interview.setCandidat(candidat);
		interview.setEmployee(employee);

		interviewService.addInterview(interview);

		return "redirect:candidat";
	}

}
