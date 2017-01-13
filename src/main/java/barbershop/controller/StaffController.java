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
import org.springframework.web.bind.annotation.RequestParam;
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

//        List<Barber> barberList = barberService.findAll();
//        List<BarberWorkHours> barberWorkHoursList = barberWorkHoursService.findByBarberId(barberList.get(0).getBarberId());
//
//        request.setAttribute("barbers", barberList);
//        request.setAttribute("workHours", barberWorkHoursList);
//        request.setAttribute("barberInfo", barberList.get(0));

        return "staff";
    }

    @GetMapping("/staffs")
    public String getBooksByCategory(@RequestParam int id, HttpServletRequest request) {

        if((id < 0)) {
            return "redirect:staff";
        }

        int index = -1;

        List<Barber> barberList = barberService.findAll();

        for(Barber barber : barberList) {
            if(barber.getBarberId() == id) {
                index = barberList.indexOf(barber);
            }
        }

        if(index < 0) {
            return "redirect:staff";
        }

        List<BarberWorkHours> barberWorkHoursList = barberWorkHoursService.findByBarberId(id);

        request.setAttribute("barbers", barberList);
        request.setAttribute("workHours", barberWorkHoursList);
        request.setAttribute("barberInfo", barberList.get(index));

        return "staff";
    }

}
