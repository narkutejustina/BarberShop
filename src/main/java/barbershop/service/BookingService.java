package barbershop.service;

import barbershop.dao.BookingDao;
import barbershop.entity.Booking;
import javafx.util.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class BookingService {

    private final BookingDao bookingDao;

    @Autowired
    public BookingService(BookingDao dao) {
        this.bookingDao = dao;
    }


    public List<Booking> findAll() {
        List<Booking> bookings = new ArrayList<>();
        for(Booking booking: bookingDao.findAll()) {
            bookings.add(booking);
        }
        return bookings;
    }

    public Booking findBooking(int id)
    {
        return bookingDao.findOne(id);
    }

    public void save(Booking booking){this.bookingDao.save(booking);}

    public void delete(int id)
    {
        this.bookingDao.delete(id);
    }

     public void delete(Booking booking){this.bookingDao.delete(booking);}

    public List<Pair<String,String>> getReformatedList(){

        List<Pair<String,String>> reformatedBookings = new ArrayList<>();

        for(Booking booking: bookingDao.findAll()) {
            reformatedBookings.add(new Pair(booking.getDate().toString() + " " + booking.getBarberId(),
                    booking.getTime().toString().substring(0,5)));
        }
        return reformatedBookings;
    }

}
