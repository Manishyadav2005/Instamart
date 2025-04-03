<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to Insta Mart</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
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
        .btn-custom {
            margin: 10px;
            padding: 10px 20px;
            font-size: 1.1rem;
            background-color: #ff6f61;
            border: none;
            color: white;
        }
        .btn-custom:hover {
            background-color: #ff4a3d;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            justify-content: center;
        }
        .card {
            margin: 10px;
            border: none;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }
        .card-img-top {
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }
        .card-body {
            padding: 20px;
            text-align: center;
        }
        .card-title {
            font-size: 1.25rem;
            font-weight: bold;
            color: #333;
        }
        .card-text {
            font-size: 0.9rem;
            color: #666;
        }
        .btn-primary {
            background-color: #6a11cb;
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            font-size: 0.9rem;
        }
        .btn-primary:hover {
            background-color: #2575fc;
        }
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

        /* Search Box Styles */
        .navbar-custom .search-box {
            display: flex;
            align-items: center;
            margin: 0 auto; /* Center the search box */
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }

        .navbar-custom .search-box input {
            border: none;
            border-radius: 20px;
            padding: 8px 15px;
            outline: none;
            width: 200px;
        }

        .navbar-custom .search-box button {
            background-color: #ff6f61;
            border: none;
            border-radius: 20px;
            color: white;
            padding: 8px 15px;
            margin-left: 10px;
            cursor: pointer;
        }

        .navbar-custom .search-box button:hover {
            background-color: #ff4a3d;
        }
    </style>
</head>
<body>
<header>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-custom">
        <div class="container-fluid">
            <!-- Brand on the left -->
            <a class="navbar-brand text-dark" href="index.jsp">Insta Mart</a>

            <!-- Search box in the middle -->
            <div class="search-box">
                <input type="text" placeholder="Search products..." />
                <button type="button">Search</button>
            </div>

            <!-- Menu items on the right -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Cart</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="login.jsp">Profile</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

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

<!-- Card Container -->
<div class="card-container">
    <!-- Product Card 1 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/moto.webp" class="card-img-top" alt="Product 1">
        <div class="card-body">
            <h5 class="card-title">Product 1</h5>
            <p class="card-text">Description of Product 1. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 2 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/realme.webp" class="card-img-top" alt="Product 2">
        <div class="card-body">
            <h5 class="card-title">Product 2</h5>
            <p class="card-text">Description of Product 2. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 3 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/samsung.webp" class="card-img-top" alt="Product 3">
        <div class="card-body">
            <h5 class="card-title">Product 3</h5>
            <p class="card-text">Description of Product 3. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 4 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/vivo.webp" class="card-img-top" alt="Product 4">
        <div class="card-body">
            <h5 class="card-title">Product 4</h5>
            <p class="card-text">Description of Product 4. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 5 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/a.webp" class="card-img-top" alt="Product 5">
        <div class="card-body">
            <h5 class="card-title">Product 5</h5>
            <p class="card-text">Description of Product 5. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 6 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/b.webp" class="card-img-top" alt="Product 6">
        <div class="card-body">
            <h5 class="card-title">Product 6</h5>
            <p class="card-text">Description of Product 6. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 7 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/c.webp" class="card-img-top" alt="Product 7">
        <div class="card-body">
            <h5 class="card-title">Product 7</h5>
            <p class="card-text">Description of Product 7. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 8 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/d.webp" class="card-img-top" alt="Product 8">
        <div class="card-body">
            <h5 class="card-title">Product 8</h5>
            <p class="card-text">Description of Product 8. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 9 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/c1.webp" class="card-img-top" alt="Product 9">
        <div class="card-body">
            <h5 class="card-title">Product 9</h5>
            <p class="card-text">Description of Product 9. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 10 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/c2.webp" class="card-img-top" alt="Product 10">
        <div class="card-body">
            <h5 class="card-title">Product 10</h5>
            <p class="card-text">Description of Product 10. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 11 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/c3.webp" class="card-img-top" alt="Product 11">
        <div class="card-body">
            <h5 class="card-title">Product 11</h5>
            <p class="card-text">Description of Product 11. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 12 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/c4.webp" class="card-img-top" alt="Product 12">
        <div class="card-body">
            <h5 class="card-title">Product 12</h5>
            <p class="card-text">Description of Product 12. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 13 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/t1.webp" class="card-img-top" alt="Product 13">
        <div class="card-body">
            <h5 class="card-title">Product 13</h5>
            <p class="card-text">Description of Product 13. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 14 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/t2.webp" class="card-img-top" alt="Product 14">
        <div class="card-body">
            <h5 class="card-title">Product 14</h5>
            <p class="card-text">Description of Product 14. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 15 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/t3.webp" class="card-img-top" alt="Product 15">
        <div class="card-body">
            <h5 class="card-title">Product 15</h5>
            <p class="card-text">Description of Product 15. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
    <!-- Product Card 16 -->
    <div class="card" style="width: 18rem;">
        <img src="Images/t4.webp" class="card-img-top" alt="Product 16">
        <div class="card-body">
            <h5 class="card-title">Product 16</h5>
            <p class="card-text">Description of Product 16. This is a sample description for the product.</p>
            <a href="login.jsp" class="btn btn-primary">Add to Cart</a>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>