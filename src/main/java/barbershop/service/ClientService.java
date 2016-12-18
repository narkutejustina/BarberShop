package barbershop.service;

import barbershop.dao.ClientDao;
import barbershop.entity.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;

@Service
public class ClientService
{
    @Autowired
    private ClientDao clientDao;

    public Collection<Client> getAllClients() {return this.clientDao.getAllClients();}

    public Client getClientById(int id)
    {
        //TODO: Need to check if the client exists, if not throw an Exception HTTP 404 NOT FOUNT
        return this.clientDao.getClientById(id);
    }
}
