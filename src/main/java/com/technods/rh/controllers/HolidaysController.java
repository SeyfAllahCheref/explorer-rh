package com.technods.rh.controllers;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Holiday;
import com.technods.rh.services.EmployeeService;
import com.technods.rh.services.HolidaysService;
import com.technods.rh.services.utils.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.security.Principal;
import java.text.ParseException;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by TECHNO on 11/05/2016.
 */
@Controller
public class HolidaysController {


    @Autowired
    HolidaysService holidaysService;

    @Autowired
    EmployeeService employeeService;


    @RequestMapping(value = "/holidays", method = RequestMethod.GET)
    public String displayHolidays(Principal principal, Map model) {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        Employee current = employeeService.getEmployeeByMail(principal
                .getName());
        List<Holiday> holidayList = holidaysService.listHolidaysByEmployee
                (current);
        model.put("employee", current);
        model.put("listHolidays", holidayList);
        model.put("holiday", new Holiday());
        return "holidays";
    }

    @RequestMapping(value = "/request-holiday", method = RequestMethod.POST)
    public String addHoliday(@ModelAttribute("holiday") Holiday holiday,
                             @RequestParam("startDtHoliday") String startDate,
                             @RequestParam("endDtHoliday") String endDate,
                             Principal principal)
            throws ParseException {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        Employee current = employeeService.getEmployeeByMail(principal
                .getName());
        holiday.setEmployee(current);
        holiday.setStartDateHoliday(new Utils().dateFromString(startDate,
                "dd-MM-yyyy"));
        holiday.setEndDateHoliday(new Utils().dateFromString(endDate,
                "dd-MM-yyyy"));
        holidaysService.addHoliday(holiday);
        return "redirect:holidays";
    }

    @RequestMapping(value = "/request-autorisation", method = RequestMethod.POST)
    public String requestAutorisation(@ModelAttribute("holiday") Holiday
                                              holiday,
                                      @RequestParam("startDtHoliday") String startDate,

                                      Principal principal)
            throws ParseException {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        //// TODO: 20/05/2016  Must set the endDate the same of startDate
        Employee current = employeeService.getEmployeeByMail(principal
                .getName());
        holiday.setEmployee(current);
        holiday.setStartDateHoliday(new Utils().dateFromString(startDate,
                "dd-MM-yyyy"));
        holiday.setEndDateHoliday(new Utils().dateFromString(startDate,
                "dd-MM-yyyy"));
        holidaysService.addHoliday(holiday);
        return "redirect:holidays";
    }

    @RequestMapping(value = "/request-disease", method = RequestMethod.POST)
    public String requestDisease(@ModelAttribute("holiday") Holiday
                                         holiday,
                                 @RequestParam("startDtHoliday") String startDate,
                                 @RequestParam("endDtHoliday") String endDate,
                                 Principal principal)
            throws ParseException {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        Employee current = employeeService.getEmployeeByMail(principal
                .getName());
        holiday.setEmployee(current);
        holiday.setStartDateHoliday(new Utils().dateFromString(startDate,
                "dd-MM-yyyy"));
        holiday.setEndDateHoliday(new Utils().dateFromString(endDate,
                "dd-MM-yyyy"));
        holidaysService.addHoliday(holiday);
        return "redirect:holidays";
    }

}
