<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Fillbasket Supermarket</title>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />



</head>

<body>
    <header>
        <div class="logo">
            <img src="images/SuperMarket-Logo-Color.png" alt="Fillbasket Logo">
        </div>
        <nav>
            <ul>
                <li><a href="#home"><i class="fa-solid fa-house fa-xl"></i><span>Home</span></a></li>
                <li><a href="#shopping"><i class="fa-solid fa-cart-shopping fa-fade fa-xl"></i></a></li>
                <li><a href="#about"><i class="fa-solid fa-phone fa-shake fa-xl"></i></a></li>
                <li><a href="#contact"><i class="fa-regular fa-address-book  fa-xl"></i></a></li>
            </ul>
         
        </nav>
    </header>

    <main id="home">
        <div id="hero-section">
            <video id="video-background" autoplay muted loop>
                <source src="images/pexels-los-muertos-crew-8447053 (1080p).mp4" type="video/mp4">
                Your browser does not support the video tag.
            </video>
            <div id="hero-content">
                <h1>Welcome to Fillbasket Supermarket</h1>
                <p>Your one-stop destination for high-quality groceries at affordable prices.</p>
                <a href="#shopping" class="btn">Shop Now</a>
            </div>
        </div>
    </main>

    <div class="shoppingheadline">
        <h2 class="shopping-headline">Explore Our Products :)</h2>
    </div>
    <section id="shopping">
        <br>
        <div class="product" data-id="1" data-price="20">
            <img src="images/goodday-butter.png" alt="Product 1">
            <h2>GOOD DAY</h2>
            <p>Rs.20</p>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <!-- Product 3 -->
        <div class="product" data-id="3" data-price="35">
            <img src="images/OIP1.jpeg" alt="Product 3">
            <h2>CHAT MASALA</h2>
            <p>Rs.35</p>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <!-- Product 4 -->
        <div class="product" data-id="4" data-price="15">
            <img src="images/ketchup.jpeg" alt="Product 4">
            <h2>KISSAN KETCHUP</h2>
            <p>Rs.15</p>
            <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="product" data-id="6" data-price="100">
            <img src="images/almond.jpeg" alt="Product 6">
            <h2>NUTS GARDEN</h2>
            <p>Rs.100</p>
            <button class="add-to-cart">Add to Cart</button>
        </div>

<div class="product" data-id="5" data-price="20">
    <img src="images/OIP.jpeg" alt="Product 5">
    <h2>LAYS</h2>
    <p>Rs.20</p>
    <button class="add-to-cart">Add to Cart</button>
</div>

<!-- Repeat the structure for each additional product -->
<div class="product" data-id="6" data-price="20">
    <img src="images/pepsi.jpeg" alt="Product 6">
    <h2>PEPSI</h2>
    <p>Rs.20</p>
    <button class="add-to-cart">Add to Cart</button>
</div>

<div class="product" data-id="7" data-price="30">
    <img src="images/sprite.jpeg" alt="Product 7">
    <h2>SPRITE</h2>
    <p>Rs.30</p>
    <button class="add-to-cart">Add to Cart</button>
</div>

<!-- Product 9 -->
<div class="product" data-id="9" data-price="80">
    <img src="images/aata.jpeg" alt="Product 9">
    <h2>ATTA MULTIGRAIN</h2>
    <p>Rs.80</p>
    <button class="add-to-cart">Add to Cart</button>
</div>
<div class="product" data-id="10" data-price="30">
    <img src="images/bread.jpeg" alt="Product 8">
    <h2>MOTI'S BREAD</h2>
    <p>Rs.30</p>
    <button class="add-to-cart">Add to Cart</button>
</div>

<!-- Product 9 -->
<div class="product" data-id="11" data-price="150">
    <img src="images/coffee.jpeg" alt="Product 9">
    <h2>BRU COFFEE</h2>
    <p>Rs.150</p>
    <button class="add-to-cart">Add to Cart</button>
</div>
<div class="product" data-id="12" data-price="450">
    <img src="images/fruite.jpg" alt="Product 9">
    <h2>FRUIT BOX</h2>
    <p>Rs.450</p>
    <button class="add-to-cart">Add to Cart</button>
</div>
<div class="product" data-id="13" data-price="175">
    <img src="images/fruite2.jpeg" alt="Product 9">
    <h2>LION DATE PLAM</h2>
    <p>Rs.175</p>
    <button class="add-to-cart">Add to Cart</button>
</div>
<!-- Continue this pattern for the remaining products -->

        <!-- Add more products with similar structure -->

        <div id="cart">
            <h2>Shopping Cart</h2>
            <ul id="cart-items"></ul>
            <p>Total: $<span id="total-price">0.00</span></p>
            <button id="print-bill">Print Bill</button>
        </div>
    </section>
    

    <section id="about">
        <div class="about-content">
            <h2>About Fillbasket Supermarket</h2>
            <p>Fillbasket Supermarket is not just a grocery store; it's a commitment to quality and customer satisfaction. Our story began with a simple idea: to provide families with access to fresh and affordable groceries, all under one roof.</p>
            <p>What sets us apart:</p>
            <ul>
                <li>Locally Sourced: We prioritize sourcing products locally to support our community and ensure freshness.</li>
                <li>Organic Options: Explore our extensive range of organic products for a healthier lifestyle.</li>
                <li>Customer-Centric Approach: Your satisfaction is our priority. Our team is dedicated to assisting you with a smile.</li>
                <li>Environmentally Conscious: We are committed to reducing our environmental footprint through sustainable practices.</li>
            </ul>
            <p>At Fillbasket Supermarket, we believe in creating a shopping experience that goes beyond transactions. Join us in our mission to make grocery shopping a joy!</p>
        </div>
    </section>
    
    <section id="contact">
        <div class="contact-content">
            <h2>Contact Fillbasket Supermarket</h2>
            <p>We value your feedback and are here to assist you. Reach out to us through the following channels:</p>
            <p>Email: <a href="mailto:info@fillbasket.com">info@fillbasket.com</a></p>
            <p>Phone: <a href="Tel: +08192-222245">08192-222245</a></p>
            <p>Visit us at our store:</p>
            <address>
                Bapuji Institute of Engineering & Technology
                P.O.Box No. 325, Shamanur Road<br>
                Davangere<br>
                Karnataka<br>
                577004<br>  
            </address>
            <p>Store Hours:</p>
            <p>Monday - Saturday: 8:00 AM - 10:00 PM</p>
            <p>Sunday: 10:00 AM - 6:00 PM</p>
            <p>Follow us on social media for updates:</p>
            <ul>
                <li><a href="https://www.facebook.com/fillbasket" target="_blank"><i class="fa-brands fa-facebook fa-bounce"></i></a></li>
                <li><a href="https://twitter.com/fillbasket" target="_blank"><i class="fa-brands fa-x-twitter fa-bounce"></i></i></a></li>
                <li><a href="https://www.instagram.com/fillbasket" target="_blank"><i class="fa-brands fa-instagram fa-bounce"></i></a></li>
            </ul>
            <!-- Add a map or directions if needed -->
        </div>
    </section>
    
    <footer>
        <p>&copy; 2023 Fillbasket Supermarket. All rights reserved.</p>
    </footer>
    
    <script src="https://unpkg.com/gsap@3.9.0/dist/gsap.min.js"></script>
    <script src="index.js"></script>
</body>

</html>
