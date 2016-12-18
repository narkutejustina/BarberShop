package barbershop.dao;

import barbershop.entity.Client;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Repository
public class ClientDao
{
    @Autowired
    private static Map<Integer, Client> clients;

    static
    {
        clients = new HashMap<Integer, Client>()
        {
            {
                put(1, new Client(1, "Angelina", "Grey", "email@test.com", "+37012345678"));
                put(2, new Client(2, "John", "White", "j.white@test.com", "+37098765432"));
                put(3, new Client(3, "Albert", "Lampard", "a.lampard@test.com", "+37011111111"));
            }
        };
    }

    public Collection<Client> getAllClients() {return this.clients.values();}

    public Client getClientById(int id) {return this.clients.get(id);}
}
