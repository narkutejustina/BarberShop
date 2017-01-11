package barbershop.controller;

import barbershop.entity.Booking;
import barbershop.entity.BookingPK;
import barbershop.entity.Client;
import barbershop.entity.Task;
import barbershop.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;

@Controller
public class BookingController {
    @Autowired
    private TaskService taskService;
    @Autowired
    private BarberService barberService;
    @Autowired
    private BookingService bookingService;
    @Autowired
    private ClientService clientService;

    private SqlDateTimeConverter converter = new SqlDateTimeConverter();

    @RequestMapping("/booking")
    public String booking(ModelMap model, HttpServletRequest request) {

        model.addAttribute("tasks", taskService.findAll());
        model.addAttribute("barbers", barberService.findAll());
        model.addAttribute("bookings", bookingService.findAll());

        model.addAttribute("fname","");

        return "booking";
    }

    @RequestMapping("/bookings")
    public String bookings(ModelMap model) {

        model.addAttribute("bookings", bookingService.findAll());
        return "bookings";
    }

    @RequestMapping(value = "/bookingInformation", method = RequestMethod.POST)
    public String information(ModelMap model, @RequestParam(value="datepicker") String date,
                              @RequestParam(value="barbers") String barberId,
                              @RequestParam(value="timepicker") String time, @RequestParam(value="firstname") String firstName,
                              @RequestParam(value="lastname") String lastName, @RequestParam String phone,
                              @RequestParam String email, @RequestParam(value="tasks") int taskId) throws ParseException {


        Task task = taskService.getById(taskId);

        Client client = clientService.getByData(firstName, lastName, phone, email);
        if(client == null){
            client = new Client(firstName,lastName,email,phone);
            clientService.save(client);
        }

        bookingService.save(new Booking(new BookingPK(Integer.parseInt(barberId),client.getClientId(),
                converter.convertDateFromString(date), converter.convertTimeFromString(time)),taskId));


        model.addAttribute("date", date);
        model.addAttribute("barberId", barberId);
        model.addAttribute("time", time);
        model.addAttribute("name", firstName);
        model.addAttribute("lastname", lastName);
        model.addAttribute("phone", phone);
        model.addAttribute("taskInfo", task.getTitle());
        model.addAttribute("price", task.getPrice());
        model.addAttribute("duration", task.getDuration());

        return "bookingInformation";
    }
}
