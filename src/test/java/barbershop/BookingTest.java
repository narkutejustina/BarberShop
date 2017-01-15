package barbershop;

import barbershop.entity.Booking;
import barbershop.service.BookingService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.sql.Date;
import java.sql.Time;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BookingTest
{
    @Autowired
    BookingService bookingService;

    Booking booking = new Booking(1,1, Date.valueOf("2017-01-16"), Time.valueOf("10:30:00"),2);

    @Test
    public void createBooking_idIsEqual0() {
        Assert.assertEquals(0, booking.getBookingId());
    }

    @Test
    public void addBookingToDatabase() {
        bookingService.save(booking);
        Assert.assertNotEquals(0, booking.getBookingId());
        bookingService.delete(booking);
    }

}
