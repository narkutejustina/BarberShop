package barbershop.dao;

import barbershop.entity.Booking;
import barbershop.entity.BookingPK;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

public interface BookingDao extends CrudRepository<Booking, BookingPK>{
//    Booking findByBookingId(int bookingId);
//
//    @Transactional
//    Long deleteBy(String firstName);
}
