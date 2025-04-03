<%@ page import="java.sql.*" %>
<%
    String usernameToDelete = request.getParameter("username");

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Load MySQL driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish database connection
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/insta_mart", "root", "2005");

        // Query to delete a user
        String sql = "DELETE FROM users WHERE username = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, usernameToDelete);
        pstmt.executeUpdate();

        // Redirect to admin welcome page
        response.sendRedirect("admin_welcome.jsp");
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('An error occurred while deleting the user. Please try again.'); window.location.href='admin_welcome.jsp';</script>");
    } finally {
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>