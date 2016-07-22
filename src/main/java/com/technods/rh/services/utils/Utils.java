package com.technods.rh.services.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by TECHNO on 18/05/2016.
 */
 public class Utils {


    /**
     *
     * @param date
     * @param format Example: dd-MM-yyyy
     * @return
     */
    public static Date dateFromString(String date, String format) throws
            ParseException
    {
        SimpleDateFormat formatter = new SimpleDateFormat(format);
        return formatter.parse(date);
        //return formatter.format(date);
    }
}
