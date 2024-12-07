package klu.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import klu.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    // Example: Check if a username exists and validate the password
    @Query("SELECT COUNT(u) FROM User u WHERE u.username = ?1 AND u.password = ?2")
    int validateCredentials(String username, String password);

    // Example: Check if the username already exists
    @Query("SELECT COUNT(u) FROM User u WHERE u.username = ?1")
    int validatUsername(String username);
}
