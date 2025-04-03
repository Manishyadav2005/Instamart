<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String email = request.getParameter("email");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load MySQL driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish database connection
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/insta_mart", "root", "2005");

        // Query to insert new user
        String sql = "INSERT INTO users (username, password, email) VALUES (?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        pstmt.setString(3, email);
        int rows = pstmt.executeUpdate();

        if (rows > 0) {
            // Registration successful
            out.println("<script>alert('Registration successful! Please login.'); window.location.href='login.jsp';</script>");
        } else {
            // Registration failed
            out.println("<script>alert('Registration failed. Please try again.'); window.location.href='register.jsp';</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('An error occurred. Please try again.'); window.location.href='register.jsp';</script>");
    } finally {
        // Close database resources
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>