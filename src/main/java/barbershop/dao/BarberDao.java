package barbershop.dao;

/**
 * Created by Justinas on 2017-01-06.
 */

import barbershop.entity.Barber;
import org.springframework.data.repository.CrudRepository;

public interface BarberDao extends CrudRepository<Barber, Integer>{



}
