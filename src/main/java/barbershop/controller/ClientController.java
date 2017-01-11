package barbershop.controller;

import barbershop.entity.Client;
import barbershop.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Clients")
public class ClientController
{
    @Autowired
    private ClientService clientService;

    @GetMapping("/{id}")
    public Client getById(@PathVariable("id") int id) {return this.clientService.getById(id);}
}
