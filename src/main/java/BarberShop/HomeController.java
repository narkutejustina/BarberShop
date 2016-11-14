package BarberShop;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

    @RequestMapping("/home")
    public String greeting(@RequestParam(value="name", required=false, defaultValue="Pasauli!!!") String name, Model model) {
        model.addAttribute("name", name);
        return "home";
    }
}