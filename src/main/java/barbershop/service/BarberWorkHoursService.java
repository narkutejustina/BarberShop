package barbershop.service;

import barbershop.dao.BarberWorkHoursDao;
import barbershop.entity.BarberWorkHours;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Justinas on 2017-01-06.
 */

@Service
@Transactional
public class BarberWorkHoursService {

    private final BarberWorkHoursDao dao;

    @Autowired
    public BarberWorkHoursService(BarberWorkHoursDao dao) {
        this.dao = dao;
    }

    public List<BarberWorkHours> findAll() {
        List<BarberWorkHours> barberWorkHours = new ArrayList<>();
        for(BarberWorkHours barberWork: dao.findAll()) {
            barberWorkHours.add(barberWork);
        }
        return barberWorkHours;
    }

    public List<BarberWorkHours> findByBarberId(int barberId) {
        List<BarberWorkHours> barberWorkHours = new ArrayList<>();
        for(BarberWorkHours barberWork: dao.findByBarberIdOrderByStart(barberId)) {
            barberWorkHours.add(barberWork);
        }
        return barberWorkHours;
    }

}
