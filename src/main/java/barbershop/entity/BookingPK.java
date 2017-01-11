package barbershop.entity;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

public class BookingPK implements Serializable {

    private int barberId;
    private int clientId;
    private Date date;
    private Time time;

    protected BookingPK() {

    }

    public BookingPK(int barberId, int clientId, Date date, Time time) {
        this.barberId = barberId;
        this.clientId = clientId;
        this.date = date;
        this.time = time;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
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
}
