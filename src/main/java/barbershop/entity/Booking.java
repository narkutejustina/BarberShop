package barbershop.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

@Entity(name="Booking")
@Table(name="Booking")
@IdClass(BookingPK.class)
public class Booking implements Serializable{

    private static final long serialVersionUID = 1L;

    @Id
    private int barberId;
    @Id
    private int clientId;
    @Id
    private Date date;
    @Id
    private Time time;

    private int taskId;

    protected Booking(){}

    public Booking(BookingPK pk, int taskId) {
        this.barberId = pk.getBarberId();
        this.clientId = pk.getClientId();
        this.date = pk.getDate();
        this.time = pk.getTime();
        this.taskId = taskId;
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


