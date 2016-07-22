package com.technods.rh.services;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Ticket;

import java.util.List;

/**
 * Created by TECHNO on 08/05/2016.
 */
public interface TicketService {

    /**
     * Get all Tickets (User By Admin RH System)
     * @return
     */
    List<Ticket> getAllTickets();


    /**
     * Get list of tickets created by Employee
     * @param employee {@Code Employee}
     * @return List Of Tickets
     */
    List<Ticket> getListTicketsCreatedByEmployee(Employee employee);


    /**
     * Get List of ticket received by an Employee
     * @param employee {@Code Employee}
     * @return List of Tickets
     */
    List<Ticket> getListTicketsReceiver(Employee employee);


    /**
     * get Ticket by ID
     * @param idTicket Id of ticket
     * @return {@Code Ticket}
     */
    Ticket getTicketById(Integer idTicket);

    /**
     * Create new Ticket
     * @param ticket {@Code Ticket}
     */
    void sendTicket (Ticket ticket);

}
