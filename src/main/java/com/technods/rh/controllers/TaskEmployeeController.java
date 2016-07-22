package com.technods.rh.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationConfig;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Tasks;
import com.technods.rh.services.EmployeeService;
import com.technods.rh.services.TasksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by TECHNO on 06/05/2016.
 */

@Controller
public class TaskEmployeeController {


    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private TasksService tasksService;


    /**
     * Add task controller, to add task for the current user
     * @param taskTime the time task
     * @param taskDate the date task
     * @param tasks {@code {@link Tasks }}
     * @param model View
     * @param principal current user
     * @return redirection to dashboard home
     * @throws Exception
     */
    @RequestMapping(value = "/addTask", method = RequestMethod.POST)
    public String addTask(@RequestParam(value="timeTask",
            required=false) String taskTime,
                          @RequestParam(value="taskDate",
                                  required=false) String taskDate,
                          @ModelAttribute("task") Tasks tasks,
                          Model model, Principal principal) throws Exception {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        Employee employee = employeeService.getEmployeeByMail(
                principal.getName());

        tasks.setStatut("Open");
        tasks.setEmployee(employee);
        SimpleDateFormat formatter = new SimpleDateFormat(
                "yyyy-MM-dd HH:mm");
        Date dateTask = formatter.parse(taskDate + " " + taskTime);
        tasks.setTaskTime(dateTask);
        tasksService.addTask(tasks);
        List<Tasks> tasksList = tasksService.getTasksByEmployee(employee);

        Date today = new Date();
        DateFormat mediumDateFormat = DateFormat.getDateInstance(
                DateFormat.MEDIUM);
        model.addAttribute("employee", employee);
        model.addAttribute("date", mediumDateFormat.format(today));
        model.addAttribute("tasks", tasksList);
        model.addAttribute("task", new Tasks());
        return "redirect:/";
    }

    @RequestMapping(value = "/detailsTask", method = RequestMethod.GET)
    @ResponseBody
    public String taskDetails(@RequestParam("idTask") String idTask,
                            Principal principal)
    {
        if (principal == null) {
            return "redirect:login?message=error1";
        }
        String TasksJson = null;
        Tasks tasks = tasksService.getTaskByIdtasks(Integer.parseInt(idTask));
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.configure(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS , false);
        try {
            TasksJson = objectMapper.writeValueAsString(tasks);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return TasksJson;
    }
}
