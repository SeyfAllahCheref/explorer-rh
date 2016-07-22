package com.technods.rh.controllers;


import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Message;
import com.technods.rh.entities.Tasks;
import com.technods.rh.services.EmployeeService;
import com.technods.rh.services.MessageService;
import com.technods.rh.services.TasksService;
import com.technods.rh.services.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
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
public class DashboardController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private TasksService tasksService;

    @Autowired
    private MessageService messageService;

    @Autowired
    private TicketService ticketService;

    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
    }


    /**
     * Dashboard controller, to load current users' data ( tasks, messages,...)
     * @param principal current connected user
     * @param model Model View
     * @return view
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String dashboard(Principal principal, Map  model) {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        String userName = principal.getName();
        Employee employee = employeeService.getEmployeeByMail(userName);
        List<Tasks> tasks = tasksService.getTasksByEmployee(employee);
        List<Message> messageList = messageService
                .getListOfMessagesReceivedByEmployee(employee);
        model.put("tasks", tasks);
        model.put("task", new Tasks());
        model.put("employee", employee);
        model.put("msgCount", messageList.size());
        model.put("ticketsCount", ticketService.getListTicketsCreatedByEmployee(
                employee).size());
        return "home";
    }

}
