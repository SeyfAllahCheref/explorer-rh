package com.technods.rh.controllers;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Message;
import com.technods.rh.services.EmployeeService;
import com.technods.rh.services.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.validation.Valid;
import java.security.Principal;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by TECHNO on 06/05/2016.
 */

@Controller
public class MessageController {

    @Autowired
    MessageService messageService;

    @Autowired
    EmployeeService employeeService;

    /**
     * Prepare Messages page by loading lists of messages ( sent and received
     * by the current Employee
     * @param principal Current Employee {@Code Employee}
     * @param model Map view
     * @return View Model
     */
    @RequestMapping(value = "/messages", method = RequestMethod.GET)
    public String displayMessagePage(Principal principal, Map model) {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        Employee employee = employeeService.getEmployeeByMail(
                principal.getName());
        List<Message> messagesReceivedByEmployeeList = messageService.
                getListOfMessagesReceivedByEmployee(employee);
        List<Message> messagesSentByEmployeeList = messageService
                .getListOfSentMessageByEmployee(employee);
        Date now = new Date();
        model.put("receviedMessages", messagesReceivedByEmployeeList);
        model.put("sentMessages", messagesSentByEmployeeList);
        model.put("messageEmployee", new Message());
        model.put("employees", employeeService.allEmployees());
        model.put("employee", employee);
        model.put("timeNow", DateFormat.getDateInstance(
                DateFormat.MEDIUM).format(now));
        return "messages";
    }


    /**
     * Send a new Message
     * @param message {@Code Message}
     * @param principal Current Employee
     * @param result {@code {@link BindingResult}}
     * @return View Model
     */
    @RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
    public String sendNewMessage(@RequestParam("employeeReceiver") String
                                             receiver, @ModelAttribute(
                                "messageEmployee") Message message,
                                 Principal principal, BindingResult result)
    {
        if (result.hasErrors()) {
            System.err.println(result);
        }
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        message.setEmployeeByReceiver(employeeService.getEmployeeByMail(
                receiver));
        message.setEmployeeBySender(employeeService.getEmployeeByMail(
                principal.getName()));
        messageService.sendNewMessage(message);

        return "redirect:messages";
    }

}
