<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <title>Dashboard | Virtual Galaxy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #121212;
            color: #ffffff;
        }
        .sidebar {
            height: 100vh;
            background-color: #1e1e1e;
            padding: 20px;
            position: fixed;
            width: 200px;
        }
        .sidebar button {
            width: 100%;
            margin-bottom: 10px;
        }
        .main-content {
            margin-left: 220px;
            padding: 20px;
        }
        .header {
            background-color: #00ffcc;
            padding: 10px 20px;
            color: black;
            font-weight: bold;
            font-size: 24px;
            box-shadow: 0 2px 10px rgba(0, 255, 204, 0.6);
        }
        table {
            color: white;
        }
        th, td {
            color: white;
        }
    </style>
</head>
<body>

<!-- Header -->
<div class="header">Virtual Galaxy</div>

<!-- Sidebar -->
<div class="sidebar">
    <a href="viewtable"class="btn btn-primary" id="viewTableBtn">View Table</a>
</div>

<!-- Main Content -->
<div class="main-content">
    <div id="tableContainer" style="display: none;">
        <h2>User Table</h2>
        <table class="table table-dark table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${list1}">
                    <tr>
                        <td>${user.id}</td>
                        <td>${user.name}</td>
                        <td>${user.email}</td>
                        <td>${user.mobile}</td>
                        <td>
                            <a href="edit/${user.id}" class="btn btn-sm btn-warning">Edit</a>
                            <a href="delete/${user.id}" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
    $(document).ready(function () {
        $('#viewTableBtn').click(function (event) {
        	event.preventDefault();
            $('#tableContainer').toggle(); // Show/hide the table on button click
        });
    });
</script>

</body>
</html>
