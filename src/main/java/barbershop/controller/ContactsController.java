package barbershop.controller;

import barbershop.entity.Client;
import barbershop.service.ClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.GetMapping;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;


@Controller
public class ContactsController
{
    @Autowired
    private ClientService clientService;

    @RequestMapping("/contacts")
    public String contacts()
    {
        return "contacts";
    }

    @PostMapping("/msg")
    public String msg(@RequestParam(value = "firstname") String firstName,
                      @RequestParam(value = "lastname") String lastName,
                      @RequestParam(value = "email") String email,
                      @RequestParam(value = "phone") String phone,
                      @RequestParam(value = "message") String comment, HttpServletRequest request)
    {
        Client client = clientService.getByData(firstName, lastName, phone, email);
        if(client == null){
            client = new Client(firstName,lastName,email,phone,comment);
            clientService.save(client);
        }
        else{clientService.save(new Client(firstName,lastName,email,phone,comment));}

        request.setAttribute("sent", "yes");

        return "contacts";
    }

    @GetMapping("/messages")
    public String messages(HttpServletRequest request) {

        List<Client> clientList = clientService.findAllWithComments();
        request.setAttribute("messages", clientList);

        return "messages";
    }

}
