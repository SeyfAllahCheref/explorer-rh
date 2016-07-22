package com.technods.rh.services.impl;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Message;
import com.technods.rh.entities.repositories.MessageRepository;
import com.technods.rh.services.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by TECHNO on 06/05/2016.
 */

@Component("MessageService")
@Transactional
public class MessageServiceImpl implements MessageService{

    @Autowired
    MessageRepository messageRepository;

    @Override
    public List<Message> getListOfSentMessageByEmployee(Employee employee) {
        return messageRepository.findByEmployeeBySender(employee);
    }

    @Override
    public List<Message> getListOfMessagesReceivedByEmployee(Employee employee) {
        return messageRepository.findByEmployeeByReceiver(employee);
    }

    @Override
    public void sendNewMessage(Message message) {
        messageRepository.save(message);
    }

    @Override
    public void deleteMessage(Message message) {
        messageRepository.delete(message);
    }


}
