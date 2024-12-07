<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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

/* Login Form Container */
.LoginWindow {
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
input[type="password"] {
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
    .LoginWindow {
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
<div class="LoginWindow">
    <h3>Login Page</h3>
    <form action="/user/login" method="post">
        <input type="text" name="username" placeholder="Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>
