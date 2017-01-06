package barbershop.service;

import barbershop.dao.BarberDao;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import barbershop.entity.Barber;
import org.springframework.stereotype.Service;

/**
 * Created by Justinas on 2017-01-06.
 */

@Service
@Transactional
public class BarberService {
    private final BarberDao dao;

    public BarberService(BarberDao dao) {
        this.dao = dao;
    }

    public List<Barber> findAll() {
        List<Barber> barbers = new ArrayList<>();
        for(Barber barber: dao.findAll()) {
            barbers.add(barber);
            System.out.println(barber.getFirstName());
        }
        return barbers;
    }

    public void save(Barber barber) {
        dao.save(barber);
    }

}
