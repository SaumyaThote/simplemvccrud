<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
<title>Login | Virtual Galaxy</title>
<style>
 body {
            background-color: #121212; /* Dark background */
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
         .login-form {
            background-color: rgba(30, 30, 30, 0.9); /* Darker semi-transparent background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
        }
        h2 {
            color: #00ffcc; /* Neon color for the heading */
            text-shadow: 0 0 5px #00ffcc, 0 0 10px #00ffcc, 0 0 15px #00ffcc; /* Neon glow effect */
        }label {
            color: #ffffff; /* White color for labels */
        }
       .form-control {
            background-color: #1e1e1e; /* Dark background for input fields */
            color: #ffffff; /* White text for input fields */
            border: 1px solid #00ffcc; /* Neon border */
        }
        .form-control::placeholder {
            color: #cccccc; /* Light color for placeholder text */
        }
        .btn-primary {
            background-color: #00ffcc; /* Neon button color */
            border: none; /* Remove border */
            text-shadow: 0 0 5px #00ffcc, 0 0 10px #00ffcc; /* Neon glow effect */
        }
        .btn-primary:hover {
            background-color: #00e6b3; /* Slightly darker on hover */
        }
        p {
            color:#cccccc; /* White color for paragraph text */
        }
        a {
            color: #00ffcc; /* Neon color for links */
            text-decoration: none; /* Remove underline */
        }
        a:hover {
            text-decoration: underline; /* Underline on hover */
        }
    </style>
</head>
<body>
<div class="container">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="login-form">
                    <h2 class="text-center">Login</h2>
                    <form action="dologin" method="post">
                        <div class="mb-3">
                            <label for="staticEmail" class="form-label">Email</label>
                            <input type="text"  class="form-control" id="staticEmail" name="email">
                        </div>
                        <div class="mb-3">
                            <label for="inputPassword" class="form-label">Password</label>
                            <input type="password" class="form-control" id="inputPassword" name="password">
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Login</button>
                        <p class="mt-3 text-center">Don't have an account? <a href="reg">Sign up</a></p>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>