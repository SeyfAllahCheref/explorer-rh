package com.technods.rh.entities.repositories;


import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Tasks;
import org.springframework.data.repository.Repository;

import java.util.List;

/**
 * Created by TECHNO on 10/04/2016.
 */

/**
 * TasksRepository: the JPA repository of {@Code Tasks}
 */
public interface TasksRepository extends Repository<Tasks, Long> {

    /**
     *  Find List of tasks by Employee
     * @param employee {@Code Employee}
     * @return List Tasks
     */
    List<Tasks> findTasksByEmployee(Employee employee);

    /**
     * Add new Task
     * @param tasks {@code {@link Tasks}}
     */
    void save(Tasks tasks);

    /**
     *  Get a task by Id
     * @param idTasks Id of task
     * @return One Tasks
     */
    Tasks findTasksByIdtasks(Integer idTasks);
}
