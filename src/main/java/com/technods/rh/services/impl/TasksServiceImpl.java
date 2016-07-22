package com.technods.rh.services.impl;


import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Tasks;
import com.technods.rh.entities.repositories.TasksRepository;
import com.technods.rh.services.TasksService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by TECHNO on 10/04/2016.
 */
@Component("tasksService")
@Transactional
public class TasksServiceImpl implements TasksService {

    @Autowired
    private TasksRepository tasksRepository;

    @Override
    public List<Tasks> getTasksByEmployee(Employee employee) {
        return tasksRepository.findTasksByEmployee(employee);
    }

    @Override
    public void addTask(Tasks tasks) {
        tasksRepository.save(tasks);
    }

    @Override
    public Tasks getTaskByIdtasks(Integer idTask) {
        return tasksRepository.findTasksByIdtasks(idTask);
    }
}
