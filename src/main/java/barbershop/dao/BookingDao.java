package barbershop.dao;

import barbershop.entity.Booking;
import org.springframework.data.repository.CrudRepository;

import javax.transaction.Transactional;

public interface BookingDao extends CrudRepository<Booking, Integer>{
//    Booking findByBookingId(int bookingId);
//
//    @Transactional
//    Long deleteBy(String firstName);
}
