

package com.technods.rh.controllers;


import com.technods.rh.entities.Candidat;
import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Message;
import com.technods.rh.entities.Tasks;
import com.technods.rh.services.CandidatService;
import com.technods.rh.services.EmployeeService;
import com.technods.rh.services.MessageService;
import com.technods.rh.services.TasksService;
import com.technods.rh.services.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by TECHNO on 26/04/2016.
 */




@Controller
public class CandidatController {


	@Autowired 
	CandidatService candidatS;

    /**
     *
     * @param principal
     * @param model
     * @return
     */

    @RequestMapping(value = "candidat", method = RequestMethod.GET)
    public String candidate(Principal principal, Map  model) {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        else{
        String userName = principal.getName();
       
        return "candidat";
    }
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
     * @return
     */

    @RequestMapping(value = "/addCandidat", method = RequestMethod.POST)
    public String addCandidat(@RequestParam("name") String
                                             name,@RequestParam("firstName") String
                                             firstname,@RequestParam("cv") String
                                             cv,@RequestParam("photo") String
                                             photo,@RequestParam("post") String
                                             post,@RequestParam("statut") String
                                             statut ,@ModelAttribute(
                                "candidat") Candidat candidat,
                                 Principal principal, BindingResult result)
    {
        if (result.hasErrors()) {
            System.err.println(result);
        }
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        candidat.setName(name);
        candidat.setName(cv);
        candidat.setName(photo);
        candidat.setName(post);
        candidat.setName(statut);
        candidat.setName(firstname);
        
        candidatS.addCandidat(candidat);

        return "redirect:candidat";
    }

}
