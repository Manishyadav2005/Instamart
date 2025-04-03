<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
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
    <title>Cart - Insta Mart</title>
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
    </style>
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container-fluid">
            <a class="navbar-brand" href="welcome.jsp">InstasMart</a>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="cart.jsp">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="logout.jsp">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Cart Contents -->
    <div class="container mt-5">
        <h1>Your Cart</h1>
        <%
            // Retrieve the cart from the session
            Map<Integer, Map<String, Object>> cart = (Map<Integer, Map<String, Object>>) session.getAttribute("cart");

            if (cart == null || cart.isEmpty()) {
        %>
        <p>Your cart is empty.</p>
        <%
            } else {
        %>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Total</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    double grandTotal = 0;
                    for (Map.Entry<Integer, Map<String, Object>> entry : cart.entrySet()) {
                        Map<String, Object> item = entry.getValue();
                        String name = (String) item.get("productName");
                        double price = (double) item.get("productPrice");
                        int quantity = (int) item.get("quantity");
                        double total = price * quantity;
                        grandTotal += total;
                %>
                <tr>
                    <td><%= name %></td>
                    <td><%= quantity %></td>
                    <td>$<%= price %></td>
                    <td>$<%= total %></td>
                    <td>
                        <form action="removeFromCart.jsp" method="post" style="display:inline;">
                            <input type="hidden" name="productId" value="<%= entry.getKey() %>">
                            <button type="submit" class="btn btn-danger btn-sm">Remove</button>
                        </form>
                    </td>
                </tr>
                <%
                    }
                %>
                <tr>
                    <td colspan="3" align="right"><strong>Grand Total:</strong></td>
                    <td><strong>$<%= grandTotal %></strong></td>
                    <td></td>
                </tr>
            </tbody>
        </table>
        <%
            }
        %>
        <a href="welcome.jsp" class="btn btn-primary">Continue Shopping</a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>