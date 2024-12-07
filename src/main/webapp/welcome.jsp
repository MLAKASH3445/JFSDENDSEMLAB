<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<style type="text/css">
/* Style for the welcome page */
html, body {
    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
    background: #e8f5e9;
    font-family: Arial, sans-serif;
    text-align: center;
}

.welcomeMessage {
    margin-top: 100px;
    padding: 20px;
    background-color: #4CAF50;
    color: white;
    font-size: 20px;
    border-radius: 10px;
    box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
<div class="welcomeMessage">
    <h2>${message}</h2>
</div>
</body>
</html>
