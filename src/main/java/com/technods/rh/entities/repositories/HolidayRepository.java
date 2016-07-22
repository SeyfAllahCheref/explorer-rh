package com.technods.rh.entities.repositories;

import com.technods.rh.entities.Employee;
import com.technods.rh.entities.Holiday;
import org.springframework.data.repository.Repository;

import java.util.Date;
import java.util.List;

/**
 * Created by TECHNO on 11/05/2016.
 */
public interface HolidayRepository  extends Repository<Holiday, Long> {


    /**
     * Get all holidays
     * @return {@Code Holiday}
     */
    List<Holiday> findAll();


    /**
     * find holiday by saved Id
     * @param idHoliday {@Code Integer}
     * @return {@Code Holiday}
     */
    Holiday findByIdHoliday(Integer idHoliday);


    /**
     * find list of holidays by {@Code Employee}
     * @param employee {@Code Employee}
     * @return Holiday
     */
    List<Holiday> findByEmployee(Employee employee);

    /**
     * Find list of holidays by Interval
     * @param startHolidays {@Code Date} Start date of holidays
     * @param endHolidays {@Code Date} end date of holidays
     * @return List of Holidays by Interval
     */
    List<Holiday> findByStartDateHolidayAndEndDateHoliday(Date
             startHolidays, Date endHolidays);

    /**
     * Save Holiday for an {@Code Employee}
     * @param holiday {@Code Holiday}
     */
    void save(Holiday holiday);
}
