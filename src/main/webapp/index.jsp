<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <title>Home Page | Virtual Galaxy</title>
    <style>
        body {
            background-color: #121212; /* Dark background */
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #00ffcc; /* Neon text color */
            text-shadow: 0 0 5px #00ffcc, 0 0 10px #00ffcc; /* Neon glow effect */
        }

        .btn-navigate {
            background-color: #00ffcc; /* Neon button color */
            border: none; /* Remove border */
            text-shadow: 0 0 5px #00ffcc, 0 0 10px #00ffcc; /* Neon glow effect */
        }

        .btn-navigate:hover {
            background-color: #00e6b3; /* Slightly darker on hover */
        }
    </style>
</head>
<body>
    <div class="text-center">
        <h1>Welcome to the Home Page</h1>
        <p>Click the button below to go to the Login form</p>
        <a href="login" class="btn btn-navigate">👉 Go to Login 👈</a>
    </div>
</body>
</html>
