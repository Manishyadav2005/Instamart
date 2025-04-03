<%@ page import="java.sql.*" %>
<%
    String newUsername = request.getParameter("new_username");
    String newPassword = request.getParameter("new_password");
    String newEmail = request.getParameter("new_email");
    String newRole = request.getParameter("new_role");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load MySQL driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish database connection
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/insta_mart", "root", "2005");

        // Query to add a new user
        String sql = "INSERT INTO users (username, password, email, role) VALUES (?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, newUsername);
        pstmt.setString(2, newPassword);
        pstmt.setString(3, newEmail);
        pstmt.setString(4, newRole);
        pstmt.executeUpdate();

        // Redirect to admin welcome page
        response.sendRedirect("admin_welcome.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('An error occurred while adding the user. Please try again.'); window.location.href='admin_welcome.jsp';</script>");
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>