<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap, java.util.Map" %>
<%
    // Get product details from the form
    int productId = Integer.parseInt(request.getParameter("productId"));
    String productName = request.getParameter("productName");
    double productPrice = Double.parseDouble(request.getParameter("productPrice"));
    int quantity = Integer.parseInt(request.getParameter("quantity"));

    // Create a cart item
    Map<String, Object> cartItem = new HashMap<>();
    cartItem.put("productId", productId);
    cartItem.put("productName", productName);
    cartItem.put("productPrice", productPrice);
    cartItem.put("quantity", quantity);

    // Retrieve or create the cart in the session
    Map<Integer, Map<String, Object>> cart = (Map<Integer, Map<String, Object>>) session.getAttribute("cart");
    if (cart == null) {
        cart = new HashMap<>();
        session.setAttribute("cart", cart);
    }

    // Add the item to the cart (or update quantity if it already exists)
    if (cart.containsKey(productId)) {
        int existingQuantity = (int) cart.get(productId).get("quantity");
        cartItem.put("quantity", existingQuantity + quantity);
    }
    cart.put(productId, cartItem);

    // Redirect to the cart page
    response.sendRedirect("cart.jsp");
%>