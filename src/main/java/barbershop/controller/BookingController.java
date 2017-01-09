package barbershop.controller;

import barbershop.service.BarberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class BookingController
{
    @Autowired
    private TaskService taskService;

    @RequestMapping("/booking")
    public String booking(HttpServletRequest request)
    {
        request.setAttribute("tasks", taskService.findAll() );
        return "booking";
    }

}
