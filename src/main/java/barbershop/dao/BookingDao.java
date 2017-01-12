package barbershop.dao;

import barbershop.entity.Booking;
import barbershop.entity.BookingPK;
import org.springframework.data.repository.CrudRepository;

public interface BookingDao extends CrudRepository<Booking, BookingPK>{

}
