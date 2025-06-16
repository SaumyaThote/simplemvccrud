<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View table | Virtual Galaxy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #fff;
        }

        .table-container {
            background-color: rgba(30, 30, 30, 0.95);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            margin-top: 60px;
        }

        h2 {
            color: #00ffcc;
            text-align: center;
            text-shadow: 0 0 5px #00ffcc, 0 0 10px #00ffcc;
        }

        .table th, .table td {
            border-color: #00ffcc;
        }

        .btn-warning, .btn-danger {
            box-shadow: 0 0 5px #ffffff33;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="table-container">
        <h2>Product/User List</h2>
        <table class="table table-dark table-bordered table-hover align-middle">
            <thead class="text-neon">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Gender</th>
                    <th>City</th>
                    <th>Courses</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="list" items="${list}">
                    <tr>
                        <td>${list.id}</td>
                        <td>${list.name}</td>
                        <td>${list.email}</td>
                        <td>${list.mobile}</td>
                        <td>${list.gender}</td>
                        <td>${list.city}</td>
                        <td>${list.course}</td>
                        <td>
                            <a href="edit/${list.id}" class="btn btn-sm btn-warning">Update</a>
                            <a href="delete/${list.id}" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this record?')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
