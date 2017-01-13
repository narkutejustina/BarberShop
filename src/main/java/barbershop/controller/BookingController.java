package barbershop.controller;

import barbershop.entity.Booking;
import barbershop.entity.Client;
import barbershop.entity.Task;
import barbershop.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.sql.Date;
import java.sql.Time;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

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
    @Autowired
    private BookingClientsService bookingClientsService;


    @GetMapping("/bookings")
    public String bookings(ModelMap model) {

        model.addAttribute("bookings", bookingClientsService.getBookingClientsList());
        return "bookings";
    }

    @PostMapping("/savebooking")
    public String saveBooking(@RequestParam(value="firstname") String firstName,
                              @RequestParam(value="lastname") String lastName,
                              @RequestParam String email,
                              @RequestParam String phone,
                              @RequestParam(value="tasks") String taskId,
                              @RequestParam(value="barbers") String barberId,
                              @RequestParam(value="datepicker") String date,
                              @RequestParam(value="timepicker") String time) throws ParseException
    {
        try
        {
            if (taskService.getById(Integer.parseInt(taskId)) == null)
            {
                throw new ClassNotFoundException();
            }
        }   catch (ClassNotFoundException e){
            System.out.println("Caught "+ e);
            e.printStackTrace();}

        Client client = clientService.getByData(firstName, lastName, phone, email);
        if(client == null){
            client = new Client(firstName,lastName,email,phone);
            clientService.save(client);
        }

//        bookingService.save(new Booking(barberId,client.getClientId(),
//                Date.valueOf(date), Time.valueOf(time+":00"), taskId));

        bookingService.save(new Booking(Integer.parseInt(barberId),client.getClientId(),
                Date.valueOf(date) , Time.valueOf(time+ ":00"), Integer.parseInt(taskId)));

        return "test";
    }

    @PostMapping("/deletebooking")
    public String deleteBooking(@RequestParam int id)
    {
        bookingService.delete(id);

        return "test";
    }


    @RequestMapping("/test")
    public String test(ModelMap model) {

        model.addAttribute("tasks", taskService.findAll());
        model.addAttribute("barbers", barberService.findAll());
//        model.addAttribute("bookings", bookingService.getReformatedList());

        return "test";
    }

//    @GetMapping("/delete-booking")
//    public String deleteBooking(@RequestParam int id, ModelMap model, HttpServletRequest request){
//        model.addAttribute("bookings", bookingClientsService.getBookingClientsList());
//        return "bookings";
//    }

//    @RequestMapping("/bookings")
//    public String bookings(ModelMap model) {
//
//
//        model.addAttribute("bookings", bookingService.findAll());
//
//        return "bookings";
//    }



//    @RequestMapping(value = "/bookingInformation", method = RequestMethod.POST)
//    public String information(ModelMap model, @RequestParam(value="datepicker") String date,
//                              @RequestParam(value="barbers") String barberId,
//                              @RequestParam(value="timepicker") String time, @RequestParam(value="firstname") String firstName,
//                              @RequestParam(value="lastname") String lastName, @RequestParam String phone,
//                              @RequestParam String email, @RequestParam(value="tasks") int taskId) throws ParseException {
//
//
//        Task task = taskService.getById(taskId);
//
//        Client client = clientService.getByData(firstName, lastName, phone, email);
//        if(client == null){
//            client = new Client(firstName,lastName,email,phone);
//            clientService.save(client);
//        }
//
//        bookingService.save();
//
//
//        model.addAttribute("date", date);
//        model.addAttribute("barber", barberService.getById(Integer.parseInt(barberId)).getFirstName());
//        model.addAttribute("time", time);
//        model.addAttribute("name", client.getFirstName());
//        model.addAttribute("email", client.getEmail());
//        model.addAttribute("lastname", client.getLastName());
//        model.addAttribute("phone", client.getPhone());
//        model.addAttribute("taskInfo", task.getTitle());
//        model.addAttribute("price", task.getPrice());
//        model.addAttribute("duration", task.getDuration());
//
//        return "bookingInformation";
//    }

//    @RequestMapping("/getBookings")
//    public JsonResult getBookings(String barberId, String date)
//    {
//        List<String> takenTimes = new ArrayList<String>();
//
//       for(Booking booking: bookingService.findAll()){
//           if((booking.getDate().toString()==barberId)&&(booking.getBarberId()==Integer.parseInt(barberId))){
//               takenTimes.add(booking.getTime().toString().substring(0,4));
//           }
//       }
//
//        return Json (new{ FoodList = FoodList }, JsonRequestBehavior.AllowGet);
//    }
}
