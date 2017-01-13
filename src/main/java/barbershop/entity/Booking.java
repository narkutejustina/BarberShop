package barbershop.entity;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

@Entity(name="Booking")
@Table(name="Booking")
public class Booking implements Serializable{

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    @Column(name = "BookingId")
    private int bookingId;

    private int barberId;

    private int clientId;

    private Date date;

    private Time time;

    private int taskId;

    protected Booking(){}

    public Booking(int barberId, int clientId, Date date, Time time, int taskId) {
        this.barberId = barberId;
        this.clientId = clientId;
        this.date = date;
        this.time = time;
        this.taskId = taskId;
    }

    public int getBookingId()
    {
        return bookingId;
    }

    public void setBookingId(int bookingId)
    {
        this.bookingId = bookingId;
    }

    public int getBarberId() {
        return barberId;
    }

    public void setBarberId(int barberId) {
        this.barberId = barberId;
    }

    public int getClientId() {
        return clientId;
    }

    public void setClientId(int clientId) {
        this.clientId = clientId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }

    public int getTaskId() { return taskId;}

    public void setTaskId(int taskId) { this.taskId = taskId;}

}


