package com.technods.rh.services;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Holiday;

import java.util.Date;
import java.util.List;

/**
 * Created by TECHNO on 11/05/2016.
 */
public interface HolidaysService {


    /**
     * All list holidays
     * @return List of {@Code Holidays}
     */
    List<Holiday> listAllHolidays();

    /**
     * Get Holiday by ID
     * @param idHoliday {@Code Integer}
     * @return Holiday
     */
    Holiday getIdHoliday(Integer idHoliday);


    /**
     * List of holidays by {@Code Employee}
     * @param employee {@Code Employee}
     * @return Employee
     */
    List<Holiday> listHolidaysByEmployee(Employee employee);

    /**
     * List of Holidays By date interval
     * @param startDate {@Code Date}
     * @param endDate {@Code Date}
     * @return List of Holiday
     */
    List<Holiday> listHolidaysByInterval(Date startDate, Date endDate);

    /**
     * Add new {@Code Holiday} for an employee
     * @param holiday {@Code Holiday}
     */
    void addHoliday(Holiday holiday);
}
