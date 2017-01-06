package barbershop.dao;

import java.util.List;

import barbershop.entity.BarberWorkHours;
import barbershop.entity.WorkHoursPrimaryKey;
import org.springframework.data.repository.CrudRepository;

/**
 * Created by Justinas on 2017-01-06.
 */
public interface BarberWorkHoursDao extends CrudRepository<BarberWorkHours, WorkHoursPrimaryKey> {
    List<BarberWorkHours> findByBarberIdOrderByStart(int barberId);
}
