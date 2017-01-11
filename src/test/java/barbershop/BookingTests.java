package barbershop;


import barbershop.entity.BookingPK;
import barbershop.service.BookingService;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.sql.Date;
import java.sql.Time;
import java.text.SimpleDateFormat;

@RunWith(SpringRunner.class)
@SpringBootTest
public class BookingTests {

    @Autowired
    BookingService bookingService;

    SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");

    @Test
    public void createBookingPK() {
        BookingPK pk = new BookingPK(1,1, Date.valueOf("2017-02-02"),
                Time.valueOf("09:30:00"));

        Assert.assertNotEquals("pk value shouldn't be null",null,pk);
    }
//    @Test
//    public void addBookingToDatabase() {
//
//        Booking booking = new Booking(new BookingPK(1,2, Date.valueOf("2017-02-02"),
//                Time.valueOf("09:30:00")),6);
//        int expectedCount = bookingService.findAll().size()+1;
//        bookingService.save(booking);
//        Assert.assertEquals(expectedCount, bookingService.findAll().size());
//        bookingService.delete(booking);
//    }


}