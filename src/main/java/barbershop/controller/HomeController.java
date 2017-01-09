package barbershop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController
{
    @RequestMapping("/")
    public String welcome()
    {
        return "index";
    }

    @RequestMapping("/prices")
    public String prices()
    {
        return "prices";
    }
    @RequestMapping("/gallery")
    public String gallery()
    {
        return "gallery";
    }
    @RequestMapping("/contacts")
    public String contacts()
    {
        return "contacts";
    }
}
