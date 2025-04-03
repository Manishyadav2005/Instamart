<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Check if the user is logged in
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Profile - InstaMart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Navbar Styles */
        .navbar-custom {
            background-color: #eeac99; /* Updated to HEX: #eeac99 */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 10px 20px;
            transition: background 0.3s ease; /* Smooth transition for background */
        }

        .navbar-custom .navbar-brand, .navbar-custom .nav-link {
            color: #333 !important; /* Dark text color for better contrast */
            font-weight: bold;
            margin: 0 10px;
            padding: 8px 15px;
            border-radius: 20px;
            transition: background-color 0.3s ease, color 0.3s ease, transform 0.3s ease;
        }

        .navbar-custom .nav-link:hover {
            background-color: rgba(255, 255, 255, 0.2);
            color: #ff6f61 !important; /* Coral hover color */
            transform: translateY(-2px); /* Slight lift on hover */
        }

        .navbar-custom .nav-link.active {
            background-color: rgba(255, 255, 255, 0.3);
            color: #ff6f61 !important;
        }

        /* Add a glowing effect on hover */
        .navbar-custom .nav-link:hover {
            box-shadow: 0 0 10px rgba(255, 111, 97, 0.7); /* Glow effect */
        }

        /* Profile Card Styles */
        .profile-card {
            margin: 20px auto;
            max-width: 600px;
            padding: 20px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
        }

        .profile-card h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-card .form-group {
            margin-bottom: 15px;
        }

        .profile-card .form-control {
            border-radius: 20px;
        }

        .profile-card .btn {
            width: 100%;
            border-radius: 20px;
            background-color: #ff6f61;
            border: none;
            transition: background-color 0.3s ease;
        }

        .profile-card .btn:hover {
            background-color: #eeac99;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container-fluid">
            <a class="navbar-brand" href="welcome.jsp">InstaMart</a>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link active" href="profile.jsp">Profile</a></li>
                    <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
                    <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Profile Section -->
    <div class="container mt-5">
        <div class="profile-card">
            <h2>Your Profile</h2>
            <form action="updateProfile.jsp" method="post">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" value="<%= session.getAttribute("username") %>" readonly>
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="<%= session.getAttribute("email") %>" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password"  required>
                </div>
                <button type="submit" class="btn btn-primary">Update Profile</button>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>