package com.technods.rh.services.impl;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Ticket;
import com.technods.rh.entities.repositories.TicketRepository;
import com.technods.rh.services.TicketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by TECHNO on 08/05/2016.
 */
@Component("ticketService")
@Transactional
public class TicketServiceImpl implements TicketService  {

    @Autowired
    TicketRepository ticketRepository;


    @Override
    public List<Ticket> getAllTickets() {
        return ticketRepository.findAll();
    }

    @Override
    public List<Ticket> getListTicketsCreatedByEmployee(Employee employee) {
        return ticketRepository.findTicketsByEmployeeBySender(employee);
    }

    @Override
    public List<Ticket> getListTicketsReceiver(Employee employee) {
        return ticketRepository.findTicketsByEmployeeByReceiver(employee);
    }

    @Override
    public Ticket getTicketById(Integer idTicket) {
        return ticketRepository.findTicketByIdticket(idTicket);
    }

    @Override
    public void sendTicket(Ticket ticket) {
        ticketRepository.save(ticket);
    }
}
