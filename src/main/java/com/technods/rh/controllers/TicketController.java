package com.technods.rh.controllers;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Ticket;
import com.technods.rh.services.EmployeeService;
import com.technods.rh.services.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.util.List;
import java.util.Map;

/**
 * Created by TECHNO on 08/05/2016.
 */

@Controller
public class TicketController {

    @Autowired
    TicketService ticketService;
    @Autowired
    EmployeeService employeeService;


    @RequestMapping(value = "/tickets", method = RequestMethod.GET)
    public String tickets(Principal principal, Map model)
    {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        String userName = principal.getName();
        Employee employee = employeeService.getEmployeeByMail(userName);
        List<Ticket> ticketList = ticketService
                .getListTicketsCreatedByEmployee(employee);
        model.put("employee", employee);
        model.put("ticketEmployee", new Ticket());
        model.put("employees", employeeService.allEmployees());
        model.put("ticketList", ticketList);
        return "tickets";
    }



    @RequestMapping(value = "/sendticket", method = RequestMethod.POST)
    public String addTicket(@ModelAttribute("ticketEmployee") Ticket ticket,
                            @RequestParam("employeeReceiver") String
                                    employeeReceiver, Principal principal,
                            Map model)
    {
        if (principal == null) {
            return "redirect:login?message=error1";
        }

        String userName = principal.getName();
        Employee employee = employeeService.getEmployeeByMail(userName);
        Employee employeeToAssign = employeeService.getEmployeeByMail
                (employeeReceiver);
        ticket.setEmployeeByReceiver(employeeToAssign);
        ticket.setEmployeeBySender(employee);
        ticket.setStatut("OPEN");
        ticketService.sendTicket(ticket);
        return "redirect:/tickets";
    }

}
