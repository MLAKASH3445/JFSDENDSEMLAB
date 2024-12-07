<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
<style type="text/css">

/* Reset and Base Styles */
html, body {
    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
    background: linear-gradient(to bottom right, #f0f0f0, #c0c0c0);
    font-family: Arial, sans-serif;
    color: #333;
}

/* Signup Form Container */
.SignupWindow {
    width: 350px;
    max-width: 90%;
    padding: 30px;
    margin: auto;
    background: #fff;
    border-radius: 10px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

/* Header */
h3 {
    text-align: center;
    margin-bottom: 20px;
    color: #4CAF50;
}

/* Input Fields */
input[type="text"], 
input[type="password"], 
input[type="email"], 
input[type="tel"] {
    width: 100%;
    padding: 12px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 6px;
    box-sizing: border-box;
    font-size: 14px;
    background-color: #f9f9f9;
    transition: border-color 0.3s ease;
}

/* Input Focus Effect */
input:focus {
    border-color: #4CAF50;
    outline: none;
}

/* Button Styles */
button {
    width: 100%;
    padding: 12px;
    background-color: #4CAF50;
    color: #fff;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #45a049;
}

/* Mobile Responsiveness */
@media screen and (max-width: 400px) {
    .SignupWindow {
        width: 90%;
        padding: 20px;
    }
    
    h3 {
        font-size: 18px;
    }
    
    button {
        font-size: 14px;
    }
}

</style>
</head>
<body>
<div class="SignupWindow">
    <h3>Create Your Account</h3>
    <form action="/signup" method="post">
        <input type="text" name="firstname" placeholder="First Name" required>
        <input type="text" name="lastname" placeholder="Last Name" required>
        <input type="tel" name="mobileno" placeholder="Mobile Number (10 digits)" pattern="[0-9]{10}" required>
        <input type="email" name="emailid" placeholder="Email ID" required>
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Sign Up</button>
    </form>
</div>
</body>
</html>
