package com.technods.rh.entities.repositories;

/**
 * Created by TECHNO on 06/04/2016.
 */
import com.technods.rh.entities.Employee;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.Repository;

import java.util.List;

/**
 *  EmployeeRepository: the JPA repository of {@Code Employee}
 */
public interface EmployeeRepository extends Repository<Employee, Long> {

    /**
     * find all Employee saved on database
     * @return List of {@Code Employee}
     */
    List<Employee> findAll();

    /**
     * find Employee by Name and CIN
     * @param employeeName String Employee LastName
     * @param cin String Employe CIN
     * @return Only one {@Code Employee}
     */
    Employee findByNameAndCin(String employeeName, String cin);

    /**
     * find Employee by Email address
     * @param mailAddress String Employee Mail address
     * @return {@Code Employee}
     */
    Employee findByMail(String mailAddress);

    /**
     * find Employee By Id
     * @param id The Employee Id
     * @return {@Code Employee}
     */
    Employee findByIdemployee(Integer id);

}