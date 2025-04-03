<%@ page import="java.sql.*" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        // Load MySQL driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish database connection
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/insta_mart", "root", "2005");

        // Query to check if the user exists
        String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        rs = pstmt.executeQuery();

        if (rs.next()) {
            // Store username in session
            session.setAttribute("username", username);
            
            // Check the user's role
            String role = rs.getString("role");
            if ("admin".equalsIgnoreCase(role)) {
                // Redirect to admin welcome page
                response.sendRedirect("admin_welcome.jsp");
            } else {
                // Redirect to user welcome page
                response.sendRedirect("welcome.jsp");
            }
        } else {
            // Invalid credentials
            out.println("<script>alert('Invalid username or password.'); window.location.href='login.jsp';</script>");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<script>alert('An error occurred. Please try again.'); window.location.href='login.jsp';</script>");
    } finally {
        // Close database resources
        if (rs != null) rs.close();
        if (pstmt != null) pstmt.close();
        if (conn != null) conn.close();
    }
%>