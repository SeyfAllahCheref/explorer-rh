package com.technods.rh.services.impl;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Holiday;
import com.technods.rh.entities.repositories.HolidayRepository;
import com.technods.rh.services.HolidaysService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by TECHNO on 11/05/2016.
 */
@Service
public class HolidaysServiceImpl implements HolidaysService{


    @Autowired
    HolidayRepository holidayRepository;


    @Override
    public List<Holiday> listAllHolidays() {
        return holidayRepository.findAll();
    }

    @Override
    public Holiday getIdHoliday(Integer idHoliday) {
        return holidayRepository.findByIdHoliday(idHoliday);
    }

    @Override
    public List<Holiday> listHolidaysByEmployee(Employee employee) {
        return holidayRepository.findByEmployee(employee);
    }

    @Override
    public List<Holiday> listHolidaysByInterval(Date startDate, Date endDate) {
        return holidayRepository.findByStartDateHolidayAndEndDateHoliday(startDate, endDate);
    }

    @Override
    public void addHoliday(Holiday holiday) {
        holidayRepository.save(holiday);
    }
}
