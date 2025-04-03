<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
    // Check if the user is logged in
    if (session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
    }

    // Database connection details
    String dbURL = "jdbc:mysql://localhost:3306/insta_mart"; // Replace with your database URL
    String dbUser = "root"; // Replace with your database username
    String dbPassword = "2005"; // Replace with your database password

    // Get form data
    String username = (String) session.getAttribute("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password"); // New password field

    // Database connection and update logic
    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load the JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish the database connection
        conn = DriverManager.getConnection(dbURL, dbUser, dbPassword);

        // SQL query to update the user's profile
        String sql = "UPDATE users SET email = ?, password = ? WHERE username = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, email);
        pstmt.setString(2, password); // Set the new password
        pstmt.setString(3, username);

        // Execute the update
        int rowsUpdated = pstmt.executeUpdate();

        if (rowsUpdated > 0) {
            // Profile updated successfully
            session.setAttribute("email", email); // Update session attribute for email
            response.sendRedirect("profile.jsp?success=1"); // Redirect with success message
        } else {
            // No rows updated (user not found or no changes)
            response.sendRedirect("profile.jsp?error=1");
        }
    } catch (Exception e) {
        e.printStackTrace();
        response.sendRedirect("profile.jsp?error=2"); // Redirect with error message
    } finally {
        // Close database resources
        if (pstmt != null) {
            try {
                pstmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
%>