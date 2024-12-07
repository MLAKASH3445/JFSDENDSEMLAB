package klu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import klu.model.User;
import klu.model.UserManager;

@Controller
public class ViewController {

    @Autowired
    UserManager UM;

    @PostMapping("/signup")
    public ModelAndView signup(@RequestParam String firstname,
                               @RequestParam String lastname,
                               @RequestParam String mobileno,
                               @RequestParam String emailid,
                               @RequestParam String username,
                               @RequestParam String password) {
        User user = new User();
        user.setFirstname(firstname);
        user.setLastname(lastname);
        user.setMobileno(mobileno);
        user.setEmailid(emailid);
        user.setUsername(username);
        user.setPassword(password);

        String result = UM.signUp(user);
        ModelAndView mv = new ModelAndView();

        if (result.equals("New User has been added")) {
            mv.setViewName("login"); // Redirect to login page
        } else {
            mv.addObject("message", result);
            mv.setViewName("signup"); // Show error message on signup page
        }

        return mv;
    }
}
