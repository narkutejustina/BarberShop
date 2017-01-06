package barbershop.entity;

import java.io.Serializable;

/**
 * Created by Justinas on 2017-01-06.
 */
public class WorkHoursPrimaryKey implements Serializable {
    private int barberId;
    private String dayOfWeek;

    public WorkHoursPrimaryKey () {

    }

    public WorkHoursPrimaryKey(int barberId, String dayOfWeek) {
        this.barberId = barberId;
        this.dayOfWeek = dayOfWeek;
    }

    public int getBarberId() {
        return barberId;
    }

    public String getDayOfWeek() {
        return dayOfWeek;
    }

    public void setBarberId(int barberId) {
        this.barberId = barberId;
    }

    public void setDayOfWeek(String dayOfWeek) {
        this.dayOfWeek = dayOfWeek;
    }

}
