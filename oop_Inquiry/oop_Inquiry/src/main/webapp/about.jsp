<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bidding System - About Us</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f2f2f2;
        }
        
        .header {
            background-color: #333;
            color: white;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo h1 {
            margin: 0;
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 2px;
        }
        
        .navigation ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
        }
        
        .navigation li {
            margin-left: 20px;
        }
        
        .navigation a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            transition: color 0.3s ease;
        }
        
        .navigation a:hover {
            color: #ff9900;
        }
        
        .body-content {
            padding: 50px;
            text-align: center;
        }
        
        .body-content h1 {
            font-size: 36px;
            margin-bottom: 20px;
        }
        
        .body-content p {
            font-size: 18px;
            line-height: 1.5;
            margin-bottom: 30px;
        }
        
        .team-members {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 30px;
        }
        
        .team-member {
            width: 200px;
            margin: 20px;
            text-align: center;
        }
        
        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 10px;
        }
        
        .team-member h3 {
            font-size: 20px;
            margin-bottom: 5px;
        }
        
        .team-member p {
            font-size: 16px;
            color: #777;
        }
        
        .footer {
            background-color: #333;
            color: white;
            padding: 20px;
            text-align: center;
        }
        
        .footer p {
            margin: 0;
            margin-bottom: 10px;
        }
        
        .footer img {
            width: 100px;
            height: auto;
            margin: 0 10px;
            vertical-align: middle;
        }
    </style>
</head>

<body>
    <header class="header">
        <div class="logo">
            <h1>Bidding System</h1>
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="InqInsert.jsp">Inquiry</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="body-content">
        <h1>About Us</h1>
        <p>We are a leading bidding system company dedicated to providing the best bidding experience for our customers.</p>
        <p>Our mission is to connect buyers and sellers through a secure and efficient bidding platform.</p>
        
        <h2>Our Team</h2>
        <div class="team-members">
            <div class="team-member">
                <img src="https://via.placeholder.com/150" alt="Team Member 1">
                <h3>John Doe</h3>
                <p>CEO</p>
            </div>
            <div class="team-member">
                <img src="https://via.placeholder.com/150" alt="Team Member 2">
                <h3>Jane Smith</h3>
                <p>CTO</p>
            </div>
            <div class="team-member">
                <img src="https://via.placeholder.com/150" alt="Team Member 3">
                <h3>Mark Johnson</h3>
                <p>Sales Manager</p>
            </div>
        </div>
    </div>
    
    <footer class="footer">
        <p>Contact Us:</p>
        <p>Email: info@biddingsystem.com | Phone: +123 456 789</p>
        <p>Our Sponsors:</p>
        <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
        <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
    </footer>
</body>

</html>
