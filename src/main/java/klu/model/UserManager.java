package klu.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.repository.UserRepository;

@Service
public class UserManager {
@Autowired
UserRepository UR;
public String signUp(User U) {
	 try {
         if (UR.validatUsername(U.getUsername()) > 0)
             throw new Exception("Username not available");
         UR.save(U);
         return "New User has been added";
     } catch (Exception e) {
         return e.getMessage();
	}
}
public String login(String username, String password) {
    try {
        if (UR.validateCredentials(username, password) == 0)
            throw new Exception("Invalid Credentials");
        return "validation success"; // This would be successful login
    } catch (Exception e) {
        return e.getMessage(); // Return error message if login fails
    }
}
}
