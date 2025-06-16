<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
    <title>Update form | Virtual Galaxy</title>
    <style>
        body {
            background-color: #121212; /* Dark background */
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .registration-form {
            background-color: rgba(30, 30, 30, 0.9); /* Darker semi-transparent background */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
        }

        h2 {
            color: #00ffcc; /* Neon color for the heading */
            text-shadow: 0 0 5px #00ffcc, 0 0 10px #00ffcc, 0 0 15px #00ffcc; /* Neon glow effect */
        }

        label {
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

        .form-control:focus {
            background-color: cccccc; /* Keep dark background on focus */
            border-color: #00ffcc; /* Neon border on focus */
            box-shadow: 0 0 5px #00ffcc; /* Neon glow on focus */
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
            color: #ffffff; /* White color for paragraph text */
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
                <div class="registration-form">
                    <h2 class="text-center">Update form</h2>
                    <c:forEach var="list" items="${list}">
                    <form action="/VirtualGalaxyCRUD/update" method="post">
                       <div class="mb-3">
                            <label for="name" class="form-label">Id</label>
                            <input type="hidden" class="form-control" id="id" name="id" value="${list.id}" >
                        </div>
                        <div class="mb-3">
                            <label for="name" class="form-label">Name</label>
                            <input type="text" class="form-control" id="name" name="name" value="${list.name}">
                        </div>
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" value="${list.email}">
                        </div>
                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="text" class="form-control" id="password" name="password" placeholder="Enter your password" value="${list.password}">
                        </div>
                        <div class="mb-3">
                            <label for="mobile" class="form-label">Mobile</label>
                            <input type="tel" class="form-control" id="mobile" name="mobile" placeholder="Enter your mobile number" value="${list.mobile}">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Gender</label>
                            <div>
                                <input type="radio" id="male" name="gender" value="male"<c:if test="${list.gender=='male'}">checked></c:if>>
                                <label for="male" class="text-white" >Male</label>
                                <input type="radio" id="female" name="gender" value="female" <c:if test="${list.gender=='female'}">checked></c:if>>
                                <label for="female" class="text-white">Female</label>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Courses</label>
                            <div>
                                <input type="checkbox" id="java" name="course" value="java" <c:forEach var="c" items="${list.course}">
						<c:if test="${c=='java' }">checked</c:if>
						</c:forEach>>
                                <label for="java" class="text-white">Java</label>
                                <input type="checkbox" id="css" name="course" value="css"<c:forEach var="c" items="${list.course}">
						<c:if test="${c=='css' }">checked</c:if>
						</c:forEach>>
                                <label for="css" class="text-white">CSS</label>
                                <input type="checkbox" id="html" name="course" value="html"<c:forEach var="c" items="${list.course}">
						<c:if test="${c=='html'}">checked</c:if>
						</c:forEach>>
                                <label for="html" class="text-white">HTML</label>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="city" class="form-label">City</label>
                            <select class="form-control" id="city" name="city" required>
                            
                                <option value="nagpur"<c:if test="${list.city== 'nagpur'}">selected</c:if>>Nagpur</option>
                                <option value="pune"<c:if test="${list.city== 'pune'}">selected</c:if>>Pune</option>
                                <option value="delhi"<c:if test="${list.city== 'delhi'}">selected</c:if>>Delhi</option>
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">Update</button>
                    </form>
                      </c:forEach>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
