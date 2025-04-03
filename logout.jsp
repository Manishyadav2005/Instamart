<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Invalidate the session to log out the user
    session.invalidate();

    // Redirect the user to the login page
    response.sendRedirect("login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Logout - Insta Mart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .logout-container {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
        }
        .logout-container h1 {
            font-size: 2.5rem;
            font-weight: bold;
        }
        .logout-container p {
            font-size: 1.2rem;
            margin-top: 20px;
        }
        .btn-custom {
            margin: 10px;
            padding: 10px 20px;
            font-size: 1.1rem;
        }
    </style>
</head>
<body>
    <div class="logout-container">
        <div>
            <h1>Logged Out Successfully</h1>
            <p>You have been logged out. Redirecting to the login page...</p>
            <p>If you are not redirected, <a href="login.jsp" class="btn btn-light btn-custom">click here</a> to go to the login page.</p>
        </div>
    </div>
    <script>
        // Redirect to login page after 3 seconds
        setTimeout(function() {
            window.location.href = "login.jsp";
        }, 3000); // 3 seconds delay
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>