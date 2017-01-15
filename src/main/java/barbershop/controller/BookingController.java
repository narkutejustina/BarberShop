package barbershop.controller;

import barbershop.entity.Booking;
import barbershop.entity.Client;
import barbershop.entity.Task;
import barbershop.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.sql.Time;
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
    @Autowired
    private BookingClientsService bookingClientsService;


    @GetMapping("/bookings")
    public String bookings(ModelMap model) {

        model.addAttribute("bookings", bookingClientsService.getBookingClientsList());
        model.addAttribute("barbers", barberService.findAll());
        model.addAttribute("tasks", taskService.findAll());

        return "bookings";
    }

    @PostMapping("/updatebooking")
    public String updateBooking(ModelMap model, @RequestParam String bookingId,
                                @RequestParam(value="booking-clientid") String clientId,
                                @RequestParam(value="booking-date") String bookingDate,
                                @RequestParam(value="booking-time") String bookingTime,
                                @RequestParam(value="booking-firstname") String firstName,
                                @RequestParam(value="booking-lastname") String lastName,
                                @RequestParam(value="booking-barberid") String barberId,
                                @RequestParam(value="booking-taskid") String taskId,
                                @RequestParam(value="booking-price") String price) throws ParseException
    {
        try{
            if(bookingService.findBooking(Integer.parseInt(bookingId))==null ||
                    clientService.getById(Integer.parseInt(clientId))==null ||
                    barberService.getById(Integer.parseInt(barberId))==null ||
                    taskService.getById(Integer.parseInt(taskId))==null)
            {
                throw new ClassNotFoundException();
            }
        }catch (ClassNotFoundException e){
            System.out.println("Caught "+ e);
            e.printStackTrace();}

        Booking booking = bookingService.findBooking(Integer.parseInt(bookingId));
        Client client = clientService.getById(Integer.parseInt(clientId));
        Task task = taskService.getById(Integer.parseInt(taskId));

        booking.setDate(Date.valueOf(bookingDate));
        booking.setTime(Time.valueOf(bookingTime));
        booking.setBarberId(Integer.parseInt(barberId));
        booking.setTaskId(Integer.parseInt(taskId));

        task.setPrice(Integer.parseInt(price));

        client.setFirstName(firstName);
        client.setLastName(lastName);

        bookingService.save(booking);
        clientService.save(client);
        taskService.save(task);


        model.addAttribute("bookings", bookingClientsService.getBookingClientsList());
        model.addAttribute("barbers", barberService.findAll());
        model.addAttribute("tasks", taskService.findAll());

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

        bookingService.save(new Booking(Integer.parseInt(barberId),client.getClientId(),
                Date.valueOf(date) , Time.valueOf(time+ ":00"), Integer.parseInt(taskId)));

        return "home";
    }

    @PostMapping("/deletebooking")
    public String deleteBooking(ModelMap model, @RequestParam String bookingId) throws ParseException
    {
        try
        {
            if (bookingService.findBooking(Integer.parseInt(bookingId)) == null)
            {
                throw new ClassNotFoundException();
            } else
            {
                bookingService.delete(Integer.parseInt(bookingId));
            }
        } catch (ClassNotFoundException e){
            System.out.println("Caught "+ e);
            e.printStackTrace();
        }

        model.addAttribute("bookings", bookingClientsService.getBookingClientsList());

        return "bookings";
    }


    @RequestMapping("/booking")
    public String booking(ModelMap model) {

        model.addAttribute("tasks", taskService.findAll());
        model.addAttribute("barbers", barberService.findAll());
        model.addAttribute("bookings", bookingService.getReformatedList());

        return "booking";
    }


    @RequestMapping(value = "/bookingInformation", method = RequestMethod.POST)
    public String information(ModelMap model, @RequestParam(value="datepicker") String date,
                              @RequestParam(value="barbers") String barberId,
                              @RequestParam(value="timepicker") String time, @RequestParam(value="firstname") String firstName,
                              @RequestParam(value="lastname") String lastName, @RequestParam String phone,
                              @RequestParam String email, @RequestParam(value="tasks") String taskId) throws
            ParseException {

        Task task = taskService.getById(Integer.parseInt(taskId));

        Client client = clientService.getByData(firstName, lastName, phone, email);
        if(client == null){
            client = new Client(firstName,lastName,email,phone);
            clientService.save(client);
        }

        bookingService.save(new Booking(Integer.parseInt(barberId),client.getClientId(),
                Date.valueOf(date) , Time.valueOf(time+ ":00"), Integer.parseInt(taskId)));

        model.addAttribute("date", date);
        model.addAttribute("barber", barberService.getById(Integer.parseInt(barberId)).getFirstName());
        model.addAttribute("time", time);
        model.addAttribute("name", client.getFirstName());
        model.addAttribute("email", client.getEmail());
        model.addAttribute("lastname", client.getLastName());
        model.addAttribute("phone", client.getPhone());
        model.addAttribute("taskInfo", task.getTitle());
        model.addAttribute("price", task.getPrice());
        model.addAttribute("duration", task.getDuration());

        return "bookingInformation";
    }
}
