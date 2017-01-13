package barbershop.service;

import barbershop.dao.BookingDao;
import barbershop.dao.ClientDao;
import barbershop.entity.Booking;
import barbershop.entity.Client;
import javafx.util.Pair;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class BookingClientsService
{
    private final BookingDao bookingDao;

    private final ClientDao clientDao;

    @Autowired
    public BookingClientsService(BookingDao bookingDao, ClientDao clientDao)
    {
        this.bookingDao = bookingDao;
        this.clientDao = clientDao;
    }

    public List<Pair<Booking, Client>> getBookingClientsList() {

        List <Pair<Booking, Client>> bookingClientsList = new ArrayList<>();

        for(Booking booking: bookingDao.findAll())
        {
            Client client = clientDao.findOne(booking.getClientId());
            bookingClientsList.add(new Pair(booking, client));
        }
        return bookingClientsList;
    }
}
