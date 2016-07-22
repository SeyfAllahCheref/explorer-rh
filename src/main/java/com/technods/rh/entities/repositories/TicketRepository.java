package com.technods.rh.entities.repositories;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Ticket;
import org.springframework.data.repository.Repository;

import java.util.List;

/**
 * Created by TECHNO on 08/05/2016.
 */
public interface TicketRepository extends Repository<Ticket, Long> {


    /**
     * Find all Tickets ( This method used only by RH Admin
     * @return
     */
    List<Ticket> findAll();

    /**
     * GET Ticket by ID
     * @param idTicket Id ticket
     * @return
     */
    Ticket findTicketByIdticket(Integer idTicket);

    /**
     * Get any kind of tickets created by Employee
     * @param employee {@Code Employee}
     * @return List of tickets
     */
    List<Ticket> findTicketsByEmployeeBySender(Employee employee);

    /**
     * Get List of Tickets received (assigned) by Employee
     * @param employee {@Code Employee}
     * @return List of tickets {@Code Ticket}
     */
    List<Ticket> findTicketsByEmployeeByReceiver(Employee employee);


    /**
     * send a new Ticket
     * @param ticket
     */
    void save(Ticket ticket);
}
