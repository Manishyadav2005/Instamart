<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%
    // Get the product ID to remove
    int productId = Integer.parseInt(request.getParameter("productId"));

    // Retrieve the cart from the session
    Map<Integer, Map<String, Object>> cart = (Map<Integer, Map<String, Object>>) session.getAttribute("cart");

    // Remove the product from the cart
    if (cart != null) {
        cart.remove(productId);
    }

    // Redirect back to the cart page
    response.sendRedirect("cart.jsp");
%>