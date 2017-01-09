package barbershop.controller;

import barbershop.service.UserService;
import barbershop.entity.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

/**
 * Created by Justinas on 2017-01-09.
 */

@Controller
public class LoginController {

    @Autowired
    private UserService userService;


    @GetMapping("/login")
    public String loginGet(Model model) {
        return "login";
    }

    @PostMapping("/login")
    public String loginPost(@ModelAttribute("loginForm") @Valid User user, BindingResult bindingResult, HttpServletRequest request,
                               HttpSession session) {

        if (bindingResult.hasErrors()) {
            user.setPassword("");
            request.setAttribute("error", "true");
            request.setAttribute("user", user);
            return "login";
        } else {
            if(!userService.checkIfUserPasswordCorrect(user.getUsername(), user.getPassword())) {
                request.setAttribute("error", "true");
                user.setPassword("");
                request.setAttribute("user", user);
                return "login";
            } else {
                request.setAttribute("error", "false");
                String username = user.getUsername();
                session.setAttribute("logged_user", username);
                return "index";
            }
        }

    }

    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "login";
    }
}
