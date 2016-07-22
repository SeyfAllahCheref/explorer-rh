package com.technods.rh.services;

import com.technods.rh.entities.Employee;

import java.util.List;


/**
 * Created by TECHNO on 06/04/2016.
 */

public interface EmployeeService {

    /**
     * Get Employee By Mail
     * @param mail String mail address of Employee
     * @return {@Code Employee}
     */
    Employee getEmployeeByMail(String mail);

    /**
     * Get Employee by Id
     * @param id the Employees' Id
     * @return {@Code Employee}
     */
    Employee getEmployeeByIdEmployee(Integer id);

    /**
     * get All Employees
     * @return List of {@Code Employee}
     */
    List<Employee> allEmployees();
}