package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import klu.model.User;
import klu.model.UserManager;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserManager UM;

    // Sign-up Endpoint
    @PostMapping("/signup")
    public String signup(@RequestBody User U) {
        String result = UM.signUp(U);
        if (result.equals("New User has been added")) {
            return "redirect:/login.jsp";
        } else {
            return "error"; // You can create an error page or handle it differently
        }
    }

    // Login Endpoint (GET Method for Testing)
    @GetMapping("/login/{uname}/{pwd}")
    public String loginGet(@PathVariable("uname") String un, @PathVariable("pwd") String pw, Model model) {
        String result = UM.login(un, pw);
        if (result.equals("validation success")) {
            model.addAttribute("message", "Login Successful! Welcome, " + un + "!");
            return "welcome"; // Redirect to the welcome JSP page
        } else {
            model.addAttribute("error", "Invalid Credentials! Please try again.");
            return "login"; // Stay on the login page
        }
    }

    // Login Endpoint (POST Method for Form Submission)
    @PostMapping("/login")
    public String loginPost(@RequestParam String username, @RequestParam String password, Model model) {
        String result = UM.login(username, password);
        if (result.equals("validation success")) {
            model.addAttribute("message", "Login Successful! Welcome, " + username + "!");
            return "welcome"; // Redirect to the welcome JSP page
        } else {
            model.addAttribute("error", "Invalid Credentials! Please try again.");
            return "login"; // Stay on the login page
        }
    }
}
