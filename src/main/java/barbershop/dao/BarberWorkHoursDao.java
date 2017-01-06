package barbershop.dao;

import barbershop.entity.BarberWorkHours;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Justinas on 2017-01-06.
 */
public interface BarberWorkHoursDao extends CrudRepository<BarberWorkHours, Integer> {

}
