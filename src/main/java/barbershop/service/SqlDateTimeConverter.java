package barbershop.service;

import java.sql.Date;
import java.sql.Time;

/**
 * Created by nnjus on 2017-01-11.
 */
public class SqlDateTimeConverter {

    public Date convertDateFromString(String date){
        String rx = "^(20\\d\\d)-((0?[1-9])|(1[012]))-(0?[1-9]|[12][0-9]|3[01])$";
        if(date.matches(rx))
            return Date.valueOf(date);
        return null;

    }

    public Time convertTimeFromString(String time){
        String rx = "^((0?[89])|(1[0-9])):[03]0$";
        if(time.matches(rx))
            return Time.valueOf(time+":00");
        return null;
    }
}
