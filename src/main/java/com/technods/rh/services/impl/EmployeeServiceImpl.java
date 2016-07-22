package com.technods.rh.services.impl;


import com.technods.rh.entities.Employee;
import com.technods.rh.entities.repositories.EmployeeRepository;
import com.technods.rh.services.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.Assert;

import java.util.List;

/**
 * Created by TECHNO on 06/04/2016.
 */
@Component("employeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;


    @Override
    public Employee getEmployeeByMail(String mail) {
        Assert.notNull(mail, "Employee Mail login must not be null");
        return this.employeeRepository.findByMail(mail);
    }

    @Override
    public Employee getEmployeeByIdEmployee(Integer id) {
        Assert.notNull(id, "Employee id must not be null");
        return this.employeeRepository.findByIdemployee(id);
    }

    @Override
    public List<Employee> allEmployees() {
        return this.employeeRepository.findAll();
    }
}
