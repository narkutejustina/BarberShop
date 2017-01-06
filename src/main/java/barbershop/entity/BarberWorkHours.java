package barbershop.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.sql.Time;
import javax.persistence.Id;
import java.text.SimpleDateFormat;

/**
 * Created by Justinas on 2017-01-06.
 */
@Entity(name = "BarberWorkHours")
@Table(name = "BarberWorkHours")
public class BarberWorkHours {

    @Id
    private int barberId;
    private Time start;
    private  Time end;
    String dayOfWeek;

    public BarberWorkHours() {
    }

    public BarberWorkHours(int barberId, Time start, Time end, String dayOfWeek) {
        this.barberId = barberId;
        this.start = start;
        this.end = end;
        this.dayOfWeek = dayOfWeek;
    }

    public int getBarberId() {
        return barberId;
    }

    public String getStart() {
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
        String string = sdf.format(start);
        return string;
    }

    public String getEnd() {
        SimpleDateFormat sdf = new SimpleDateFormat("HH:mm");
        String string = sdf.format(end);
        return string;
    }

    public String getDayOfWeek() {
        return dayOfWeek;
    }

    public void setBarberId(int barberId) {
        this.barberId = barberId;
    }

    public void setStart(Time start) {
        this.start = start;
    }

    public void setEnd(Time end) {
        this.end = end;
    }

    public void setDayOfWeek(String dayOfWeek) {
        this.dayOfWeek = dayOfWeek;
    }
}
