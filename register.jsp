<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Register - InstasMart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Navbar Styles */
        .navbar-custom {
            background-color: #eeac99; /* Updated to HEX: #eeac99 */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 10px 20px;
            transition: background 0.3s ease; /* Smooth transition for background */
        }

        .navbar-custom .nav-link {
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

        /* Register Page Styles */
        .register-container {
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .register-box {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }
        .register-box h2 {
            margin-bottom: 20px;
            font-weight: bold;
            color: #333;
        }
        .form-control {
            margin-bottom: 15px;
        }
        .btn-register {
            width: 100%;
            background: #2575fc;
            color: white;
            font-weight: bold;
        }
        .btn-register:hover {
            background: #1a5bbf;
        }
    </style>
</head>
<body>
    <!-- Updated Navigation Bar -->
    <header>
        <nav class="navbar navbar-expand-lg navbar-custom">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.jsp">InstasMart</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="index.jsp">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Cart</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Profile</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <!-- Register Container -->
    <div class="register-container">
        <div class="register-box">
            <h2>Register</h2>
            <form action="registerProcess.jsp" method="post">
                <div class="form-group">
                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" required>
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
                </div>
                <div class="form-group">
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                </div>
                <button type="submit" class="btn btn-register">Register</button>
            </form>
            <p class="mt-3 text-center">Already have an account? <a href="login.jsp">Login here</a></p>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>