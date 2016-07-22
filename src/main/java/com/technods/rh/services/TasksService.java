package com.technods.rh.services;


import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Tasks;

import java.util.List;

/**
 * Created by TECHNO on 10/04/2016.
 */
public interface TasksService {

    /**
     * List tasks of an Employee {@Code Employee}
     * @param employee {@Code Employee}
     * @return list of {@Code Tasks}
     */
    List<Tasks> getTasksByEmployee(Employee employee);

    /**
     * add new Task
     * @param tasks {@Code Tasks}
     */
    void addTask(Tasks tasks);

    /**
     * get task by ID
     * @param idTask Id of {@Code Tasks}
     * @return Task
     */
    Tasks getTaskByIdtasks(Integer idTask);
}
