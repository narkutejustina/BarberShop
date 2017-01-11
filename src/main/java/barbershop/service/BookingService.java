package barbershop.service;

import barbershop.dao.BookingDao;
import barbershop.entity.Booking;
import javafx.util.Pair;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class BookingService {

    private final BookingDao dao;

    public BookingService(BookingDao dao) {
        this.dao = dao;
    }

    public List<Booking> findAll() {
        List<Booking> bookings = new ArrayList<>();
        for(Booking booking: dao.findAll()) {
            bookings.add(booking);
        }
        return bookings;
    }

    public void save(Booking booking){this.dao.save(booking);}
    public void delete(Booking booking){this.dao.delete(booking);}

    public List<Pair<String,String>> getReformatedList(){

        List<Pair<String,String>> reformatedBookings = new ArrayList<>();

        for(Booking booking: dao.findAll()) {
            reformatedBookings.add(new Pair(booking.getDate().toString() + " " + booking.getBarberId(),
                    booking.getTime().toString().substring(0,5)));
        }

        return reformatedBookings;
    }
}
