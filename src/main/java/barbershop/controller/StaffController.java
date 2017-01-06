package barbershop.controller;

import barbershop.entity.Barber;
import barbershop.entity.BarberWorkHours;
import barbershop.service.BarberService;
import barbershop.service.BarberWorkHoursService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.beans.factory.annotation.Autowired;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by Justinas on 2017-01-06.
 */

@Controller
public class StaffController {

    @Autowired
    private BarberService barberService;

    @Autowired
    private BarberWorkHoursService barberWorkHoursService;

    @GetMapping("/staff")
    public String staff(Model model, HttpServletRequest request) {

        //barberService.save(new Barber("name","lastname", "123", "email@wmil.com"));

        List<Barber> barberList = barberService.findAll();
        List<BarberWorkHours> barberWorkHoursList = barberWorkHoursService.findAll();

        request.setAttribute("barbers", barberList);
        request.setAttribute("workHours", barberWorkHoursList);

        return "staff";
    }

}
