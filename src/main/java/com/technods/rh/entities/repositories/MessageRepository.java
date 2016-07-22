package com.technods.rh.entities.repositories;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Message;
import org.springframework.data.repository.Repository;

import java.util.List;

/**
 * Created by TECHNO on 06/05/2016.
 */

/**
 *  the JPA repository of {@Code Employee}
 */
public interface MessageRepository extends Repository<Message, Long> {

    /**
     * Find Messages sent by Employee
     * @param employee {@Code Employee}
     * @return List of Messages
     */
    List<Message> findByEmployeeBySender(Employee employee);

    /**
     * Find Messages recevied by Employee
     * @param employee {@code {@link Employee}}
     * @return List of Messages
     */
    List<Message> findByEmployeeByReceiver(Employee employee);

    /**
     * Send Message
     * @param message {@code {@link Message}}
     */
    void save(Message message);

    /**
     * Delete a Message from DataBase
     * NB: THIS METHOD MUST BE ONLY USED BY ADMINISTRATOR OF THE SYSTEM
     * @param message {@Code Message}
     */
    void delete(Message message);

}
