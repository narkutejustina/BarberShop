package barbershop.service;

import barbershop.dao.ClientDao;
import barbershop.entity.Client;
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
public class ClientService {
    private final ClientDao dao;

    @Autowired
    public ClientService(ClientDao dao) {
        this.dao = dao;
    }

    public List<Client> findAll() {
        List<Client> clients = new ArrayList<>();
        for(Client client: dao.findAll()) {
            clients.add(client);
        }
        return clients;
    }

    public Client getById(int id) {
        return dao.findOne(id);
    }

    public void save(Client client) {
        dao.save(client);
    }

    public void delete(Client client){ dao.delete(client);}

    public Client getByData(String firstName, String lastName, String phone, String email) {
        for(Client c: dao.findAll()) {
            if(c.isEqualByInfo(firstName,lastName,email,phone))
                return c;
        }
        return null;
    }
}
