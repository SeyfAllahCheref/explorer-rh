package com.technods.rh.services;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Message;

import java.util.List;

/**
 * Created by TECHNO on 06/05/2016.
 */
public interface MessageService {

    /**
     * get the list of the messages sent by the Employee
      * @param employee {@Code Employee}
     * @return List Of Messages
     */
    List<Message> getListOfSentMessageByEmployee(Employee employee);


    /**
     * get the list of the messages received by the Employee
     * @param employee {@Code Employee}
     * @return List of Messages
     */
    List<Message> getListOfMessagesReceivedByEmployee(Employee employee);


    /**
     * send a new Message
     * @param message {@Code Message}
     */
    void sendNewMessage(Message message);


    /**
     * Delete Message (Only authorized by Administrator of the system
     * @param message {@Code Message}
     */
    void deleteMessage(Message message);
}
