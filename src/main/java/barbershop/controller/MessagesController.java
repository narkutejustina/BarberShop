package barbershop.controller;

import barbershop.entity.Message;
import barbershop.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

/**
 * Created by Justinas on 2017-01-15.
 */

@Controller
public class MessagesController {

    @Autowired
    private MessageService messageService;

    @PostMapping("/sendMessage")
    public String sendMessage(@ModelAttribute("messageForm") @Valid Message message, BindingResult bindingResult, HttpServletRequest request) {

        if (bindingResult.hasErrors()) {
            request.setAttribute("message", message);
            return"contacts";
        } else {
            messageService.saveMessage(message);
            request.setAttribute("send", "yes");
            return "contacts";
        }

    }
}
