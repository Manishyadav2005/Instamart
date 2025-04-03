<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: auto;
            overflow: hidden;
        }
        header {
            background: #333;
            color: #fff;
            padding-top: 30px;
            min-height: 70px;
            border-bottom: #77aaff 3px solid;
        }
        header a {
            color: #fff;
            text-decoration: none;
            text-transform: uppercase;
            font-size: 16px;
        }
        header ul {
            padding: 0;
            list-style: none;
            margin: 0;
        }
        header li {
            float: left;
            display: inline;
            padding: 0 20px 0 20px;
        }
        header #branding {
            float: left;
        }
        header #branding h1 {
            margin: 0;
        }
        header nav {
            float: right;
            margin-top: 10px;
        }
        .content {
            background: #fff;
            padding: 20px;
            margin-top: 20px;
        }
        .content h2, .content h3 {
            color: #333;
        }
        .content table {
            width: 100%;
            margin: 20px 0;
            border-collapse: collapse;
        }
        .content table, th, td {
            border: 1px solid #ddd;
        }
        .content th, .content td {
            padding: 10px;
            text-align: left;
        }
        .content th {
            background-color: #f2f2f2;
        }
        .content form {
            margin: 20px 0;
        }
        .content input[type="text"], .content input[type="password"], .content input[type="email"], .content select {
            width: 100%;
            padding: 10px;
            margin: 5px 0 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
        }
        .content input[type="submit"] {
            background-color: #77aaff;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 4px;
        }
        .content input[type="submit"]:hover {
            background-color: #555;
        }
    </style>
    <script type="text/javascript">
        function confirmDelete(username) {
            return confirm('Are you sure you want to delete user ' + username + '?');
        }
    </script>
</head>
<body>
    <header>
        <div class="container">
            <div id="branding">
                <h1>Admin Dashboard</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <div class="container">
        <div class="content">
            <h2>Welcome, Admin</h2>
            <h3>User Management</h3>

            <!-- Form to add a new user -->
            <h3>Add New User</h3>
            <form action="add_user.jsp" method="post">
                Username: <input type="text" name="new_username" required /><br />
                Password: <input type="password" name="new_password" required /><br />
                Email: <input type="email" name="new_email" required /><br />
                Role: 
                <select name="new_role">
                    <option value="user">User</option>
                    <option value="admin">Admin</option>
                </select><br />
                <input type="submit" value="Add User" />
            </form>

            <!-- Display user details -->
            <h3>Existing Users</h3>
            <table>
                <tr>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Role</th>
                    <th>Action</th>
                </tr>
                <%
                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;
                    try {
                        // Load MySQL driver
                        Class.forName("com.mysql.cj.jdbc.Driver");

                        // Establish database connection
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/insta_mart", "root", "2005");

                        // Query to get user details
                        String sql = "SELECT username, email, role FROM users";
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery(sql);

                        // Display user details in table
                        while (rs.next()) {
                            String username = rs.getString("username");
                            String email = rs.getString("email");
                            String role = rs.getString("role");
                %>
                <tr>
                    <td><%= username %></td>
                    <td><%= email %></td>
                    <td><%= role %></td>
                    <td>
                        <form action="delete_user.jsp" method="post" onsubmit="return confirmDelete('<%= username %>');">
                            <input type="hidden" name="username" value="<%= username %>" />
                            <input type="submit" value="Delete" />
                        </form>
                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    }
                %>
            </table>
        </div>
    </div>
</body>
</html>