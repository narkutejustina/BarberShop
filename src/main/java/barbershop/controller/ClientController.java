package barbershop.controller;

import barbershop.entity.Client;
import barbershop.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;

@RestController
@RequestMapping("/clients")
public class ClientController
{
    @Autowired
    private ClientService clientService;

    @GetMapping
    public Collection<Client> getAllClients() {return this.clientService.getAllClients();}

    @GetMapping("/{id}")
    public Client getClientById(@PathVariable("id") int id) {return this.clientService.getClientById(id);}
}
