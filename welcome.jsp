<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Welcome to Insta Mart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
    .carousel-item {
            height: 50vh; /* Adjust height as needed */
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
        }
        .carousel-item h1 {
            font-size: 2.5rem;
            font-weight: bold;
        }
        .carousel-item p {
            font-size: 1.2rem;
            margin-top: 15px;
        }
        /* Navbar Styles */
        .navbar-custom {
            background-color: #eeac99; /* Updated to HEX: #eeac99 */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            padding: 10px 20px;
            transition: background 0.3s ease; /* Smooth transition for background */
        }

        .navbar-custom .navbar-brand, .navbar-custom .nav-link {
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

        /* Product Card Styles */
        .product-card {
            margin-bottom: 20px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            padding: 15px;
        }

        .product-card img {
            max-height: 250px;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <!-- Updated Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container-fluid">
            <a class="navbar-brand" href="welcome.jsp">InstaMart</a>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="profile.jsp">Profile</a></li>
                    <li class="nav-item"><a class="nav-link" href="cart.jsp">Cart</a></li>
                    <li class="nav-item"><a class="nav-link" href="logout.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h1>Welcome, <%= session.getAttribute("username") %>!</h1>
        <p>Explore our latest products below.</p>
    </div>
<!-- Carousel Slider -->
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <div class="carousel-inner">
        <!-- Slide 1 -->
        <div class="carousel-item active">
            <div>
                <h1>Welcome to Insta Mart</h1>
                <p>Your one-stop shop for all your needs.</p>
            </div>
        </div>
        <!-- Slide 2 -->
        <div class="carousel-item">
            <div>
                <h1>Explore Our Products</h1>
                <p>Discover a wide range of high-quality products.</p>
            </div>
        </div>
        <!-- Slide 3 -->
        <div class="carousel-item">
            <div>
                <h1>Shop with Confidence</h1>
                <p>Enjoy secure payments and fast delivery.</p>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>
    <div class="container mt-4">
        <div class="row">
            <!-- Product 1 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/a.webp" class="card-img-top" alt="Product 1">
                    <div class="card-body">
                        <h5 class="card-title">Product 1</h5>
                        <p class="card-text">$12.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="1">
                            <input type="hidden" name="productName" value="Product 1">
                            <input type="hidden" name="productPrice" value="12.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 2 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/b.webp" class="card-img-top" alt="Product 2">
                    <div class="card-body">
                        <h5 class="card-title">Product 2</h5>
                        <p class="card-text">$14.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="2">
                            <input type="hidden" name="productName" value="Product 2">
                            <input type="hidden" name="productPrice" value="14.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 3 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/c.webp" class="card-img-top" alt="Product 3">
                    <div class="card-body">
                        <h5 class="card-title">Product 3</h5>
                        <p class="card-text">$16.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="3">
                            <input type="hidden" name="productName" value="Product 3">
                            <input type="hidden" name="productPrice" value="16.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 4 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/samsung.webp" class="card-img-top" alt="Product 4">
                    <div class="card-body">
                        <h5 class="card-title">Product 4</h5>
                        <p class="card-text">$18.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="4">
                            <input type="hidden" name="productName" value="Product 4">
                            <input type="hidden" name="productPrice" value="18.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 5 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/moto.webp" class="card-img-top" alt="Product 5">
                    <div class="card-body">
                        <h5 class="card-title">Product 5</h5>
                        <p class="card-text">$20.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="5">
                            <input type="hidden" name="productName" value="Product 5">
                            <input type="hidden" name="productPrice" value="20.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 6 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/realme.webp" class="card-img-top" alt="Product 6">
                    <div class="card-body">
                        <h5 class="card-title">Product 6</h5>
                        <p class="card-text">$22.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="6">
                            <input type="hidden" name="productName" value="Product 6">
                            <input type="hidden" name="productPrice" value="22.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 7 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/c1.webp" class="card-img-top" alt="Product 7">
                    <div class="card-body">
                        <h5 class="card-title">Product 7</h5>
                        <p class="card-text">$24.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="7">
                            <input type="hidden" name="productName" value="Product 7">
                            <input type="hidden" name="productPrice" value="24.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 8 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/c2.webp" class="card-img-top" alt="Product 8">
                    <div class="card-body">
                        <h5 class="card-title">Product 8</h5>
                        <p class="card-text">$26.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="8">
                            <input type="hidden" name="productName" value="Product 8">
                            <input type="hidden" name="productPrice" value="26.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 9 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/c3.webp" class="card-img-top" alt="Product 9">
                    <div class="card-body">
                        <h5 class="card-title">Product 9</h5>
                        <p class="card-text">$28.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="9">
                            <input type="hidden" name="productName" value="Product 9">
                            <input type="hidden" name="productPrice" value="28.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 10 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/t1.webp" class="card-img-top" alt="Product 10">
                    <div class="card-body">
                        <h5 class="card-title">Product 10</h5>
                        <p class="card-text">$30.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="10">
                            <input type="hidden" name="productName" value="Product 10">
                            <input type="hidden" name="productPrice" value="30.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 11 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/t2.webp" class="card-img-top" alt="Product 11">
                    <div class="card-body">
                        <h5 class="card-title">Product 11</h5>
                        <p class="card-text">$32.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="11">
                            <input type="hidden" name="productName" value="Product 11">
                            <input type="hidden" name="productPrice" value="32.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- Product 12 -->
            <div class="col-md-4">
                <div class="card product-card">
                    <img src="Images/t3.webp" class="card-img-top" alt="Product 12">
                    <div class="card-body">
                        <h5 class="card-title">Product 12</h5>
                        <p class="card-text">$34.99</p>
                        <form action="addToCart.jsp" method="post">
                            <input type="hidden" name="productId" value="12">
                            <input type="hidden" name="productName" value="Product 12">
                            <input type="hidden" name="productPrice" value="34.99">
                            <input type="number" name="quantity" value="1" min="1" class="form-control mb-2">
                            <button type="submit" class="btn btn-primary">Add to Cart</button>
                        </form>
                    </div>
                </div>
            </div>
            